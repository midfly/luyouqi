(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["pages-index-goods-goods"],{"0570":function(t,a,e){"use strict";var i=e("7f47"),n=e.n(i);n.a},3051:function(t,a,e){"use strict";var i=e("4ea4");e("99af"),e("d81d"),Object.defineProperty(a,"__esModule",{value:!0}),a.default=void 0,e("96cf");var n=i(e("1da1")),o=i(e("8a8a")),r={components:{uniLoadMore:o.default},data:function(){return{total:0,cateMaskState:0,headerPosition:"fixed",headerTop:"0px",loadingType:"more",filterIndex:0,cateId:0,priceOrder:0,cateList:[],page:1,goodsList:[]}},onLoad:function(t){this.headerTop=document.getElementsByTagName("uni-page-head")[0].offsetHeight+"px",this.cateId=t.tid,this.loadData()},onPageScroll:function(t){t.scrollTop>=0?this.headerPosition="fixed":this.headerPosition="absolute"},onPullDownRefresh:function(){this.loadData("refresh")},onReachBottom:function(){"more"==this.loadingType&&(this.page=this.page+1),this.loadData()},methods:{goshpping:function(t){this.$mRouter.push({route:this.$mRoutesConfig.webview,query:{url:t.url}})},loadData:function(){var t=arguments,a=this;return(0,n.default)(regeneratorRuntime.mark((function e(){var i,n,o,r,d;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:if(i=t.length>0&&void 0!==t[0]?t[0]:"add",n=t.length>1?t[1]:void 0,o=a,"add"!==i){e.next=9;break}if("nomore"!==a.loadingType){e.next=6;break}return e.abrupt("return");case 6:a.loadingType="loading",e.next=10;break;case 9:a.loadingType="more";case 10:return e.next=12,a.$apis.getgoods({page:o.page});case 12:r=e.sent,console.log(r),d=r.list,o.total=r.total,"refresh"===i&&(a.goodsList=[]),d=d.map((function(t){var a=t;return a.src=o.$mAssetsPath.bannerhost+t.image,a})),a.goodsList=a.goodsList.concat(d),10==d.length?a.loadingType=a.goodsList.length>o.total?"nomore":"more":a.loadingType="nomore","refresh"===i&&(1==n?uni.hideLoading():uni.stopPullDownRefresh());case 21:case"end":return e.stop()}}),e)})))()},navToDetailPage:function(t){var a=t.title;uni.navigateTo({url:"/pages/product/product?id=".concat(a)})},stopPrevent:function(){}}};a.default=r},"4fb4":function(t,a,e){"use strict";e.r(a);var i=e("c578"),n=e.n(i);for(var o in i)"default"!==o&&function(t){e.d(a,t,(function(){return i[t]}))}(o);a["default"]=n.a},5079:function(t,a,e){var i=e("5276");"string"===typeof i&&(i=[[t.i,i,""]]),i.locals&&(t.exports=i.locals);var n=e("4f06").default;n("ec8c1e06",i,!0,{sourceMap:!1,shadowMode:!1})},5276:function(t,a,e){var i=e("24fb");a=i(!1),a.push([t.i,".uni-load-more[data-v-540e17b0]{display:flex;flex-direction:row;height:%?80?%;align-items:center;justify-content:center}.uni-load-more__text[data-v-540e17b0]{font-size:%?28?%;color:#999}.uni-load-more__img[data-v-540e17b0]{height:24px;width:24px;margin-right:10px}.uni-load-more__img>uni-view[data-v-540e17b0]{position:absolute}.uni-load-more__img>uni-view uni-view[data-v-540e17b0]{width:6px;height:2px;border-top-left-radius:1px;border-bottom-left-radius:1px;background:#999;position:absolute;opacity:.2;-webkit-transform-origin:50%;transform-origin:50%;-webkit-animation:load-data-v-540e17b0 1.56s ease infinite;animation:load-data-v-540e17b0 1.56s ease infinite}.uni-load-more__img>uni-view uni-view[data-v-540e17b0]:nth-child(1){-webkit-transform:rotate(90deg);transform:rotate(90deg);top:2px;left:9px}.uni-load-more__img>uni-view uni-view[data-v-540e17b0]:nth-child(2){-webkit-transform:rotate(180deg);transform:rotate(180deg);top:11px;right:0}.uni-load-more__img>uni-view uni-view[data-v-540e17b0]:nth-child(3){-webkit-transform:rotate(270deg);transform:rotate(270deg);bottom:2px;left:9px}.uni-load-more__img>uni-view uni-view[data-v-540e17b0]:nth-child(4){top:11px;left:0}.load1[data-v-540e17b0],\n.load2[data-v-540e17b0],\n.load3[data-v-540e17b0]{height:24px;width:24px}.load2[data-v-540e17b0]{-webkit-transform:rotate(30deg);transform:rotate(30deg)}.load3[data-v-540e17b0]{-webkit-transform:rotate(60deg);transform:rotate(60deg)}.load1 uni-view[data-v-540e17b0]:nth-child(1){-webkit-animation-delay:0s;animation-delay:0s}.load2 uni-view[data-v-540e17b0]:nth-child(1){-webkit-animation-delay:.13s;animation-delay:.13s}.load3 uni-view[data-v-540e17b0]:nth-child(1){-webkit-animation-delay:.26s;animation-delay:.26s}.load1 uni-view[data-v-540e17b0]:nth-child(2){-webkit-animation-delay:.39s;animation-delay:.39s}.load2 uni-view[data-v-540e17b0]:nth-child(2){-webkit-animation-delay:.52s;animation-delay:.52s}.load3 uni-view[data-v-540e17b0]:nth-child(2){-webkit-animation-delay:.65s;animation-delay:.65s}.load1 uni-view[data-v-540e17b0]:nth-child(3){-webkit-animation-delay:.78s;animation-delay:.78s}.load2 uni-view[data-v-540e17b0]:nth-child(3){-webkit-animation-delay:.91s;animation-delay:.91s}.load3 uni-view[data-v-540e17b0]:nth-child(3){-webkit-animation-delay:1.04s;animation-delay:1.04s}.load1 uni-view[data-v-540e17b0]:nth-child(4){-webkit-animation-delay:1.17s;animation-delay:1.17s}.load2 uni-view[data-v-540e17b0]:nth-child(4){-webkit-animation-delay:1.3s;animation-delay:1.3s}.load3 uni-view[data-v-540e17b0]:nth-child(4){-webkit-animation-delay:1.43s;animation-delay:1.43s}@-webkit-keyframes load-data-v-540e17b0{0%{opacity:1}100%{opacity:.2}}",""]),t.exports=a},"7da3":function(t,a,e){"use strict";e.r(a);var i=e("aea8"),n=e("a2ae");for(var o in n)"default"!==o&&function(t){e.d(a,t,(function(){return n[t]}))}(o);e("0570");var r,d=e("f0c5"),s=Object(d["a"])(n["default"],i["b"],i["c"],!1,null,"7ae00415",null,!1,i["a"],r);a["default"]=s.exports},"7f47":function(t,a,e){var i=e("b7d3");"string"===typeof i&&(i=[[t.i,i,""]]),i.locals&&(t.exports=i.locals);var n=e("4f06").default;n("41e85f4a",i,!0,{sourceMap:!1,shadowMode:!1})},"8a8a":function(t,a,e){"use strict";e.r(a);var i=e("be01"),n=e("4fb4");for(var o in n)"default"!==o&&function(t){e.d(a,t,(function(){return n[t]}))}(o);e("deb0");var r,d=e("f0c5"),s=Object(d["a"])(n["default"],i["b"],i["c"],!1,null,"540e17b0",null,!1,i["a"],r);a["default"]=s.exports},a2ae:function(t,a,e){"use strict";e.r(a);var i=e("3051"),n=e.n(i);for(var o in i)"default"!==o&&function(t){e.d(a,t,(function(){return i[t]}))}(o);a["default"]=n.a},aea8:function(t,a,e){"use strict";e.d(a,"b",(function(){return n})),e.d(a,"c",(function(){return o})),e.d(a,"a",(function(){return i}));var i={uniLoadMore:e("8a8a").default},n=function(){var t=this,a=t.$createElement,e=t._self._c||a;return e("v-uni-view",{staticClass:"content",staticStyle:{"background-color":"#efefef"}},[e("v-uni-view",{staticClass:"goods-list"},t._l(t.goodsList,(function(a,i){return e("v-uni-view",{key:i,staticClass:"goods-item"},[e("v-uni-view",{staticClass:"image-wrapper",on:{click:function(e){arguments[0]=e=t.$handleEvent(e),t.goshpping(a)}}},[e("v-uni-image",{attrs:{src:a.src,mode:"aspectFill"}})],1),e("v-uni-view",{staticStyle:{padding:"auto 2%"}},[e("v-uni-text",{staticClass:"title clamp",staticStyle:{"margin-top":"5px"}},[t._v(t._s(a.name))]),e("v-uni-view",{staticClass:"buttonsbox",staticStyle:{width:"100%"}},[e("v-uni-text",{staticClass:"buttons"},[t._v("proprietary")])],1),e("v-uni-view",{staticClass:"buttonsbox",staticStyle:{width:"100%"}},[e("v-uni-text",{staticClass:"buttons1"},[t._v("Special offer")])],1),e("v-uni-text",{staticClass:"price"},[t._v("￥"+t._s(a.price)),e("v-uni-text",{staticStyle:{color:"#ccc"}},[t._v("|")]),e("v-uni-text",{staticStyle:{color:"#ccc","font-size":"10px"}},[t._v("Unit price ￥56.3")])],1)],1)],1)})),1),e("uni-load-more",{attrs:{status:t.loadingType}})],1)},o=[]},b7d3:function(t,a,e){var i=e("24fb");a=i(!1),a.push([t.i,'@charset "UTF-8";\n/* 页面左右间距 */\n/* 文字尺寸 */\n/*文字颜色*/\n/* 边框颜色 */\n/* 图片加载中颜色 */\n/* 行为相关颜色 */uni-page-body[data-v-7ae00415], .content[data-v-7ae00415]{background:#f8f8f8}.content[data-v-7ae00415]{padding-top:%?16?%}.navbar[data-v-7ae00415]{position:fixed;left:0;top:var(--window-top);display:flex;width:100%;height:%?80?%;background:#fff;box-shadow:0 %?2?% %?10?% rgba(0,0,0,.06);z-index:10}.navbar .nav-item[data-v-7ae00415]{flex:1;display:flex;justify-content:center;align-items:center;height:100%;font-size:%?30?%;color:#303133;position:relative}.navbar .nav-item.current[data-v-7ae00415]{color:#fa436a}.navbar .nav-item.current[data-v-7ae00415]:after{content:"";position:absolute;left:50%;bottom:0;-webkit-transform:translateX(-50%);transform:translateX(-50%);width:%?120?%;height:0;border-bottom:%?4?% solid #fa436a}.navbar .p-box[data-v-7ae00415]{display:flex;flex-direction:column}.navbar .p-box .yticon[data-v-7ae00415]{display:flex;align-items:center;justify-content:center;width:%?30?%;height:%?14?%;line-height:1;margin-left:%?4?%;font-size:%?26?%;color:#888}.navbar .p-box .yticon.active[data-v-7ae00415]{color:#fa436a}.navbar .p-box .xia[data-v-7ae00415]{-webkit-transform:scaleY(-1);transform:scaleY(-1)}.navbar .cate-item[data-v-7ae00415]{display:flex;justify-content:center;align-items:center;height:100%;width:%?80?%;position:relative;font-size:%?44?%}.navbar .cate-item[data-v-7ae00415]:after{content:"";position:absolute;left:0;top:50%;-webkit-transform:translateY(-50%);transform:translateY(-50%);border-left:1px solid #ddd;width:0;height:%?36?%}\n/* 分类 */.cate-mask[data-v-7ae00415]{position:fixed;left:0;top:var(--window-top);bottom:0;width:100%;background:transparent;z-index:95;transition:.3s}.cate-mask .cate-content[data-v-7ae00415]{width:%?630?%;height:100%;background:#fff;float:right;-webkit-transform:translateX(100%);transform:translateX(100%);transition:.3s}.cate-mask.none[data-v-7ae00415]{display:none}.cate-mask.show[data-v-7ae00415]{background:rgba(0,0,0,.4)}.cate-mask.show .cate-content[data-v-7ae00415]{-webkit-transform:translateX(0);transform:translateX(0)}.cate-list[data-v-7ae00415]{display:flex;flex-direction:column;height:100%}.cate-list .cate-item[data-v-7ae00415]{display:flex;align-items:center;height:%?90?%;padding-left:%?30?%;font-size:%?28?%;color:#555;position:relative}.cate-list .two[data-v-7ae00415]{height:%?64?%;color:#303133;font-size:%?30?%;background:#f8f8f8}.cate-list .active[data-v-7ae00415]{color:#fa436a}\n/* 商品列表 */.goods-list[data-v-7ae00415]{display:flex;flex-wrap:wrap;padding:0 %?30?%}.goods-list .goods-item[data-v-7ae00415]{background:#fff;margin-top:20px;display:flex;flex-direction:column;width:48%;padding-bottom:%?40?%}.goods-list .goods-item[data-v-7ae00415]:nth-child(2n+1){margin-right:4%}.goods-list .image-wrapper[data-v-7ae00415]{width:100%;height:%?330?%;border-radius:3px;overflow:hidden}.goods-list .image-wrapper uni-image[data-v-7ae00415]{width:100%;height:100%;opacity:1}.goods-list .title[data-v-7ae00415]{padding:0 %?20?%;text-align:left;line-height:1.05rem;height:1.1rem;font-size:.7rem;font-family:-apple-system,Helvetica,sans-serif;overflow:hidden;color:#434343;-o-text-overflow:ellipsis;text-overflow:ellipsis;display:-webkit-box;-webkit-line-clamp:1;word-break:break-all;-webkit-box-orient:vertical}.goods-list .price[data-v-7ae00415]{padding:0 %?15?%;font-size:%?32?%;color:#fa436a;line-height:1}.buttonsbox[data-v-7ae00415]{padding:%?5?% %?15?%}.buttonsbox .buttons[data-v-7ae00415]{padding:0 %?15?% 1px;font-size:12px;color:#f05a28;border:1px solid #f05a28;border-radius:6px;line-height:1;margin-right:5px}.buttonsbox .buttons1[data-v-7ae00415]{margin-right:5px;padding:0 %?11?% 1px;font-size:10px;color:#fff;border:1px solid #f05a28;background-color:#f05a28;border-radius:6px;line-height:1}body.?%PAGE?%[data-v-7ae00415]{background:#f8f8f8}',""]),t.exports=a},be01:function(t,a,e){"use strict";var i;e.d(a,"b",(function(){return n})),e.d(a,"c",(function(){return o})),e.d(a,"a",(function(){return i}));var n=function(){var t=this,a=t.$createElement,e=t._self._c||a;return e("v-uni-view",{staticClass:"uni-load-more"},[e("v-uni-view",{directives:[{name:"show",rawName:"v-show",value:"loading"===t.status&&t.showIcon,expression:"status === 'loading' && showIcon"}],staticClass:"uni-load-more__img"},[e("v-uni-view",{staticClass:"load1"},[e("v-uni-view",{style:{background:t.color}}),e("v-uni-view",{style:{background:t.color}}),e("v-uni-view",{style:{background:t.color}}),e("v-uni-view",{style:{background:t.color}})],1),e("v-uni-view",{staticClass:"load2"},[e("v-uni-view",{style:{background:t.color}}),e("v-uni-view",{style:{background:t.color}}),e("v-uni-view",{style:{background:t.color}}),e("v-uni-view",{style:{background:t.color}})],1),e("v-uni-view",{staticClass:"load3"},[e("v-uni-view",{style:{background:t.color}}),e("v-uni-view",{style:{background:t.color}}),e("v-uni-view",{style:{background:t.color}}),e("v-uni-view",{style:{background:t.color}})],1)],1),e("v-uni-text",{staticClass:"uni-load-more__text",style:{color:t.color}},[t._v(t._s("more"===t.status?t.contentText.contentdown:"loading"===t.status?t.contentText.contentrefresh:t.contentText.contentnomore))])],1)},o=[]},c578:function(t,a,e){"use strict";Object.defineProperty(a,"__esModule",{value:!0}),a.default=void 0;var i={name:"uni-load-more",props:{status:{type:String,default:"more"},showIcon:{type:Boolean,default:!0},color:{type:String,default:"#777777"},contentText:{type:Object,default:function(){return{contentrefresh:"Loading ...",contentnomore:"Já é a última página "}}}},data:function(){return{}}};a.default=i},deb0:function(t,a,e){"use strict";var i=e("5079"),n=e.n(i);n.a}}]);