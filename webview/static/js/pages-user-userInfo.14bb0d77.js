(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["pages-user-userInfo"],{"01de":function(t,e,a){"use strict";a.r(e);var n=a("50de"),r=a.n(n);for(var o in n)"default"!==o&&function(t){a.d(e,t,(function(){return n[t]}))}(o);e["default"]=r.a},"227d":function(t,e,a){"use strict";a.r(e);var n=a("d356"),r=a("01de");for(var o in r)"default"!==o&&function(t){a.d(e,t,(function(){return r[t]}))}(o);a("dc80");var u,s=a("f0c5"),i=Object(s["a"])(r["default"],n["b"],n["c"],!1,null,"73611a3c",null,!1,n["a"],u);e["default"]=i.exports},"50de":function(t,e,a){"use strict";var n=a("4ea4");Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0,a("96cf");var r=n(a("1da1")),o=n(a("5530")),u=a("26cb"),s=n(a("cdd8")),i=(n(a("5eed")),n(a("ae26"))),c=n(a("dc49")),f={components:{mCell:s.default,mFormatCard:c.default},computed:(0,o.default)((0,o.default)({},(0,u.mapState)(["customerInfo"])),{},{cityName:function(){var t=this.$mUtils.getCityName(i.default,this.customerInfo.cityNo);return t}}),data:function(){return{customerStatus:this.$mConstDataConfig.status}},onLoad:function(t){var e=this;return(0,r.default)(regeneratorRuntime.mark((function t(){return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:e.getCustomerInfo();case 1:case"end":return t.stop()}}),t)})))()},methods:{getCustomerInfo:function(){var t=this;return(0,r.default)(regeneratorRuntime.mark((function e(){var a;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,t.$apis.getCustomer();case 2:a=e.sent,t.$store.commit("SET_CUSTOMERINFO",a);case 4:case"end":return e.stop()}}),e)})))()}},onNavigationBarButtonTap:function(t){"EDIT"==t.btnType&&("REJECT"==this.customerInfo.status?this.$mRouter.push({route:this.$mRoutesConfig.reg,query:{type:"RESET"}}):"WAIT_AUDIT"==this.customerInfo.status?uni.showToast({title:"信息".concat(this.$mConstDataConfig.status[this.customerInfo.status]),icon:"none"}):this.$mRouter.push({route:this.$mRoutesConfig.uUserInfo}))}};e.default=f},"5eed":function(t,e,a){"use strict";function n(t){if(t.onLoad){var e=t.onLoad;t.onLoad=function(t){e.call(this,t)}}return t}Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;var r=n;e.default=r},"6db0":function(t,e,a){"use strict";a.r(e);var n=a("8bf8"),r=a.n(n);for(var o in n)"default"!==o&&function(t){a.d(e,t,(function(){return n[t]}))}(o);e["default"]=r.a},"8bf8":function(t,e,a){"use strict";a("99af"),a("fb6a"),a("a9e3"),a("ac1f"),a("5319"),Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;var n={props:{cardNo:{type:[String,Number],default:""},isStar:Boolean},computed:{value:function(){var t=this.cardNo+"";return this.isStar?"".concat(t.slice(0,4),"******").concat(t.slice(t.length-4,t.length)):t.replace(/\s/g,"").replace(/[^\d]/g,"").replace(/(\d{4})(?=\d)/g,"$1 ")}}};e.default=n},c95f:function(t,e,a){"use strict";var n;a.d(e,"b",(function(){return r})),a.d(e,"c",(function(){return o})),a.d(e,"a",(function(){return n}));var r=function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("v-uni-text",[t._v(t._s(t.value))])},o=[]},d356:function(t,e,a){"use strict";a.d(e,"b",(function(){return r})),a.d(e,"c",(function(){return o})),a.d(e,"a",(function(){return n}));var n={mCell:a("cdd8").default,mFormatCard:a("dc49").default},r=function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("v-uni-view",{staticClass:"content"},["REJECT"==t.customerInfo.status||"WAIT_AUDIT"==t.customerInfo.status?a("v-uni-view",{staticClass:"status-fail-tip"},[a("v-uni-view",{staticClass:"fail-title"},[t._v("信息"+t._s(t.customerStatus[t.customerInfo.status])+"！")]),"REJECT"==t.customerInfo.status?a("v-uni-text",{staticClass:"fail-desc"},[t._v("原因 : "+t._s(t.customerInfo.auditResult))]):t._e()],1):t._e(),a("v-uni-view",{staticClass:"border-1px"},[a("m-cell",{attrs:{title:"姓名",bottomLine:!0,desc:t.customerInfo.userName}}),a("m-cell",{attrs:{title:"身份证",bottomLine:!0,desc:t.customerInfo.idCard}}),a("m-cell",{attrs:{title:"手机号",bottomLine:!0,desc:t.customerInfo.mobile}}),a("m-cell",{attrs:{title:"银行名称",bottomLine:!0,desc:t.customerInfo.bankName}}),a("m-cell",{attrs:{title:"银行账号",bottomLine:!0}},[a("v-uni-view",{staticClass:"format-card"},[a("m-format-card",{attrs:{cardNo:t.customerInfo.cardNo}})],1)],1),a("m-cell",{attrs:{title:"开户地区",bottomLine:!0,desc:t.cityName}}),a("m-cell",{attrs:{title:"商户号",bottomLine:!0,desc:t.customerInfo.customerNo}}),a("m-cell",{attrs:{title:"审核状态",desc:t.customerStatus[t.customerInfo.status]}})],1)],1)},o=[]},d909:function(t,e,a){var n=a("f651");"string"===typeof n&&(n=[[t.i,n,""]]),n.locals&&(t.exports=n.locals);var r=a("4f06").default;r("e7a18ea0",n,!0,{sourceMap:!1,shadowMode:!1})},dc49:function(t,e,a){"use strict";a.r(e);var n=a("c95f"),r=a("6db0");for(var o in r)"default"!==o&&function(t){a.d(e,t,(function(){return r[t]}))}(o);var u,s=a("f0c5"),i=Object(s["a"])(r["default"],n["b"],n["c"],!1,null,"f3da637a",null,!1,n["a"],u);e["default"]=i.exports},dc80:function(t,e,a){"use strict";var n=a("d909"),r=a.n(n);r.a},f651:function(t,e,a){var n=a("24fb");e=n(!1),e.push([t.i,'@charset "UTF-8";\n/* 页面左右间距 */\n/* 文字尺寸 */\n/*文字颜色*/\n/* 边框颜色 */\n/* 图片加载中颜色 */\n/* 行为相关颜色 */.status-fail-tip[data-v-73611a3c]{background:linear-gradient(136deg,#ffc003,#fa5d02);color:#fff;padding:%?20?%;box-sizing:border-box}.status-fail-tip .fail-title[data-v-73611a3c]{font-size:%?36?%;line-height:%?60?%}.status-fail-tip .fail-desc[data-v-73611a3c]{font-size:%?26?%}.edit-btn[data-v-73611a3c]{width:96%;margin:%?40?% auto}.edit-btn uni-button[data-v-73611a3c]{background:linear-gradient(136deg,#ffc003,#fa5d02)}.format-card[data-v-73611a3c]{color:#666;float:right}',""]),t.exports=e}}]);