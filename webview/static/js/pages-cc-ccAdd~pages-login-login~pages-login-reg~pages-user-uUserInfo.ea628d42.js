(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["pages-cc-ccAdd~pages-login-login~pages-login-reg~pages-user-uUserInfo"],{"0faf":function(e,n,t){"use strict";var r;t.d(n,"b",(function(){return c})),t.d(n,"c",(function(){return o})),t.d(n,"a",(function(){return r}));var c=function(){var e=this,n=e.$createElement,t=e._self._c||n;return t("v-uni-view",{staticClass:"m-icon",class:["icon-"+e.type],style:{color:e.color,"font-size":e.fontSize},on:{click:function(n){arguments[0]=n=e.$handleEvent(n),e.onClick()}}})},o=[]},"11a9":function(e,n,t){"use strict";var r=t("4cc0"),c=t.n(r);c.a},"192a":function(e,n,t){e.exports=t.p+"static/fonts/icomoon.a1317583.woff"},"1de5":function(e,n,t){"use strict";e.exports=function(e,n){return n||(n={}),e=e&&e.__esModule?e.default:e,"string"!==typeof e?e:(/^['"].*['"]$/.test(e)&&(e=e.slice(1,-1)),n.hash&&(e+=n.hash),/["'() \t\n]/.test(e)||n.needQuotes?'"'.concat(e.replace(/"/g,'\\"').replace(/\n/g,"\\n"),'"'):e)}},"38a3":function(e,n,t){e.exports=t.p+"static/fonts/icomoon.70606be3.eot"},"3a0d":function(e,n,t){e.exports=t.p+"static/img/icomoon.e626ede1.svg"},"4cc0":function(e,n,t){var r=t("77f1");"string"===typeof r&&(r=[[e.i,r,""]]),r.locals&&(e.exports=r.locals);var c=t("4f06").default;c("ff20d560",r,!0,{sourceMap:!1,shadowMode:!1})},"716b":function(e,n,t){var r=t("881d");"string"===typeof r&&(r=[[e.i,r,""]]),r.locals&&(e.exports=r.locals);var c=t("4f06").default;c("27142a63",r,!0,{sourceMap:!1,shadowMode:!1})},"73be":function(e,n,t){"use strict";t.r(n);var r=t("0faf"),c=t("fdd2");for(var o in c)"default"!==o&&function(e){t.d(n,e,(function(){return c[e]}))}(o);t("7f99");var a,i=t("f0c5"),s=Object(i["a"])(c["default"],r["b"],r["c"],!1,null,"35ecc687",null,!1,r["a"],a);n["default"]=s.exports},"77f1":function(e,n,t){var r=t("24fb");n=r(!1),n.push([e.i,'@charset "UTF-8";\n/* 页面左右间距 */\n/* 文字尺寸 */\n/*文字颜色*/\n/* 边框颜色 */\n/* 图片加载中颜色 */\n/* 行为相关颜色 */.m-input-view[data-v-845dc4ca]{display:flex;flex-direction:row;align-items:center;width:100%;flex:1;padding:%?20?% %?10?%}.m-input-input[data-v-845dc4ca]{flex:1;width:100%}.m-input-icon[data-v-845dc4ca]{width:20px}',""]),e.exports=n},"7d61":function(e,n,t){"use strict";Object.defineProperty(n,"__esModule",{value:!0}),n.default=void 0;var r={loginRule:[{name:"mobile",checkType:"mobile",checkRule:"",errorMsg:"Formato incorreto do número móvel"},{name:"code",checkType:"string",checkRule:"4",errorMsg:"Introduza um código de verificação de 4 dígitos"}],sendCodeRule:[{name:"mobile",checkType:"notnull",checkRule:"",errorMsg:"O número de telemóvel não pode estar vazio"},{name:"mobile",checkType:"mobile",checkRule:"",errorMsg:"Formato incorreto do número móvel"}],regCustomerRule:[{name:"openId",checkType:"notnull",checkRule:"",errorMsg:"缺失openId"},{name:"referrer",checkType:"notnull",checkRule:"",errorMsg:"缺失referrer"},{name:"userName",checkType:"string",checkRule:"1,3",errorMsg:"姓名应为1-3个字符"},{name:"idCard",checkType:"string",checkRule:"15,18",errorMsg:"身份证号格式不正确"},{name:"cardNo",checkType:"int",checkRule:"3,20",errorMsg:"银行卡号格式不正确"},{name:"cityNo",checkType:"notnull",checkRule:"",errorMsg:"请选择开户地区"},{name:"bankName",checkType:"notnull",checkRule:"",errorMsg:"银行名称不能为空"},{name:"mobile",checkType:"mobile",checkRule:"",errorMsg:"手机号格式不正确"},{name:"settleCardImgId",checkType:"notnull",checkRule:"",errorMsg:"请上传身份证和结算卡照片"},{name:"cardHolderBackImgId",checkType:"notnull",checkRule:"",errorMsg:"请上传身份证国徽面照片"},{name:"cardHolderIdImgId",checkType:"notnull",checkRule:"",errorMsg:"请上传手持身份证合影照片"}],updataCustomerCardRule:[{name:"customerNo",checkType:"notnull",checkRule:"",errorMsg:"商户编号为空"},{name:"userName",checkType:"string",checkRule:"1,3",errorMsg:"姓名应为1-3个字符"},{name:"idCard",checkType:"string",checkRule:"15,18",errorMsg:"身份证号格式不正确"},{name:"cardNo",checkType:"int",checkRule:"3,20",errorMsg:"银行卡号格式不正确"},{name:"cityNo",checkType:"notnull",checkRule:"",errorMsg:"请选择开户地区"},{name:"bankName",checkType:"notnull",checkRule:"",errorMsg:"未查询到银行名称"},{name:"mobile",checkType:"mobile",checkRule:"",errorMsg:"手机号格式不正确"},{name:"settleCardImgId",checkType:"notnull",checkRule:"",errorMsg:"请上传身份证和结算卡照片"},{name:"cardHolderIdImgId",checkType:"notnull",checkRule:"",errorMsg:"请上传手持身份证合影照片"}],ccAddRule:[{name:"cardNo",checkType:"int",checkRule:"3,20",errorMsg:"银行卡号格式不正确"},{name:"accountName",checkType:"notnull",checkRule:"",errorMsg:"开户名称不能为空"},{name:"reservedmobile",checkType:"mobile",checkRule:"",errorMsg:"手机号格式不正确"},{name:"idCard",checkType:"string",checkRule:"15,18",errorMsg:"身份证号格式不正确"},{name:"bankName",checkType:"notnull",checkRule:"",errorMsg:"银行名称不能为空"}]};n.default=r},"7f99":function(e,n,t){"use strict";var r=t("716b"),c=t.n(r);c.a},"868f":function(e,n,t){"use strict";t.r(n);var r=t("f30c"),c=t("cd11");for(var o in c)"default"!==o&&function(e){t.d(n,e,(function(){return c[e]}))}(o);t("11a9");var a,i=t("f0c5"),s=Object(i["a"])(c["default"],r["b"],r["c"],!1,null,"845dc4ca",null,!1,r["a"],a);n["default"]=s.exports},"881d":function(e,n,t){var r=t("24fb"),c=t("1de5"),o=t("38a3"),a=t("9fb7"),i=t("192a"),s=t("3a0d");n=r(!1);var u=c(o),l=c(o,{hash:"#iefix"}),f=c(a),d=c(i),h=c(s,{hash:"#icomoon"});n.push([e.i,"@font-face{font-family:icomoon;src:url("+u+");src:url("+l+') format("embedded-opentype"),url('+f+') format("truetype"),url('+d+') format("woff"),url('+h+') format("svg");font-weight:400;font-style:normal}[class^="icon-"][data-v-35ecc687], [class*=" icon-"][data-v-35ecc687]{\n  /* use !important to prevent issues with browser extensions that change fonts */font-family:icomoon!important;speak:none;font-style:normal;font-weight:400;font-variant:normal;text-transform:none;line-height:1;\n\n  /* Better Font Rendering =========== */-webkit-font-smoothing:antialiased;-moz-osx-font-smoothing:grayscale}.icon-ditu-xing[data-v-35ecc687]:before{content:"\\e909"}.icon-duigou[data-v-35ecc687]:before{content:"\\e90a"}.icon-fenxiangfangshi[data-v-35ecc687]:before{content:"\\e90b"}.icon-guanbi[data-v-35ecc687]:before{content:"\\e90c"}.icon-icon_loading[data-v-35ecc687]:before{content:"\\e90d"}.icon-icon_shezhi[data-v-35ecc687]:before{content:"\\e90e"}.icon-icon_tianjia[data-v-35ecc687]:before{content:"\\e90f"}.icon-icon_yingyongguanli[data-v-35ecc687]:before{content:"\\e910"}.icon-icon_yiwenkongxin[data-v-35ecc687]:before{content:"\\e911"}.icon-icon_zhanghao[data-v-35ecc687]:before{content:"\\e912"}.icon-jinggao[data-v-35ecc687]:before{content:"\\e913"}.icon-kongjianyixuan[data-v-35ecc687]:before{content:"\\e914"}.icon-kongxinduigou[data-v-35ecc687]:before{content:"\\e915"}.icon-shangyibu[data-v-35ecc687]:before{content:"\\e916"}.icon-shuaxin[data-v-35ecc687]:before{content:"\\e917"}.icon-tixingshixin[data-v-35ecc687]:before{content:"\\e918"}.icon-wuxiandianbo[data-v-35ecc687]:before{content:"\\e919"}.icon-xiangshangzhanhang[data-v-35ecc687]:before{content:"\\e91a"}.icon-xiangxiazhanhang[data-v-35ecc687]:before{content:"\\e91b"}.icon-xiayibu[data-v-35ecc687]:before{content:"\\e91c"}.icon-ai-eye[data-v-35ecc687]:before{content:"\\e907"}.icon-close[data-v-35ecc687]:before{content:"\\e908"}.icon-iconzh2[data-v-35ecc687]:before{content:"\\e900"}.icon-jibenxinxi[data-v-35ecc687]:before{content:"\\e901"}.icon-kefu[data-v-35ecc687]:before{content:"\\e902"}.icon-shiyongbangzhu[data-v-35ecc687]:before{content:"\\e903"}.icon-tuijianyouli[data-v-35ecc687]:before{content:"\\e904"}.icon-weibiaoti2010104[data-v-35ecc687]:before{content:"\\e905"}.icon-xiazai[data-v-35ecc687]:before{content:"\\e906"}',""]),e.exports=n},"9fb7":function(e,n,t){e.exports=t.p+"static/fonts/icomoon.62e75c1f.ttf"},b267:function(e,n,t){"use strict";t("a9e3"),Object.defineProperty(n,"__esModule",{value:!0}),n.default=void 0;var r={props:{type:String,color:String,size:{type:[Number,String],default:24}},computed:{fontSize:function(){var e=Number(this.size);return e=isNaN(e)?24:e,"".concat(e,"upx")}},methods:{onClick:function(){this.$emit("click")}}};n.default=r},cd11:function(e,n,t){"use strict";t.r(n);var r=t("db42"),c=t.n(r);for(var o in r)"default"!==o&&function(e){t.d(n,e,(function(){return r[e]}))}(o);n["default"]=c.a},d5ab:function(e,n,t){t("c975"),t("a9e3"),t("4d63"),t("ac1f"),t("25f0"),t("1276"),e.exports={error:"",check:function(e,n){for(var t=0;t<n.length;t++){if(!n[t].checkType)return!0;if(!n[t].name)return!0;if(!n[t].errorMsg)return!0;if(!e[n[t].name])return this.error=n[t].errorMsg,!1;switch(n[t].checkType){case"string":var r=new RegExp("^.{"+n[t].checkRule+"}$");if(!r.test(e[n[t].name]))return this.error=n[t].errorMsg,!1;break;case"int":r=new RegExp("^(-[1-9]|[1-9])[0-9]{"+n[t].checkRule+"}$");if(!r.test(e[n[t].name]))return this.error=n[t].errorMsg,!1;break;case"between":if(!this.isNumber(e[n[t].name]))return this.error=n[t].errorMsg,!1;var c=n[t].checkRule.split(",");if(c[0]=Number(c[0]),c[1]=Number(c[1]),e[n[t].name]>c[1]||e[n[t].name]<c[0])return this.error=n[t].errorMsg,!1;break;case"betweenD":r=/^-?[1-9][0-9]?$/;if(!r.test(e[n[t].name]))return this.error=n[t].errorMsg,!1;c=n[t].checkRule.split(",");if(c[0]=Number(c[0]),c[1]=Number(c[1]),e[n[t].name]>c[1]||e[n[t].name]<c[0])return this.error=n[t].errorMsg,!1;break;case"betweenF":r=/^-?[0-9][0-9]?.+[0-9]+$/;if(!r.test(e[n[t].name]))return this.error=n[t].errorMsg,!1;c=n[t].checkRule.split(",");if(c[0]=Number(c[0]),c[1]=Number(c[1]),e[n[t].name]>c[1]||e[n[t].name]<c[0])return this.error=n[t].errorMsg,!1;break;case"same":if(e[n[t].name]!=n[t].checkRule)return this.error=n[t].errorMsg,!1;break;case"notsame":if(e[n[t].name]==n[t].checkRule)return this.error=n[t].errorMsg,!1;break;case"email":r=/^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;if(!r.test(e[n[t].name]))return this.error=n[t].errorMsg,!1;break;case"mobile":r=/^9[0-9]{8,8}$/;if(!r.test(e[n[t].name]))return this.error=n[t].errorMsg,!1;break;case"zipcode":r=/^[0-9]{6}$/;if(!r.test(e[n[t].name]))return this.error=n[t].errorMsg,!1;break;case"reg":r=new RegExp(n[t].checkRule);if(!r.test(e[n[t].name]))return this.error=n[t].errorMsg,!1;break;case"in":if(-1==n[t].checkRule.indexOf(e[n[t].name]))return this.error=n[t].errorMsg,!1;break;case"notnull":if(null==e[n[t].name]||e[n[t].name].length<1)return this.error=n[t].errorMsg,!1;break}}return!0},isNumber:function(e){var n=/^-?[1-9][0-9]?.?[0-9]*$/;return n.test(e)}}},db42:function(e,n,t){"use strict";var r=t("4ea4");t("a9e3"),Object.defineProperty(n,"__esModule",{value:!0}),n.default=void 0;var c=r(t("73be")),o={components:{mIcon:c.default},props:{type:String,value:String,placeholder:String,clearable:{type:[Boolean,String],default:!1},displayable:{type:[Boolean,String],default:!1},focus:{type:[Boolean,String],default:!1},maxLength:{type:Number,default:1e3},disabled:{type:Boolean,default:!1}},model:{prop:"value",event:"input"},data:function(){return{showPassword:!1,isFocus:!1}},computed:{inputType:function(){var e=this.type;return"password"===e?"text":e},clearable_:function(){return"false"!==String(this.clearable)},displayable_:function(){return"false"!==String(this.displayable)},focus_:function(){return"false"!==String(this.focus)}},methods:{clear:function(){this.$emit("input","")},display:function(){this.showPassword=!this.showPassword},onFocus:function(){this.isFocus=!0},onBlur:function(e){var n=this;this.$nextTick((function(){n.isFocus=!1,n.$emit("onblur",e)}))},onInput:function(e){this.$emit("input",e.target.value)}}};n.default=o},f30c:function(e,n,t){"use strict";t.d(n,"b",(function(){return c})),t.d(n,"c",(function(){return o})),t.d(n,"a",(function(){return r}));var r={mIcon:t("73be").default},c=function(){var e=this,n=e.$createElement,t=e._self._c||n;return t("v-uni-view",{staticClass:"m-input-view"},[t("v-uni-input",{staticClass:"m-input-input",attrs:{focus:e.focus_,type:e.inputType,value:e.value,placeholder:e.placeholder,password:"password"===e.type&&!e.showPassword,maxlength:e.maxLength,disabled:e.disabled},on:{input:function(n){arguments[0]=n=e.$handleEvent(n),e.onInput.apply(void 0,arguments)},focus:function(n){arguments[0]=n=e.$handleEvent(n),e.onFocus.apply(void 0,arguments)},blur:function(n){arguments[0]=n=e.$handleEvent(n),e.onBlur.apply(void 0,arguments)}}}),e.clearable_&&!e.displayable_&&e.value&&e.value.length?t("v-uni-view",{staticClass:"m-input-icon"},[t("m-icon",{attrs:{color:"#cccccc",type:"close",size:"40"},on:{click:function(n){arguments[0]=n=e.$handleEvent(n),e.clear.apply(void 0,arguments)}}})],1):e._e(),e.displayable_?t("v-uni-view",{staticClass:"m-input-icon"},[t("m-icon",{attrs:{color:e.showPassword?"#666666":"#cccccc",type:"ai-eye",size:"40"},on:{click:function(n){arguments[0]=n=e.$handleEvent(n),e.display.apply(void 0,arguments)}}})],1):e._e()],1)},o=[]},fdd2:function(e,n,t){"use strict";t.r(n);var r=t("b267"),c=t.n(r);for(var o in r)"default"!==o&&function(e){t.d(n,e,(function(){return r[e]}))}(o);n["default"]=c.a}}]);