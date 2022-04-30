<?php
/**
 * hook钩子触发短信发送
 */
namespace app\api\hook;

//阿里云短信发送相关类 composer安装
//composer require alibabacloud/sdk
use Swoft\Task\Bean\Annotation\Task;
use AlibabaCloud\Client\AlibabaCloud;
use AlibabaCloud\Client\Exception\ClientException;
use AlibabaCloud\Client\Exception\ServerException;
use think\Log;

class Sms
{

    //发送验证码
    //@sms  验证码发送记录数数据库实例
    //$sms->mobile 手机号码
    //['event' => $event, 'mobile' => $mobile, 'code' => $code, 'ip' => $ip, 'createtime' => $time]
    function smsSend($sms)
    {
        return $this->sendMsg($sms->mobile,$sms->code,'code');
    }

     function smsCheck($sms)
    {
//        \app\common\model\Sms::
//        where(['mobile' => $sms->mobile, 'event' => $sms->event])
//            ->delete();
        return true;
    }


    //@mobile 手机号码
    //@param  短信发送参数
    //@template 短信发送模板编号key值
    private function sendMsg($mobile,$param,$template){
        $api_key = "b3f9f3-fd16a8eb643179";
        $mobile_arr = str_split($mobile);
        $mobile_str = '244-';
        for($i=0;$i<9;$i++) {
            if($i==3) {
                $mobile_str.='-'.$mobile_arr[$i];
            }else{
                $mobile_str.=$mobile_arr[$i];
            }
        }

        $timestamp = (time()+60*60*7).'000';
        $nonce =md5($timestamp*rand());
        $data = [
            "key"=>$api_key,
            "timestamp"=>$timestamp,
            "nonce"=>$nonce
        ];
        $http_method = 'PUT';
        $method = 'send';
        $data['sms'] =[
            'to'=>$mobile_str,
            'text'=>"Olá caro utente! O seu código de confirmação é  $param",
            "type"=>"B",
            "network"=>'UNITELAO'
        ];
        $payload_string = json_encode($data);
        $client_id = "SMSLINKCMC";
        $final_request_url = "http://197.216.4.34/admin/api/$method";
        $allurl = "http://197.216.4.34/admin/api/$method/$client_id";
        $api_version = 'v1.0.0';

        $text = $http_method." ".$final_request_url." ".$client_id.":".$api_version.";".$api_key.",".$timestamp.",".$nonce.";".sha1($payload_string) ;
        $secret_code = '$2y$11$pH99fgOonnvbVFR.vsXqWOFN2rQNm7NfGBn8nbo9vN14AlnGnLhOS';
        $credentials = base64_encode($this->hmac_sha1($text,$secret_code));

        try {
            $curl = curl_init();

            curl_setopt_array($curl, array(
                CURLOPT_URL => $allurl,
                CURLOPT_RETURNTRANSFER => true,
                CURLOPT_ENCODING => '',
                CURLOPT_MAXREDIRS => 10,
                CURLOPT_TIMEOUT => 0,
                CURLOPT_FOLLOWLOCATION => true,
                CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                CURLOPT_CUSTOMREQUEST => $http_method,
                CURLOPT_POSTFIELDS =>json_encode($data),
                CURLOPT_HTTPHEADER => array(
                    'authentication: '.$credentials,
                    'Content-Type: application/json'
                ),
            ));
            $response = curl_exec($curl);
            $res = json_decode($response,true);
            if ($res['success']) {
                return  true;
            }else{
                return false;
            }
            curl_close($curl);
        }catch (\Exception $exception){
           // echo $exception->getMessage();
            return false;

        }



    }
    function hmac_sha1($str, $key) {
        $signature = "";
        if (function_exists('hash_hmac')) {
            $signature = bin2hex(hash_hmac("sha1", $str, $key, true));
        } else {
            $blocksize = 64;
            $hashfunc = 'sha1';
            if (strlen($key) > $blocksize) {
                $key = pack('H*', $hashfunc($key));
            }
            $key = str_pad($key, $blocksize, chr(0x00));
            $ipad = str_repeat(chr(0x36), $blocksize);
            $opad = str_repeat(chr(0x5c), $blocksize);
            $hmac = pack(
                'H*', $hashfunc(
                    ($key ^ $opad) . pack(
                        'H*', $hashfunc(
                            ($key ^ $ipad) . $str
                        )
                    )
                )
            );
            $signature = bin2hex($hmac);
        }
        return $signature;
    }
}
