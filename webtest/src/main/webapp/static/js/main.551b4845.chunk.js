(this.webpackJsonpbasic=this.webpackJsonpbasic||[]).push([[0],{12:function(e,t,n){},13:function(e,t,n){"use strict";n.r(t);var a=n(0),o=n.n(a),i=n(2),c=n.n(i),r=(n(12),n(3)),s=n(4),l=n(6),u=n(5),h=function(e){Object(l.a)(n,e);var t=Object(u.a)(n);function n(){var e;Object(r.a)(this,n);for(var a=arguments.length,i=new Array(a),c=0;c<a;c++)i[c]=arguments[c];return(e=t.call.apply(t,[this].concat(i))).state={index:0,msgs:[]},e.handleKeyUp=function(t){if(console.log(t.keyCode),console.log(t.target.value),13==t.keyCode){var n=o.a.createElement("li",{key:e.state.index},t.target.value);e.setState({index:e.state.index+1});var a=e.state.msgs.concat(n);e.setState({msgs:a})}},e.handleClick=function(){var t=e.inputText.value,n=o.a.createElement("li",{key:e.state.index},t);e.setState({index:e.state.index+1});var a=e.state.msgs.concat(n);e.setState({msgs:a})},e}return Object(s.a)(n,[{key:"render",value:function(){var e=this;return o.a.createElement("div",null,o.a.createElement("h1",null,"\ubaa9\ub85d \ucd9c\ub825 \uc608\uc81c \uc785\ub2c8\ub2e4."),o.a.createElement("input",{ref:function(t){e.inputText=t},type:"text",onKeyUp:this.handleKeyUp}),o.a.createElement("input",{type:"text",onKeyUp:this.handleKeyUp}),o.a.createElement("input",{type:"text",onKeyUp:this.handleKeyUp}),o.a.createElement("button",{onClick:this.handleClick},"\uc804\uc1a1"),o.a.createElement("ul",null,this.state.msgs))}}]),n}(a.Component);Boolean("localhost"===window.location.hostname||"[::1]"===window.location.hostname||window.location.hostname.match(/^127(?:\.(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)){3}$/));c.a.render(o.a.createElement(o.a.StrictMode,null,o.a.createElement(h,null)),document.getElementById("root")),"serviceWorker"in navigator&&navigator.serviceWorker.ready.then((function(e){e.unregister()})).catch((function(e){console.error(e.message)}))},7:function(e,t,n){e.exports=n(13)}},[[7,1,2]]]);
//# sourceMappingURL=main.551b4845.chunk.js.map