(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["pages-news-webview-webview"],{"08bb":function(e,n,t){"use strict";var u;t.d(n,"b",(function(){return a})),t.d(n,"c",(function(){return r})),t.d(n,"a",(function(){return u}));var a=function(){var e=this,n=e.$createElement,t=e._self._c||n;return t("v-uni-web-view",{attrs:{src:e.url},on:{message:function(n){arguments[0]=n=e.$handleEvent(n),e.handleMessage.apply(void 0,arguments)}}})},r=[]},"222d":function(e,n,t){"use strict";t.r(n);var u=t("08bb"),a=t("7a3c");for(var r in a)"default"!==r&&function(e){t.d(n,e,(function(){return a[e]}))}(r);var i,c=t("f0c5"),o=Object(c["a"])(a["default"],u["b"],u["c"],!1,null,null,null,!1,u["a"],i);n["default"]=o.exports},"7a3c":function(e,n,t){"use strict";t.r(n);var u=t("8b05"),a=t.n(u);for(var r in u)"default"!==r&&function(e){t.d(n,e,(function(){return u[e]}))}(r);n["default"]=a.a},"8b05":function(e,n,t){"use strict";(function(e){Object.defineProperty(n,"__esModule",{value:!0}),n.default=void 0;var t={data:function(){return{url:"http://baidu.com"}},onLoad:function(n){e("log",n," at pages/news/webview/webview.vue:13"),this.url=n.url},methods:{handleMessage:function(e){e.detail.data[0].isClose&&uni.reLaunch({url:"http://baidu.com"})}}};n.default=t}).call(this,t("0de9")["log"])}}]);