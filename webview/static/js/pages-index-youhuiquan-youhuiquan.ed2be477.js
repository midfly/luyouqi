(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["pages-index-youhuiquan-youhuiquan"],{"0b03":function(t,e,a){"use strict";var o=a("4ea4");a("99af"),a("d81d"),Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0,a("96cf");var i=o(a("1da1")),n=o(a("8a8a")),r={components:{uniLoadMore:n.default},data:function(){return{total:0,cateMaskState:0,headerPosition:"fixed",headerTop:"0px",loadingType:"more",filterIndex:0,cateId:0,priceOrder:0,cateList:[],page:1,goodsList:[]}},onLoad:function(t){this.headerTop=document.getElementsByTagName("uni-page-head")[0].offsetHeight+"px",this.cateId=t.tid,this.loadData()},onPageScroll:function(t){t.scrollTop>=0?this.headerPosition="fixed":this.headerPosition="absolute"},onPullDownRefresh:function(){this.loadData("refresh")},onReachBottom:function(){"more"==this.loadingType&&(this.page=this.page+1),this.loadData()},methods:{loadData:function(){var t=arguments,e=this;return(0,i.default)(regeneratorRuntime.mark((function a(){var o,i,n,r,d;return regeneratorRuntime.wrap((function(a){while(1)switch(a.prev=a.next){case 0:if(o=t.length>0&&void 0!==t[0]?t[0]:"add",i=t.length>1?t[1]:void 0,n=e,"add"!==o){a.next=9;break}if("nomore"!==e.loadingType){a.next=6;break}return a.abrupt("return");case 6:e.loadingType="loading",a.next=10;break;case 9:e.loadingType="more";case 10:return a.next=12,e.$apis.getyouhqs({page:n.page});case 12:r=a.sent,console.log(r),d=r.list,n.total=r.total,"refresh"===o&&(e.goodsList=[]),d=d.map((function(t){var e=t;return e})),e.goodsList=e.goodsList.concat(d),10==d.length?e.loadingType=e.goodsList.length>n.total?"nomore":"more":e.loadingType="nomore","refresh"===o&&(1==i?uni.hideLoading():uni.stopPullDownRefresh());case 21:case"end":return a.stop()}}),a)})))()},navToDetailPage:function(t){var e=t.title;uni.navigateTo({url:"/pages/product/product?id=".concat(e)})},stopPrevent:function(){}}};e.default=r},"1ee0":function(t,e,a){"use strict";a.r(e);var o=a("2738"),i=a("936f");for(var n in i)"default"!==n&&function(t){a.d(e,t,(function(){return i[t]}))}(n);a("87d2");var r,d=a("f0c5"),s=Object(d["a"])(i["default"],o["b"],o["c"],!1,null,"4a3d309c",null,!1,o["a"],r);e["default"]=s.exports},2738:function(t,e,a){"use strict";a.d(e,"b",(function(){return i})),a.d(e,"c",(function(){return n})),a.d(e,"a",(function(){return o}));var o={nxCoupon:a("5def").default,uniLoadMore:a("8a8a").default},i=function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("v-uni-view",{staticClass:"content"},[a("v-uni-view",{staticStyle:{"padding-bottom":"10px","margin-right":"2%","margin-top":"5px",width:"96%","padding-left":"2%"}},t._l(t.goodsList,(function(e,o){return a("nx-coupon",{key:o,attrs:{status:t.current,item:e},on:{showrule:function(e){arguments[0]=e=t.$handleEvent(e),t.showrule.apply(void 0,arguments)}}})})),1),a("uni-load-more",{attrs:{status:t.loadingType}})],1)},n=[]},"4fb4":function(t,e,a){"use strict";a.r(e);var o=a("c578"),i=a.n(o);for(var n in o)"default"!==n&&function(t){a.d(e,t,(function(){return o[t]}))}(n);e["default"]=i.a},5079:function(t,e,a){var o=a("5276");"string"===typeof o&&(o=[[t.i,o,""]]),o.locals&&(t.exports=o.locals);var i=a("4f06").default;i("ec8c1e06",o,!0,{sourceMap:!1,shadowMode:!1})},5276:function(t,e,a){var o=a("24fb");e=o(!1),e.push([t.i,".uni-load-more[data-v-540e17b0]{display:flex;flex-direction:row;height:%?80?%;align-items:center;justify-content:center}.uni-load-more__text[data-v-540e17b0]{font-size:%?28?%;color:#999}.uni-load-more__img[data-v-540e17b0]{height:24px;width:24px;margin-right:10px}.uni-load-more__img>uni-view[data-v-540e17b0]{position:absolute}.uni-load-more__img>uni-view uni-view[data-v-540e17b0]{width:6px;height:2px;border-top-left-radius:1px;border-bottom-left-radius:1px;background:#999;position:absolute;opacity:.2;-webkit-transform-origin:50%;transform-origin:50%;-webkit-animation:load-data-v-540e17b0 1.56s ease infinite;animation:load-data-v-540e17b0 1.56s ease infinite}.uni-load-more__img>uni-view uni-view[data-v-540e17b0]:nth-child(1){-webkit-transform:rotate(90deg);transform:rotate(90deg);top:2px;left:9px}.uni-load-more__img>uni-view uni-view[data-v-540e17b0]:nth-child(2){-webkit-transform:rotate(180deg);transform:rotate(180deg);top:11px;right:0}.uni-load-more__img>uni-view uni-view[data-v-540e17b0]:nth-child(3){-webkit-transform:rotate(270deg);transform:rotate(270deg);bottom:2px;left:9px}.uni-load-more__img>uni-view uni-view[data-v-540e17b0]:nth-child(4){top:11px;left:0}.load1[data-v-540e17b0],\n.load2[data-v-540e17b0],\n.load3[data-v-540e17b0]{height:24px;width:24px}.load2[data-v-540e17b0]{-webkit-transform:rotate(30deg);transform:rotate(30deg)}.load3[data-v-540e17b0]{-webkit-transform:rotate(60deg);transform:rotate(60deg)}.load1 uni-view[data-v-540e17b0]:nth-child(1){-webkit-animation-delay:0s;animation-delay:0s}.load2 uni-view[data-v-540e17b0]:nth-child(1){-webkit-animation-delay:.13s;animation-delay:.13s}.load3 uni-view[data-v-540e17b0]:nth-child(1){-webkit-animation-delay:.26s;animation-delay:.26s}.load1 uni-view[data-v-540e17b0]:nth-child(2){-webkit-animation-delay:.39s;animation-delay:.39s}.load2 uni-view[data-v-540e17b0]:nth-child(2){-webkit-animation-delay:.52s;animation-delay:.52s}.load3 uni-view[data-v-540e17b0]:nth-child(2){-webkit-animation-delay:.65s;animation-delay:.65s}.load1 uni-view[data-v-540e17b0]:nth-child(3){-webkit-animation-delay:.78s;animation-delay:.78s}.load2 uni-view[data-v-540e17b0]:nth-child(3){-webkit-animation-delay:.91s;animation-delay:.91s}.load3 uni-view[data-v-540e17b0]:nth-child(3){-webkit-animation-delay:1.04s;animation-delay:1.04s}.load1 uni-view[data-v-540e17b0]:nth-child(4){-webkit-animation-delay:1.17s;animation-delay:1.17s}.load2 uni-view[data-v-540e17b0]:nth-child(4){-webkit-animation-delay:1.3s;animation-delay:1.3s}.load3 uni-view[data-v-540e17b0]:nth-child(4){-webkit-animation-delay:1.43s;animation-delay:1.43s}@-webkit-keyframes load-data-v-540e17b0{0%{opacity:1}100%{opacity:.2}}",""]),t.exports=e},5869:function(t,e,a){var o=a("24fb");e=o(!1),e.push([t.i,'@charset "UTF-8";\n/* 页面左右间距 */\n/* 文字尺寸 */\n/*文字颜色*/\n/* 边框颜色 */\n/* 图片加载中颜色 */\n/* 行为相关颜色 */uni-page-body[data-v-4a3d309c], .content[data-v-4a3d309c]{background:#f8f8f8}.content[data-v-4a3d309c]{padding-top:%?16?%}.navbar[data-v-4a3d309c]{position:fixed;left:0;top:var(--window-top);display:flex;width:100%;height:%?80?%;background:#fff;box-shadow:0 %?2?% %?10?% rgba(0,0,0,.06);z-index:10}.navbar .nav-item[data-v-4a3d309c]{flex:1;display:flex;justify-content:center;align-items:center;height:100%;font-size:%?30?%;color:#303133;position:relative}.navbar .nav-item.current[data-v-4a3d309c]{color:#fa436a}.navbar .nav-item.current[data-v-4a3d309c]:after{content:"";position:absolute;left:50%;bottom:0;-webkit-transform:translateX(-50%);transform:translateX(-50%);width:%?120?%;height:0;border-bottom:%?4?% solid #fa436a}.navbar .p-box[data-v-4a3d309c]{display:flex;flex-direction:column}.navbar .p-box .yticon[data-v-4a3d309c]{display:flex;align-items:center;justify-content:center;width:%?30?%;height:%?14?%;line-height:1;margin-left:%?4?%;font-size:%?26?%;color:#888}.navbar .p-box .yticon.active[data-v-4a3d309c]{color:#fa436a}.navbar .p-box .xia[data-v-4a3d309c]{-webkit-transform:scaleY(-1);transform:scaleY(-1)}.navbar .cate-item[data-v-4a3d309c]{display:flex;justify-content:center;align-items:center;height:100%;width:%?80?%;position:relative;font-size:%?44?%}.navbar .cate-item[data-v-4a3d309c]:after{content:"";position:absolute;left:0;top:50%;-webkit-transform:translateY(-50%);transform:translateY(-50%);border-left:1px solid #ddd;width:0;height:%?36?%}\n/* 分类 */.cate-mask[data-v-4a3d309c]{position:fixed;left:0;top:var(--window-top);bottom:0;width:100%;background:transparent;z-index:95;transition:.3s}.cate-mask .cate-content[data-v-4a3d309c]{width:%?630?%;height:100%;background:#fff;float:right;-webkit-transform:translateX(100%);transform:translateX(100%);transition:.3s}.cate-mask.none[data-v-4a3d309c]{display:none}.cate-mask.show[data-v-4a3d309c]{background:rgba(0,0,0,.4)}.cate-mask.show .cate-content[data-v-4a3d309c]{-webkit-transform:translateX(0);transform:translateX(0)}.cate-list[data-v-4a3d309c]{display:flex;flex-direction:column;height:100%}.cate-list .cate-item[data-v-4a3d309c]{display:flex;align-items:center;height:%?90?%;padding-left:%?30?%;font-size:%?28?%;color:#555;position:relative}.cate-list .two[data-v-4a3d309c]{height:%?64?%;color:#303133;font-size:%?30?%;background:#f8f8f8}.cate-list .active[data-v-4a3d309c]{color:#fa436a}\n/* 商品列表 */.goods-list[data-v-4a3d309c]{display:flex;flex-wrap:wrap;padding:0 %?30?%;background:#fff}.goods-list .goods-item[data-v-4a3d309c]{display:flex;flex-direction:column;width:48%;padding-bottom:%?40?%}.goods-list .goods-item[data-v-4a3d309c]:nth-child(2n+1){margin-right:4%}.goods-list .image-wrapper[data-v-4a3d309c]{width:100%;height:%?330?%;border-radius:3px;overflow:hidden}.goods-list .image-wrapper uni-image[data-v-4a3d309c]{width:100%;height:100%;opacity:1}.goods-list .title[data-v-4a3d309c]{font-size:%?32?%;color:#303133;line-height:%?80?%}.goods-list .price-box[data-v-4a3d309c]{display:flex;align-items:center;justify-content:space-between;padding-right:%?10?%;font-size:%?24?%;color:#909399}.goods-list .price[data-v-4a3d309c]{font-size:%?32?%;color:#fa436a;line-height:1}.goods-list .price[data-v-4a3d309c]:before{content:"";font-size:%?26?%}body.?%PAGE?%[data-v-4a3d309c]{background:#f8f8f8}',""]),t.exports=e},"5def":function(t,e,a){"use strict";a.r(e);var o=a("b913"),i=a("e123");for(var n in i)"default"!==n&&function(t){a.d(e,t,(function(){return i[t]}))}(n);a("ca96");var r,d=a("f0c5"),s=Object(d["a"])(i["default"],o["b"],o["c"],!1,null,"6640388f",null,!1,o["a"],r);e["default"]=s.exports},"5e8d":function(t,e,a){"use strict";a("a9e3"),Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;var o={components:{},data:function(){return{unSelectStr:"/static/images/un-select.png",selectStr:"/static/images/select.png",ruleShow:!1}},props:{isShowCheck:{type:Boolean,default:!1},status:{type:Number,default:0},index:{type:Number,default:0},item:{type:Object}},filters:{formatStatus:function(t){var e={0:"新客注册",1:"消费返券",2:"优惠活动"};return e[t]}},methods:{ruleShowOrClose:function(){this.$emit("showrule",this.item)},gotoShop:function(t){console.log(t),this.$apis.getmyyouhui({token:uni.getStorageSync("token"),id:t})},selectCoupon:function(){var t=this;t.isShowCheck&&t.$bus.$emit("couponChecked",t.index)}}};e.default=o},"87d2":function(t,e,a){"use strict";var o=a("8915"),i=a.n(o);i.a},8915:function(t,e,a){var o=a("5869");"string"===typeof o&&(o=[[t.i,o,""]]),o.locals&&(t.exports=o.locals);var i=a("4f06").default;i("85e41868",o,!0,{sourceMap:!1,shadowMode:!1})},"8a8a":function(t,e,a){"use strict";a.r(e);var o=a("be01"),i=a("4fb4");for(var n in i)"default"!==n&&function(t){a.d(e,t,(function(){return i[t]}))}(n);a("deb0");var r,d=a("f0c5"),s=Object(d["a"])(i["default"],o["b"],o["c"],!1,null,"540e17b0",null,!1,o["a"],r);e["default"]=s.exports},"936f":function(t,e,a){"use strict";a.r(e);var o=a("0b03"),i=a.n(o);for(var n in o)"default"!==n&&function(t){a.d(e,t,(function(){return o[t]}))}(n);e["default"]=i.a},b913:function(t,e,a){"use strict";var o;a.d(e,"b",(function(){return i})),a.d(e,"c",(function(){return n})),a.d(e,"a",(function(){return o}));var i=function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("v-uni-view",[a("v-uni-view",{staticClass:"coupon-item x-bc"},[a("v-uni-view",{staticClass:"coupon-money",class:[{graybg:1==t.status||2==t.status}]},[a("v-uni-view",{staticClass:"layof"},[a("v-uni-text",{staticStyle:{"font-size":"16px"}}),a("v-uni-text",{staticStyle:{"font-size":"28px"}},[t._v(t._s(t.item.discountsMaxAmount))])],1),a("v-uni-view",{staticClass:"demand"},[t._v("Sem limiar de montante")])],1),a("v-uni-view",{staticClass:"coupon-detail",class:[{graybgRight:1==t.status||2==t.status}]},[a("v-uni-view",{staticStyle:{"margin-bottom":"12rpx"}},[a("v-uni-text",{class:[{graybg:1==t.status||2==t.status}],staticStyle:{"margin-right":"4px",background:"linear-gradient(132deg, #f05a28 0%, #f05a28 100%)",color:"#fff",float:"left","border-radius":"4px","font-size":"12px",padding:"2px 6px"}},[t._v("Cupom")]),a("v-uni-text",{staticClass:"coupon-title",staticStyle:{"font-size":"12px",color:"#333333","line-height":"18px"}},[t._v(t._s(t.item.name))])],1),a("v-uni-view",{staticClass:"x-bc",staticStyle:{margin:"0 20rpx 12rpx 0"}},[a("v-uni-text",{staticStyle:{"font-size":"10px",color:"#666666"}},[t._v(t._s(t.item.exchangeStartDate)+"-"+t._s(t.item.exchangeEndDate))]),a("v-uni-view",{staticStyle:{width:"100%"}},[a("v-uni-view",{staticStyle:{"margin-top":"4px","font-size":"14px","padding-left":"10px","padding-right":"10px",height:"20px",float:"right","background-color":"#f05a28",color:"#fff","text-align":"center","border-radius":"12px"},on:{click:function(e){e.stopPropagation(),arguments[0]=e=t.$handleEvent(e),t.gotoShop(t.item.id)}}},[t._v("Obter agora")])],1)],1),a("v-uni-view",{staticStyle:{"margin-bottom":"12rpx",color:"#999999","font-size":"12px","text-decoration":"underline"},on:{click:function(e){e.stopPropagation(),arguments[0]=e=t.$handleEvent(e),t.ruleShowOrClose()}}},[t._v(t._s(t.item.desc))]),t.isShowCheck&&t.item.bottomTip?a("v-uni-view",{staticStyle:{"margin-bottom":"12rpx",color:"#C0191F","font-size":"12px"}},[t._v("此券暂不可和已勾选券叠加使用")]):t._e()],1),1==t.status||2==t.status?a("v-uni-view",{staticClass:"seal",staticStyle:{position:"absolute",right:"10rpx",bottom:"10rpx"}},[a("v-uni-view",{staticClass:"seal-son"},[a("span",{staticStyle:{position:"absolute",top:"40rpx","text-align":"center","font-size":"35rpx",transform:"rotate(-12deg)",left:"8rpx",color:"#D2D2D2","font-weight":"900"}},[t._v(t._s(1==t.status?"已使用":"已失效"))])])],1):t._e()],1)],1)},n=[]},be01:function(t,e,a){"use strict";var o;a.d(e,"b",(function(){return i})),a.d(e,"c",(function(){return n})),a.d(e,"a",(function(){return o}));var i=function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("v-uni-view",{staticClass:"uni-load-more"},[a("v-uni-view",{directives:[{name:"show",rawName:"v-show",value:"loading"===t.status&&t.showIcon,expression:"status === 'loading' && showIcon"}],staticClass:"uni-load-more__img"},[a("v-uni-view",{staticClass:"load1"},[a("v-uni-view",{style:{background:t.color}}),a("v-uni-view",{style:{background:t.color}}),a("v-uni-view",{style:{background:t.color}}),a("v-uni-view",{style:{background:t.color}})],1),a("v-uni-view",{staticClass:"load2"},[a("v-uni-view",{style:{background:t.color}}),a("v-uni-view",{style:{background:t.color}}),a("v-uni-view",{style:{background:t.color}}),a("v-uni-view",{style:{background:t.color}})],1),a("v-uni-view",{staticClass:"load3"},[a("v-uni-view",{style:{background:t.color}}),a("v-uni-view",{style:{background:t.color}}),a("v-uni-view",{style:{background:t.color}}),a("v-uni-view",{style:{background:t.color}})],1)],1),a("v-uni-text",{staticClass:"uni-load-more__text",style:{color:t.color}},[t._v(t._s("more"===t.status?t.contentText.contentdown:"loading"===t.status?t.contentText.contentrefresh:t.contentText.contentnomore))])],1)},n=[]},c18e:function(t,e,a){var o=a("24fb");e=o(!1),e.push([t.i,'@charset "UTF-8";\n/* 页面左右间距 */\n/* 文字尺寸 */\n/*文字颜色*/\n/* 边框颜色 */\n/* 图片加载中颜色 */\n/* 行为相关颜色 */.selectimg[data-v-6640388f]{width:%?40?%;height:%?40?%}.graybgRight[data-v-6640388f]{background-color:#f5f4f5}.graybg[data-v-6640388f]{background:linear-gradient(132deg,#d2d2d2,#d2d2d2)!important}.coupon-item[data-v-6640388f]{width:100%;height:110px;border-radius:%?10?%;margin-top:%?22?%;border:1px solid #fff;position:relative;background-color:#fff}.coupon-item .coupon-money[data-v-6640388f]{float:left;border-top-left-radius:4px;border-bottom-left-radius:4px;display:flex;justify-content:center;flex-direction:column;text-align:center;width:%?292?%;height:100%;border-style:none dotted none none;border-color:#eee;background:linear-gradient(132deg,#f05a28,#f05a28)}.coupon-item .coupon-money .layof[data-v-6640388f]{float:left;width:100%;font-weight:400;color:#fff;margin-bottom:6px}.coupon-item .coupon-money .demand[data-v-6640388f]{font-size:10px;color:#fff}.coupon-item .box-con[data-v-6640388f]{width:85px;height:88px;overflow:hidden;position:absolute;top:-3px;right:-3px}.coupon-item .box-con .box-text[data-v-6640388f]{font-size:12px;color:#fff;text-align:center;-webkit-transform:rotate(45deg);-moz-transform:rotate(45deg);-ms-transform:rotate(45deg);-o-transform:rotate(45deg);position:relative;padding:2px 0;left:37px;top:4px;width:65px;background-color:#ee2626;background-image:-webkit-gradient(linear,left top,left bottom,from(#ff503e),to(#ff2f50));background-image:-webkit-linear-gradient(top,#ff503e,#ff2f50);background-image:-moz-linear-gradient(top,#ff503e,#ff2f50);background-image:-ms-linear-gradient(top,#ff503e,#ff2f50);background-image:-o-linear-gradient(top,#ff503e,#ff2f50);-webkit-box-shadow:0 0 3px #ff1b40;-moz-box-shadow:0 0 3px #ff1b40;box-shadow:0 0 3px #ff1b40}.coupon-item .box-con .box-text[data-v-6640388f]:before,\n.coupon-item .box-con .box-text[data-v-6640388f] :after{content:"";position:absolute;bottom:-3px}.coupon-item .box-con .box-text[data-v-6640388f]:before{left:0}.coupon-item .box-con .box-text[data-v-6640388f]:after{right:0}.coupon-detail[data-v-6640388f]{display:flex;flex:1;justify-content:center;flex-direction:column;text-align:left;padding-left:20px;height:100%}.coupon-detail .coupon-title[data-v-6640388f]{width:"";display:-webkit-box;-webkit-box-orient:vertical;-webkit-line-clamp:2;overflow:hidden}.seal[data-v-6640388f]{width:%?140?%;height:%?140?%;border:solid %?6?% #d2d2d2;border-radius:100%;background-color:#f5f4f5;position:relative;display:flex;justify-content:center;align-items:center}.seal-son[data-v-6640388f]{width:%?125?%;height:%?125?%;border:solid %?2?% #d2d2d2;border-radius:100%;background-color:#f5f4f5;position:relative}',""]),t.exports=e},c578:function(t,e,a){"use strict";Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;var o={name:"uni-load-more",props:{status:{type:String,default:"more"},showIcon:{type:Boolean,default:!0},color:{type:String,default:"#777777"},contentText:{type:Object,default:function(){return{contentrefresh:"Loading ...",contentnomore:"Já é a última página "}}}},data:function(){return{}}};e.default=o},ca96:function(t,e,a){"use strict";var o=a("dba9"),i=a.n(o);i.a},dba9:function(t,e,a){var o=a("c18e");"string"===typeof o&&(o=[[t.i,o,""]]),o.locals&&(t.exports=o.locals);var i=a("4f06").default;i("72f189f8",o,!0,{sourceMap:!1,shadowMode:!1})},deb0:function(t,e,a){"use strict";var o=a("5079"),i=a.n(o);i.a},e123:function(t,e,a){"use strict";a.r(e);var o=a("5e8d"),i=a.n(o);for(var n in o)"default"!==n&&function(t){a.d(e,t,(function(){return o[t]}))}(n);e["default"]=i.a}}]);