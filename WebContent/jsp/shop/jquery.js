/**
 *  jquery 라이브러리 기능 구현해 보기...
 *  
 *  $()
 *  html(), text(), val(), css(), attr(), $(태그), $(엘리먼트), $(함수),
 *  on(), click(), mousemove(), append(), remove()
 */
function mlec(val) {
    // console.log("val", val);
    // console.log("val.charAt(0)", val.charAt(0));
    // console.log(val.substring(1, val.length - 1));

    // val이 function 이라면 window.onload에 callback 등록해야 한다.
    if ( typeof (val) == "function" ) {
        window.onload = val;
        return ;
    }

    var elements = [];

    // val이 html 엘리먼트인지 확인한다.
    if (val instanceof HTMLElement) {
        elements[0] = val;
    }
    else {
        switch (val.charAt(0)) {
            case "<":
                elements[0] = document.createElement(val.substring(1, val.length - 1));
                break;
            // case "#":
            //     elements[0] = document.querySelector(val);
            //     break;
            default:
                for (let el of document.querySelectorAll(val)) {
                    elements.push(el);
                }
        }
    }

    // innerHTML 기능을 처리하는 html 함수 추가하기
    elements.html = function (html) {
        // html 매개변수에 값이 들어온 경우는 엘리먼트에 html 설정
        if (html != undefined) {
            // alert(html);
            for (let el of this) {
                el.innerHTML = html;
            }
            return this;
        }
        // html 매개변수에 값이 없는 경우는 html 값을 넘겨준다.
        return this[0].innerHTML;
    };

    elements.text = function (text) {
        // text 매개변수에 값이 들어온 경우는 엘리먼트에 innerText 설정
        if (text != undefined) {
            for (let el of this) {
                el.innerText = text;
            }
            return this;
        }
        // text 매개변수에 값이 없는 경우는 innerText 값을 넘겨준다.
        var result = "";
        for (let el of this) {
            result += el.innerText + "\n";
        }
        return result;
    };

    elements.val = function (val) {
        if (val != undefined) {
            for (let el of this) {
                el.value = val;
            }
            return this;
        }
        return this[0].value;
    };    

    elements.attr = function (name, value) {
        // 매개변수 name에 들어온 값이 object 라면 설정의 개념이다.
        if ( typeof (name) == "object" ) {
            for (let el of this) {
                for (let key in name) {
                    el.setAttribute(key, name[key]);
                }
            }                
            return this;
        }
        // 속성 설정하기
        if (value != undefined) {
            for (let el of this) {
                el.setAttribute(name, value);
            }
            return this;
        }
        return this[0].getAttribute(name);
    };

    elements.css = function (name, value) {
        // 매개변수 name에 들어온 값이 object 라면 설정의 개념이다.
        if ( typeof (name) == "object" ) {
            for (let el of this) {
                for (let key in name) {
                    el.style[key] = name[key];
                }
            }                
            return this;
        }
        // 속성 설정하기
        if (value != undefined) {
            for (let el of this) {
                el.style[name] = value;
            }
            return this;
        }
        return this[0].style[name];
    };

    elements.append = function (childs) {
        for (let el of this) {
            for (let child of childs) {
                el.appendChild(child.cloneNode(true));
            }
        }
    };

    elements.remove = function () {
        for (let el of this) {
            el.remove();
        }
    };

    elements.prop = function (name, value) {
        if (value != undefined) {
            for (let el of this) {
                el[name] = value;
            }
            return true;
        }
        return this[0][name];
    };

    elements.on = function (eventType, callback) {
        for (let el of this) {
            el.addEventListener(eventType, callback);
        }
        return this;
    };

    elements.click = function ( callback ) {
        return this.on("click", callback);        
    };

    elements.mousemove = function ( callback ) {
        return this.on("mousemove", callback);
    };

    return elements;
}

var $ = mlec;