(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["pages-login-reg"],{"0373":function(e,r,t){"use strict";var a=t("4ea4");t("ac1f"),t("5319"),Object.defineProperty(r,"__esModule",{value:!0}),r.default=void 0,t("96cf");var n=a(t("1da1")),o=a(t("5530")),i=t("26cb"),s=a(t("868f")),u=a(t("cdd8")),c=a(t("c94b")),d=a(t("ae26")),l=a(t("d5ab")),m=a(t("5683")),p=a(t("ab65")),f=a(t("7d61")),g={components:{mInput:s.default,mCell:u.default,mpvuePicker:c.default,mUpimg:m.default,mCodedialog:p.default},computed:(0,o.default)({},(0,i.mapState)(["openId","customerInfo"])),data:function(){return{cover50:this.$mAssetsPath.upload_1,cover51:this.$mAssetsPath.upload_2,cover52:this.$mAssetsPath.upload_3,cityData:d.default,showCodeDialog:!1,org:{},btnType:"SUBMIT",referrer:"",params:{userName:"",idCard:"",cardNo:"",cityNo:"",bankName:"",mobile:"",settleCardImgId:"",cardHolderBackImgId:"",cardHolderIdImgId:""},reqBody:{}}},onLoad:function(e){this.initPage(e)},methods:{initPage:function(e){var r=this;return(0,n.default)(regeneratorRuntime.mark((function t(){return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:if(r.referrer=e.referrer,"RESET"!=e.type||!r.customerInfo.customerNo){t.next=4;break}return r.echoForm(r.customerInfo),t.abrupt("return");case 4:case"end":return t.stop()}}),t)})))()},register:function(){var e=this;return(0,n.default)(regeneratorRuntime.mark((function r(){var t;return regeneratorRuntime.wrap((function(r){while(1)switch(r.prev=r.next){case 0:if(e.reqBody["openId"]=e.openId,e.reqBody["referrer"]=e.referrer,e.reqBody["userName"]=e.params["userName"],e.reqBody["idCard"]=e.params["idCard"],e.reqBody["cardNo"]=(e.params["cardNo"]+"").replace(/\s+/g,""),e.reqBody["cityNo"]=e.params["cityNo"],e.reqBody["bankName"]=e.params["bankName"],e.reqBody["mobile"]=e.params["mobile"],e.reqBody["settleCardImgId"]=e.params["settleCardImgId"],e.reqBody["cardHolderBackImgId"]=e.params["cardHolderBackImgId"],e.reqBody["cardHolderIdImgId"]=e.params["cardHolderIdImgId"],t=l.default.check(e.reqBody,f.default.regCustomerRule),t){r.next=15;break}return uni.showToast({title:l.default.error,icon:"none"}),r.abrupt("return");case 15:return r.next=17,e.$apis.getMsgCode({mobile:e.params.mobile,type:"0"});case 17:e.openCodeDialog();case 18:case"end":return r.stop()}}),r)})))()},showMulLinkageThreePicker:function(){var e=this;return(0,n.default)(regeneratorRuntime.mark((function r(){return regeneratorRuntime.wrap((function(r){while(1)switch(r.prev=r.next){case 0:e.$refs.cityPicker.show();case 1:case"end":return r.stop()}}),r)})))()},onCityConfirm:function(e){var r=this;return(0,n.default)(regeneratorRuntime.mark((function t(){return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:r.org=e,r.params.cityNo=e.value[1];case 2:case"end":return t.stop()}}),t)})))()},codedialogChange:function(e){var r=this;return(0,n.default)(regeneratorRuntime.mark((function t(){return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:if(1!=e.type){t.next=6;break}r.showCodeDialog=!1,"SUBMIT"==r.btnType&&r.submitRegApi(e.code),"RESET_SUBMIT"==r.btnType&&r.resetSubmitRegApi(e.code),t.next=14;break;case 6:if(-1!=e.type){t.next=11;break}uni.showToast({icon:"none",title:"已关闭"}),r.showCodeDialog=!1,t.next=14;break;case 11:return e.resendCall(),t.next=14,r.$apis.getRegCode({mobile:r.params.mobile});case 14:case"end":return t.stop()}}),t)})))()},openCodeDialog:function(){var e=this;return(0,n.default)(regeneratorRuntime.mark((function r(){return regeneratorRuntime.wrap((function(r){while(1)switch(r.prev=r.next){case 0:e.showCodeDialog=!0;case 1:case"end":return r.stop()}}),r)})))()},upImgData:function(e){var r=this;return(0,n.default)(regeneratorRuntime.mark((function t(){return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:r.params[e.paramsKey]=e.id;case 1:case"end":return t.stop()}}),t)})))()},cardNoBlur:function(e){var r=this;return(0,n.default)(regeneratorRuntime.mark((function t(){var a,n;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:if(a=e.detail.value.replace(/\s+/g,""),a){t.next=3;break}return t.abrupt("return");case 3:return t.next=5,r.$apis.getCardBin({cardNo:a});case 5:n=t.sent,r.params["bankName"]=n.name;case 7:case"end":return t.stop()}}),t)})))()},echoForm:function(e){var r=this;return(0,n.default)(regeneratorRuntime.mark((function t(){var a,n,o;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return uni.setNavigationBarTitle({title:"重新编辑"}),r.btnType="RESET_SUBMIT",r.referrer="referrer",r.params["userName"]=e.userName,r.params["idCard"]=e.idCard,r.params["cardNo"]=e.cardNo,r.params["cityNo"]=e.cityNo,r.params["bankName"]=e.bankName,r.params["mobile"]=e.mobile,r.org.label=r.$mUtils.getCityName(d.default,e.cityNo),t.next=12,r.$apis.downloadImg({id:e.settleCardImgId});case 12:return a=t.sent,r.$refs.settleCardImgId.setUpImg({url:a.imgString,id:a.imgType}),t.next=16,r.$apis.downloadImg({id:e.cardHolderBackImgId});case 16:return n=t.sent,r.$refs.cardHolderBackImgId.setUpImg({url:n.imgString,id:n.imgType}),t.next=20,r.$apis.downloadImg({id:e.cardHolderIdImgId});case 20:o=t.sent,r.$refs.cardHolderIdImgId.setUpImg({url:o.imgString,id:o.imgType});case 22:case"end":return t.stop()}}),t)})))()},submitRegApi:function(e){var r=this;return(0,n.default)(regeneratorRuntime.mark((function t(){return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return r.reqBody["code"]=e,t.next=3,r.$apis.postCustomer(r.reqBody);case 3:t.sent,r.$store.commit("SET_TOKEN",r.$mConfig.tokenKey),r.$mRouter.reLaunch({route:r.$mRoutesConfig.regSuccess});case 6:case"end":return t.stop()}}),t)})))()},resetSubmitRegApi:function(e){var r=this;return(0,n.default)(regeneratorRuntime.mark((function t(){return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return r.reqBody["code"]=e,r.reqBody["customerNo"]=r.customerInfo["customerNo"],t.next=4,r.$apis.upDateCustomerInfo(r.reqBody);case 4:t.sent,r.$mRouter.push({route:r.$mRoutesConfig.regSuccess});case 6:case"end":return t.stop()}}),t)})))()},formatCardNo:function(e){this.params.cardNo=this.$mUtils.formatCardNo(e)}}};r.default=g},"4a90":function(e,r,t){"use strict";var a=t("c242"),n=t.n(a);n.a},"7ad4":function(e,r,t){var a=t("24fb");r=a(!1),r.push([e.i,'@charset "UTF-8";\n/* 页面左右间距 */\n/* 文字尺寸 */\n/*文字颜色*/\n/* 边框颜色 */\n/* 图片加载中颜色 */\n/* 行为相关颜色 */.input-group[data-v-c45b59ca]{border-radius:%?10?%;margin-top:%?10?%;overflow:hidden}',""]),e.exports=r},c242:function(e,r,t){var a=t("7ad4");"string"===typeof a&&(a=[[e.i,a,""]]),a.locals&&(e.exports=a.locals);var n=t("4f06").default;n("1ddce4d3",a,!0,{sourceMap:!1,shadowMode:!1})},cb5e:function(e,r,t){"use strict";t.d(r,"b",(function(){return n})),t.d(r,"c",(function(){return o})),t.d(r,"a",(function(){return a}));var a={mInput:t("868f").default,mCell:t("cdd8").default,mUpimg:t("5683").default,mpvuePicker:t("c94b").default,mCodedialog:t("ab65").default},n=function(){var e=this,r=e.$createElement,t=e._self._c||r;return t("v-uni-view",{staticClass:"content pad-10 reg-page"},[t("v-uni-view",{staticClass:"input-group"},[t("v-uni-view",{staticClass:"input-row border-bottom-1px"},[t("v-uni-text",{staticClass:"title"},[e._v("姓名")]),t("m-input",{attrs:{type:"text",clearable:!0,placeholder:"请输入姓名",maxLength:30},model:{value:e.params.userName,callback:function(r){e.$set(e.params,"userName",r)},expression:"params.userName"}})],1),t("v-uni-view",{staticClass:"input-row border-bottom-1px"},[t("v-uni-text",{staticClass:"title"},[e._v("身份证")]),t("m-input",{attrs:{type:"idcard",clearable:!0,placeholder:"请输入身份证",maxLength:18},model:{value:e.params.idCard,callback:function(r){e.$set(e.params,"idCard",r)},expression:"params.idCard"}})],1),t("v-uni-view",{staticClass:"input-row border-bottom-1px"},[t("v-uni-text",{staticClass:"title"},[e._v("银行账号")]),t("m-input",{attrs:{type:"text",clearable:!0,placeholder:"请输入银行账号",maxLength:30},on:{onblur:function(r){arguments[0]=r=e.$handleEvent(r),e.cardNoBlur.apply(void 0,arguments)},input:function(r){arguments[0]=r=e.$handleEvent(r),e.formatCardNo.apply(void 0,arguments)}},model:{value:e.params.cardNo,callback:function(r){e.$set(e.params,"cardNo",r)},expression:"params.cardNo"}})],1),e.params.bankName?t("v-uni-view",{staticClass:"input-row border-bottom-1px"},[t("v-uni-text",{staticClass:"title"},[e._v("银行名称")]),t("m-input",{attrs:{type:"text",placeholder:"",disabled:!0,maxLength:50},model:{value:e.params.bankName,callback:function(r){e.$set(e.params,"bankName",r)},expression:"params.bankName"}})],1):e._e(),t("m-cell",{attrs:{title:"开户地区:",isLink:!0,bottomLine:!0},on:{click:function(r){arguments[0]=r=e.$handleEvent(r),e.showMulLinkageThreePicker.apply(void 0,arguments)}}},[e._v(e._s(e.org.label||"请选择"))]),t("v-uni-view",{staticClass:"input-row"},[t("v-uni-text",{staticClass:"title"},[e._v("预留手机号")]),t("m-input",{attrs:{type:"number",clearable:!0,placeholder:"请输入手机号",maxLength:11},model:{value:e.params.mobile,callback:function(r){e.$set(e.params,"mobile",r)},expression:"params.mobile"}})],1)],1),t("v-uni-view",{},[t("m-upimg",{ref:"settleCardImgId",attrs:{api:e.$apis.upload,imgType:"SETTLE_CARD_IMG",paramsKey:"settleCardImgId",cover:e.cover52,placeholder:"请拍摄身份证和结算卡照片"},on:{onUpImg:function(r){arguments[0]=r=e.$handleEvent(r),e.upImgData.apply(void 0,arguments)}}}),t("m-upimg",{ref:"cardHolderBackImgId",attrs:{api:e.$apis.upload,imgType:"CARDHOLDER_ID_BACK",paramsKey:"cardHolderBackImgId",cover:e.cover50,placeholder:"请拍摄本人身份证国徽面"},on:{onUpImg:function(r){arguments[0]=r=e.$handleEvent(r),e.upImgData.apply(void 0,arguments)}}}),t("m-upimg",{ref:"cardHolderIdImgId",attrs:{api:e.$apis.upload,imgType:"CARDHOLDER_WITH_ID",paramsKey:"cardHolderIdImgId",cover:e.cover51,placeholder:"请拍摄本人手持身份证正面、银行卡正面照片"},on:{onUpImg:function(r){arguments[0]=r=e.$handleEvent(r),e.upImgData.apply(void 0,arguments)}}})],1),"SUBMIT"==e.btnType?t("v-uni-view",{staticClass:"btn-row"},[t("v-uni-button",{staticClass:"primary",attrs:{type:"primary"},on:{click:function(r){arguments[0]=r=e.$handleEvent(r),e.register.apply(void 0,arguments)}}},[e._v("注册")])],1):e._e(),"RESET_SUBMIT"==e.btnType?t("v-uni-view",{staticClass:"btn-row"},[t("v-uni-button",{staticClass:"primary",attrs:{type:"primary"},on:{click:function(r){arguments[0]=r=e.$handleEvent(r),e.register.apply(void 0,arguments)}}},[e._v("重新提交")])],1):e._e(),t("mpvue-picker",{ref:"cityPicker",attrs:{themeColor:"#007AFF",mode:"multiLinkageSelector",deepLength:2,pickerValueDefault:[0,0],pickerValueArray:e.cityData},on:{onConfirm:function(r){arguments[0]=r=e.$handleEvent(r),e.onCityConfirm.apply(void 0,arguments)}}}),t("m-codedialog",{attrs:{show:e.showCodeDialog,len:6,autoCountdown:!0,phone:e.params.mobile},on:{change:function(r){arguments[0]=r=e.$handleEvent(r),e.codedialogChange.apply(void 0,arguments)}}})],1)},o=[]},dd51:function(e,r,t){"use strict";t.r(r);var a=t("cb5e"),n=t("f8b6");for(var o in n)"default"!==o&&function(e){t.d(r,e,(function(){return n[e]}))}(o);t("4a90");var i,s=t("f0c5"),u=Object(s["a"])(n["default"],a["b"],a["c"],!1,null,"c45b59ca",null,!1,a["a"],i);r["default"]=u.exports},f8b6:function(e,r,t){"use strict";t.r(r);var a=t("0373"),n=t.n(a);for(var o in a)"default"!==o&&function(e){t.d(r,e,(function(){return a[e]}))}(o);r["default"]=n.a}}]);