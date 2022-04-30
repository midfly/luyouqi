<?php

    $api_key = "b3f9f3-fd16a8eb643179";

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
        'to'=>'244-944-744818',
        'text'=>"hello",
        "type"=>"B",
        "network"=>null
    ];
    $payload_string = json_encode($data);
    $client_id = "SMSLINKCMC";
    $final_request_url = "http://197.216.4.34/admin/api/$method";
    $allurl = "http://197.216.4.34/admin/api/$method/$client_id";
    $api_version = 'v1.0.0';

    $text = $http_method." ".$final_request_url." ".$client_id.":".$api_version.";".$api_key.",".$timestamp.",".$nonce.";".sha1($payload_string) ;
    $secret_code = '$2y$11$pH99fgOonnvbVFR.vsXqWOFN2rQNm7NfGBn8nbo9vN14AlnGnLhOS';
    $credentials = base64_encode(hmac_sha1($text,$secret_code));

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

    curl_close($curl);
   // echo json_encode($data);
    echo  $response;
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