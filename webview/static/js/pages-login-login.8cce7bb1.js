(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["pages-login-login"],{"0f88":function(e,t,n){var i=n("d241");"string"===typeof i&&(i=[[e.i,i,""]]),i.locals&&(e.exports=i.locals);var a=n("4f06").default;a("4cd09e91",i,!0,{sourceMap:!1,shadowMode:!1})},1837:function(e,t,n){"use strict";n.r(t);var i=n("bb47"),a=n.n(i);for(var r in i)"default"!==r&&function(e){n.d(t,e,(function(){return i[e]}))}(r);t["default"]=a.a},"1beb":function(e,t,n){"use strict";n.r(t);var i=n("a408"),a=n("1837");for(var r in a)"default"!==r&&function(e){n.d(t,e,(function(){return a[e]}))}(r);n("3a9e");var o,s=n("f0c5"),u=Object(s["a"])(a["default"],i["b"],i["c"],!1,null,"29e454b9",null,!1,i["a"],o);t["default"]=u.exports},"28a9":function(e,t,n){"use strict";var i;n.d(t,"b",(function(){return a})),n.d(t,"c",(function(){return r})),n.d(t,"a",(function(){return i}));var a=function(){var e=this,t=e.$createElement,n=e._self._c||t;return n("v-uni-view",{staticClass:"swiper-box"},[n("v-uni-swiper",{staticClass:"swiper",attrs:{"indicator-dots":!1,autoplay:!0,interval:3e3,duration:500,circular:!0},on:{change:function(t){arguments[0]=t=e.$handleEvent(t),e.change.apply(void 0,arguments)}}},e._l(e.list,(function(t,i){return n("v-uni-swiper-item",{key:i},[n("v-uni-view",{staticClass:"swiper-item",on:{click:function(n){arguments[0]=n=e.$handleEvent(n),e.dump(t)}}},[n("v-uni-image",{staticClass:"swiper-item",attrs:{src:t.src,mode:""}})],1)],1)})),1),n("v-uni-view",{directives:[{name:"show",rawName:"v-show",value:!1,expression:"false"}],staticClass:"dtos"},e._l(e.list,(function(t,i){return n("v-uni-view",{key:i,staticClass:"dto",class:{"dto-active":i===e.currIndex}})})),1)],1)},r=[]},"291f":function(e,t,n){"use strict";Object.defineProperty(t,"__esModule",{value:!0}),t.default=void 0;var i={props:{list:Array},data:function(){return{currIndex:0}},methods:{change:function(e){this.currIndex=e.detail.current},dump:function(e){console.log(e);0==e.type?this.$mRouter.push({route:this.$mRoutesConfig.news,query:{id:e.id}}):this.$mRouter.push({route:this.$mRoutesConfig.webview,query:{url:e.dump_uri}})}}};t.default=i},"3a9e":function(e,t,n){"use strict";var i=n("0f88"),a=n.n(i);a.a},"3d7e":function(e,t){e.exports="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAmCAYAAAClI5npAAACbklEQVRYhe3YWehNURQG8B/+UkrmF8lYIpIoSkLxYlYeTGVIQkLyJLwoSnmhjA8y50Xy4gkZQinKVGTOUDKWZChDW/vqdPrfe/e9171efHVvZ5+9zv6+fc7aa629W3yY018NWIypWIEn1QzTsgbyzdiLybiD0Y0SMB6nsTZzry3OYxf6VTJYyifoimEYgFkYnjDuYZzFbVzH91IChsRBv6E1OqEdesXZDEabSmaVw0vcwiO8wgd8RBPeh78FWFUDQTl0i7/m8Dz4wLs6kpfDkyDg5z8U8LOWZfhX8F9AIwQ8i8uv4QLuYgp64Foxo6Y6ke/Gsng9HxOLGdbjDazMkK/G/lLGf/MNnMESPIztnRkhdRdwIWbJAtakkAekfIJ7OFCi/xjGZNojsTWFPEVAyO/9Y8IKWfNtrn8eZmfag3AplTxFwJfM9Y1YE1yM7aU4lOlvhXOVkKcICF58Eh1i+3UsvaZjT872ODpXI6CciFB03sfQzL2TOZsJmFYpeSiIUtNxF1xGzyL9R6ogV0jHbxKN20Q/mJ67Hxy1Y5UCPgcBNyt4oD1OYENs943OWC1eN8VE8aPCsLwxVrzjE2xL4UqhLA/BZGaNg1WDroVZr/sH5NuC/xUEPMwFlUbg96Sz331h3MU0AmPxKS8gbJ/GNYB8WdxHygsQt02T6ki+L1ZLf9Dc0juFEZVmtTL4Gme+KG9WbO1fxagydUAqHsQsurs5+3LBZ0EsKl9USb4dA/G4mEFK9DuIPpiLpwn2IapuQu+46/5Wyjg1/IZBjsbYH86FQlLKI1RLWyLx+tQzo1oOqWZgObpH794RDx7SgV/wJ3PXRsaEvAAAAABJRU5ErkJggg=="},8019:function(e,t){e.exports="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAACo0lEQVRIib2XS2gTURSGP5NUkqaxplrbulAEq4iQRVO14MIira+K4gOb6kJUCtpqq6DQnakrQbS+qoK6tfGB4MY37sXHUqwprqRItTSJIJr64kzutHHMZJI46Q8Dl7l37jf33Dnn/jNtJFxODioB1gDNQD2wENAfjANDwCvgsbrGraa0As8EuoBOYE4ubwiMAJeAc0DMbJAjywTbgTdAbx5Q1Ngw8BYI5QN2AheB20BNHkCjqoABtXqnFVgGRFRo7dIB4JYRbgT3qRDbra3AWTPwNuBQEaC6DgKtRvAMta/F1nmVKRNgSZnqKQDLF39YB7uKEWJvYw8Vnc9xVS01dnUA0x2qGuWTp5ZyB/dQuqoH5+zF2mVQpVRBlyqFtkJ9G/u0diKyk++D9zMN08BBu6Ce+r2UtZxJQW/uMoOKggKutQe6j7KW01o7HmkjOfgg2/Bah0qlf+SqDjDraBTflivW0GXtk9CBkBVUVG56SDh8NTi8lbgDIbxNvebQFfsp23AqBZWVvnto+aKodEpk6khGHxG73qy1S1d2Z4Rr0HUnJ6HWK9UVF3DUrHf8wwti15rS4GE7oKKo81ijOwA0mI349WWY5NATPHW7KZnXwO+vozj98/FtSlVYbU9zDG+a7okDWQ+Yfve6XHPr8Lc/++te/EartiUFaLOE+qmyK1n1Y/g1Y1dXT0JlpYVBP4svcyljJnE7kQtc9tPh8RcSXl39wDfd7EkuD07BCfUJWCQmUM/jhDoai60u3XmmFxAxdxeKCO5Xfg4jWHQEuFME6F2gO/2GEfxTeeF+G6GXgR1qblOwDhdj1gZ8/A/giJqjwwg1A+uS/VgCHFe5l6tGVWqK9ZjYU6Py+Wlbq2zScmABUKH6xoD3wEtAKor8tCWzzgb8AXeRscNzNUMCAAAAAElFTkSuQmCC"},"88de":function(e,t,n){"use strict";n.r(t);var i=n("28a9"),a=n("98c3");for(var r in a)"default"!==r&&function(e){n.d(t,e,(function(){return a[e]}))}(r);n("d1dc");var o,s=n("f0c5"),u=Object(s["a"])(a["default"],i["b"],i["c"],!1,null,"c640de2c",null,!1,i["a"],o);t["default"]=u.exports},"98c3":function(e,t,n){"use strict";n.r(t);var i=n("291f"),a=n.n(i);for(var r in i)"default"!==r&&function(e){n.d(t,e,(function(){return i[e]}))}(r);t["default"]=a.a},a408:function(e,t,n){"use strict";n.d(t,"b",(function(){return a})),n.d(t,"c",(function(){return r})),n.d(t,"a",(function(){return i}));var i={mSwiper:n("88de").default,mInput:n("868f").default},a=function(){var e=this,t=e.$createElement,i=e._self._c||t;return i("v-uni-view",{staticClass:"content login-page"},[i("m-swiper",{attrs:{list:e.banner}}),i("v-uni-view",{staticStyle:{padding:"0 5%"}},[i("v-uni-view",{staticClass:"tips"},[i("v-uni-text",{staticStyle:{"font-size":"10px",color:"#f05a28"}},[e._v("Olá!"+e._s(e.querydata.name)+", Bem vido a Wii-Fi, Insere o número de telemóvel")])],1)],1),i("iframe",{directives:[{name:"show",rawName:"v-show",value:!1,expression:"false"}],staticClass:"iframeClass",attrs:{id:"benefitnotice_iframe",src:e.ifaremUrl}}),i("v-uni-view",{staticStyle:{padding:"0 5%","margin-top":"15px"}},[i("v-uni-view",{staticClass:"input-group"},[i("v-uni-view",{staticClass:"input-row border-bottom-1px"},[i("v-uni-image",{staticStyle:{width:"34px",height:"34px",padding:"2px"},attrs:{src:n("bc2a"),mode:""}}),i("v-uni-text",{staticClass:"title",staticStyle:{width:"80rpx","padding-left":"0"}},[e._v("+244")]),i("m-input",{staticStyle:{"margin-left":"5px"},attrs:{type:"number",placeholder:"Insere o número de telemóvel",maxLength:11,focus:!0},model:{value:e.params.mobile,callback:function(t){e.$set(e.params,"mobile",t)},expression:"params.mobile"}})],1),i("v-uni-view",{staticClass:"input-row border-bottom-1px",staticStyle:{"margin-top":"50px"}},[i("v-uni-image",{staticStyle:{width:"24px",height:"30px",padding:"7px"},attrs:{src:n("3d7e"),mode:""}}),i("m-input",{attrs:{type:"number",placeholder:"Validação",maxLength:4},model:{value:e.params.code,callback:function(t){e.$set(e.params,"code",t)},expression:"params.code"}}),i("v-uni-view",{staticClass:"sendCode"},[i("v-uni-button",{attrs:{size:"mini",disabled:e.btnDis},on:{click:function(t){arguments[0]=t=e.$handleEvent(t),e.sendCode.apply(void 0,arguments)}}},[e._v(e._s(e.btnText))])],1)],1)],1),i("v-uni-view",{directives:[{name:"show",rawName:"v-show",value:e.btnDis,expression:"btnDis"}],staticClass:"tips"},[i("v-uni-image",{staticStyle:{width:"12px",height:"12px","padding-top":"7px","padding-right":"7px"},attrs:{src:n("8019"),mode:""}}),i("v-uni-text",{staticStyle:{"font-size":"10px"}},[e._v("Já foi enviado o código de validação, pode haver um atraso, por favor aguarde")])],1)],1),i("v-uni-view",{staticClass:"btn-row"},[i("v-uni-button",{staticClass:"primary",attrs:{type:"primary",loading:e.submitBtnDis,disabled:e.submitBtnDis||e.submitBtnDisKey},on:{click:function(t){arguments[0]=t=e.$handleEvent(t),e.bindLogin.apply(void 0,arguments)}}},[e._v("Iniciar internet")])],1)],1)},r=[]},bb47:function(e,t,n){"use strict";var i=n("4ea4");Object.defineProperty(t,"__esModule",{value:!0}),t.default=void 0,n("96cf");var a=i(n("1da1")),r=i(n("5530")),o=n("26cb"),s=i(n("868f")),u=i(n("d5ab")),d=i(n("7d61")),c=(i(n("88de")),{components:{mInput:s.default},data:function(){return{ifaremUrl:"",banner:[],loginTitleTxt:this.$mConfig.loginTitleTxt,copyrightTxt:this.$mConfig.copyrightTxt,btnDis:!1,submitBtnDis:!1,btnText:"Enviar código de validação",params:{mobile:"",code:""},reqBody:{},redirectRoute:this.$mRoutesConfig.main,routeQuery:{},querydata:{}}},onLoad:function(e){this.querydata=(0,r.default)({type:"wifilogin"},e),console.log(e),this.getBanners(e)},computed:(0,r.default)((0,r.default)((0,r.default)({},(0,o.mapState)(["openId"])),(0,o.mapGetters)(["hasLogin"])),{},{submitBtnDisKey:function(){var e={};e["mobile"]=this.params.mobile,e["code"]=this.params.code;var t=u.default.check(e,d.default.loginRule);return!t}}),methods:{getBanners:function(e){var t=this;return(0,a.default)(regeneratorRuntime.mark((function n(){var i,a,o;return regeneratorRuntime.wrap((function(n){while(1)switch(n.prev=n.next){case 0:return n.next=2,t.$apis.getBanners((0,r.default)((0,r.default)({},e),{},{weizhi:"login"}));case 2:for(i=n.sent,console.log(i),a=[],o=0;o<i.length;o++)a.push({src:t.$mAssetsPath.bannerhost+i[o].show_image,url:""});t.banner=a;case 7:case"end":return n.stop()}}),n)})))()},initredirectRouteData:function(e){e.redirectUrl&&(this.redirectRoute.path=e.redirectUrl,delete e.redirectUrl,this.routeQuery=e)},bindLogin:function(){var e=this;return(0,a.default)(regeneratorRuntime.mark((function t(){var n,i,a,o;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:if(t.prev=0,e.reqBody["mobile"]=e.params["mobile"],e.reqBody["code"]=e.params["code"],n=u.default.check(e.reqBody,d.default.loginRule),n){t.next=7;break}return uni.showToast({title:u.default.error,icon:"none"}),t.abrupt("return");case 7:return e.submitBtnDis=!0,i=(0,r.default)((0,r.default)({},e.querydata),e.reqBody),t.next=11,e.$apis.wifipostLogin(i);case 11:a=t.sent,o=e,document.querySelector("#benefitnotice_iframe"),e.ifaremUrl=a.url,o.$store.commit("SET_USERINFO",a.userinfo||{}),console.log(o.$mConfig),o.$store.commit("SET_TOKEN",o.$mConfig.tokenkey),uni.setStorageSync("token",a.userinfo.token),setTimeout((function(){window.location.href="/#/pages/index/index"}),3e3),t.next=26;break;case 22:t.prev=22,t.t0=t["catch"](0),console.log(t.t0),e.submitBtnDis=!1;case 26:case"end":return t.stop()}}),t,null,[[0,22]])})))()},sendCode:function(){var e=this;return(0,a.default)(regeneratorRuntime.mark((function t(){var n;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:if(n=u.default.check(e.params,d.default.sendCodeRule),n){t.next=4;break}return uni.showToast({title:u.default.error,icon:"none"}),t.abrupt("return");case 4:return t.next=6,e.$apis.getMsgCode({type:0,mobile:e.params.mobile});case 6:t.sent,uni.showToast({title:"Enviado com sucesso"}),e.countDown();case 9:case"end":return t.stop()}}),t)})))()},countDown:function(){var e=this,t=null,n=60;this.btnDis=!0,clearInterval(t),this.btnText="".concat(n,"s"),t=setInterval((function(){if(0==n)return clearInterval(t),e.btnText="Reenviar",void(e.btnDis=!1);n--,e.btnText="Reenviar em ".concat(n," segundos")}),1e3)}}});t.default=c},bc2a:function(e,t){e.exports="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMgAAADICAYAAACtWK6eAAADkUlEQVR4nO3c0W3jRhRAUTvYAraM1JQCU1PK2A6cLwOGP27itUy+Nz7n14JBaXhnSIri89MQv/768ys25GXK+zvcw/ejn3//M+IT+zFgGx5JEPd4/7mPmXg/65RAhDHL63isD2V7IMKYbX0oWwMRxi5rQ/ljwDZ8lDj2Wjd22wIRx36rxnBTIOI4x5qx3BDIiziOtGJMN56DcI7xkUwPxMpxvtFjPDkQcXwfY8faIRaEqYFYPb6fkWM+MRBxMMZpd/NOcdctFdsnl5dpt6M4B3m8Owf4mNvMp5gWiMOrz9seyah9wAoCQSDnsQo/0KRAThnYO9+Hz/DBXMX6GmbxQzjEgiAQCAKBIBAIAoEgEAgCgSAQCAKBIBAIAoEgEAgCgSAQCAKBcOLvQTy44F5H/RbGCgJBIBAEAkEgEAQCQSAQBAJBIBAEAkEgEAQCQSAQBAJBIBAEAkEgEAQCQSAQBAJBIBAEAkEgEAQCQSAQBAJBIBAEAkEgEAQCQSAQBAJBIBAEAkEgEAQCQSAQBAJBIBAEAkEgEAQCQSAQBAJBIBAEAkEgEAQCQSAQBAJBIBAEAkEgEAQCQSAQBAJBIBAEAkEgEAQCQSAQBAJBIBAEAkEgEAQCQSAQBAJBIBAEAkEgEAQCQSAQBAJBIBAEAkEgEAQCQSAQBAJBIBAEAkEgEAQCQSAQBAJBIBAEAkEgEAQCQSAQBAJBIBAEAkEgEAQCQSAQBAJBIBAEAkEgEAQCQSAQBAJBIBAEAkEgEAQCQSAQBAJBIBAEAkEgEAQCQSAQBAJBIBAEAkEgEAQCQSAQBAJBIBAEAkEgEAQC4ceBH87LgG3gEFYQCAKBIBAIAoEgEAgCgXDiZd6tnt9tt8vVAwjkXu+jeOvt38RyE4dY93j+jzje+8hreSCBXO93d3aR3EAg1/rsTi6SiwlkH5FcSCDXeeSOLZKLCASCQK5hxl9KIBAEAmFSIA5DeDVmX7CCQJgWiFWEUawg13Cz4f83apIUCISJgZx6mPXIVeTUFWnc2E9dQUTytf9jopFj7hDrep/ZwZ3LXGxyICdf0fqdHf3kOMaO9fQVRCQff+02o8d4w2/Snw+ePd++r+/40IbxE6CHNszx3c4vVhwdbDlJ9w07t9i0grxG4krObqsmu42Xea0me60bu63fg4hkn5Vjtvkk3ZMH51s/kZ1yFcv5ySzHrPCnXeb1AOh7nHnI+/T09C8PFj+rP5jRkwAAAABJRU5ErkJggg=="},c366:function(e,t,n){var i=n("efe1");"string"===typeof i&&(i=[[e.i,i,""]]),i.locals&&(e.exports=i.locals);var a=n("4f06").default;a("29fd8c93",i,!0,{sourceMap:!1,shadowMode:!1})},d1dc:function(e,t,n){"use strict";var i=n("c366"),a=n.n(i);a.a},d241:function(e,t,n){var i=n("24fb");t=i(!1),t.push([e.i,'@charset "UTF-8";\n/* 页面左右间距 */\n/* 文字尺寸 */\n/*文字颜色*/\n/* 边框颜色 */\n/* 图片加载中颜色 */\n/* 行为相关颜色 */.login-page[data-v-29e454b9]{background:#fff;position:relative}.h2[data-v-29e454b9]{font-size:%?50?%;text-align:center;padding:%?60?% 0}.input-group[data-v-29e454b9]{background-color:#fff;margin-top:%?10?%}.tips[data-v-29e454b9]{padding-left:%?20?%;margin-top:%?20?%;color:#8c8c8c;font-size:%?26?%}.vs[data-v-29e454b9]{position:absolute;bottom:%?70?%;text-align:center;width:100%}.sendCode[data-v-29e454b9]{display:flex;align-items:center;box-sizing:border-box;align-items:stretch;padding-top:5px;height:%?60?%;border-radius:%?35?%}.sendCode uni-button[data-v-29e454b9]{border-radius:%?35?%!important;align-items:center;justify-content:center;background:#f05a28;color:#fff;border-radius:0;font-size:12px}.sendCode uni-button[data-v-29e454b9]::after{display:none}.btn-row[data-v-29e454b9]{padding:0 %?80?%}uni-button.primary[data-v-29e454b9]{background-color:#eb7b12;border-radius:%?80?%}',""]),e.exports=t},efe1:function(e,t,n){var i=n("24fb");t=i(!1),t.push([e.i,'@charset "UTF-8";\n/* 页面左右间距 */\n/* 文字尺寸 */\n/*文字颜色*/\n/* 边框颜色 */\n/* 图片加载中颜色 */\n/* 行为相关颜色 */.swiper-box[data-v-c640de2c]{width:100%;height:%?383?%;background:#fff}.swiper[data-v-c640de2c]{width:%?700?%;height:%?350?%;margin:%?25?% auto 0}.swiper-item[data-v-c640de2c]{width:%?700?%;height:%?350?%;border-radius:%?15?%}.dtos[data-v-c640de2c]{display:flex;justify-content:center;margin-top:%?22?%}.dtos .dto[data-v-c640de2c]{width:%?14?%;height:%?14?%;border-radius:%?500?%;background:#e5e5e5;margin:0 %?7?%;transition:width .5s}.dtos .dto-active[data-v-c640de2c]{background:#c2c2c2;width:%?26?%}',""]),e.exports=t}}]);