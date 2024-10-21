// 24. 09. 10

/*

// 함수 선언문 방법
function gugudan() {
    for (let i = 1; i <= 9; i++) {
        console.log(`3 * ${i} = ${3 * i}`);
    }
}

gugudan();

*/

// =================================================================

/*

// 함수 표현식 방법
const gugudan = function gugudan2() {
    for (let i = 1; i <= 9; i++) {
        console.log(`4 * ${i} = ${4 * i}`);
    }
}

const gugudan3 = function() {
    for (let i = 1; i <= 9; i++) {
        console.log(`5 * ${i} = ${5 * i}`);
    }
}

gugudan();
// gugudan2(); is not defined
gugudan3();

*/

// =================================================================

/*

// 화살표 함수 
const gugudan6 = () => {
    for (let i = 0; i <= 9; i++) {
        console.log ( `6 * ${i} = ${ 6 * i}`);
    }
};

gugudan6();


*/

// =================================================================

/*

// 매개변수와 인수
function gugudan (dan) {
    for ( let i = 1; i <= 9; i++) {
        console.log ( `${dan} * ${i} = ${dan * i}`);
    }
    console.log ("\n");
}

gugudan(3);
gugudan(5);
gugudan(8);

for (let dan = 0; dan <= 9; dan++) {
    
}


*/

// =================================================================

/*

// 데이터 전달
function sum ( p1, p2 ) {
    console.log (p1);
    console.log (p1+p2);
    console.log ("======12=======");
}

sum ( 10, 20 ); // 10 , 30
sum (10); // 10 , nan
sum (); // undefind , nan

function mulit() {
    console.log("----- multi -----");
}

mulit ( 30, 40 ); // 변수값이 없어 출력안됨

*/

// =================================================================

/*

// 기본값 할당
function sum ( p1 = 1, p2 = 2 ) {
    console.log (p1);
    console.log (p2);
    console.log (p1+p2);
    console.log ("=============");
}

sum ( 10, 20 );  // 10, 20, 30 출력
sum (10);   // 10 , 2 , 12 출력
sum ();  // 1, 2, 3 출력

*/

// =================================================================

/*

// return 문

function sum ( num1, num2 ) {
    let result = num1 + num2;
    console.log ( "inner : " + result );
    return result;
}

console.log ( "out : " + sum(10,20) );
var reSum = sum ( 10, 20 );
// console.log ( "out : " + result );
console.log ( "out : " + reSum );


function sum ( num1, num2 ) {
    return num1 + num2;
}

const result = sum ( 10,20 );
console.log("sum : " + result);

function sumNumber ( num1, num2 ) {
    if(typeof num1 !== "number" || typeof num2 !== "number") {
        return; // 매개변수가 숫자가 아니면 강제종료
    }
    return num1 + num2;
}
let result2 = sumNumber ( "a", "b" );
console.log("out : " + result2);
console.log("out : " + sumNumber ( 100, 200));

*/

// =================================================================

/*

// 코드에서 max 출력값이 배열 중 가장 큰 숫자가 될 수 있도록 getArrayNumber() 
// 함수를 완성하세요. 이때 배열 요소는 반드시 숫자형이라고 가정합니다.

function getArrayMaxNumber(arr) {
    let result = 0;
    for (let i = 0; i < arr.length; i++) {
        if ( result < arr[i] ) {
            result = arr[i];
        }
        
    }
    return result;
}
const max = getArrayMaxNumber ([50,10,30]);
console.log(max);
console.log(Math.min( null , max))

*/

// =================================================================

/*

// 함수 스코프

let a = 10;
let c = 100;

function sum() {
    let a = 0;
    let b = 0;
    console.log(`1함수 내부 A : ${a}`);
    a = 11;
    console.log(`2함수 내부 A : ${a}`);
    console.log(`3함수 내부 B : ${b}`);
    console.log(`3함수 내부 C : ${c}`);
    c = 1004;
}

sum();
console.log(`함수 외부 A : ${a}`);
console.log(`함수 외부 C : ${c}`);

*/

// =================================================================

/*

// 블록 스코프
// 중괄호안에 let , const 키워드로 선언한 변수에 한해서만 지역변수로 정의

let a = 10;
const c = 20;
var d = 100;
console.log(`1코드 블록 외부 a : ${a}`) // 10
console.log(`2코드 블록 외부 a : ${c}`) // 20
console.log(`3코드 블록 외부 a : ${d}`) // 100

{
    let b = 20;
    var e = 200;
    console.log(`4코드 블록 내부 a : ${a}` ); // 10
    console.log(`5코드 블록 내부 b : ${b}` ); // 20
    console.log(`6코드 블록 내부 b : ${c}` ); // 20
    console.log(`7코드 블록 내부 b : ${d}` ); // 100
    console.log(`8코드 블록 내부 b : ${e}` ); // 200
}

console.log(`9코드 블록 외부 a : ${a}` ); // 10
// console.log(`10코드 블록 외부 b : ${b}` ); // defind
console.log(`11코드 블록 외부 b : ${c}` ); // 20
console.log(`12코드 블록 외부 b : ${d}` ); // 100
console.log(`13코드 블록 외부 b : ${e}` ); // defind.. >> 200


let a = 10;
const b = 20;
console.log(`1함수 외부 a : ${a}`); // 10
console.log(`2함수 외부 b : ${b}`); // 20
function sum() {
        let a = 30;
        const b = 40;
        console.log(`3함수 내부 a : ${a}`); // 30
        console.log(`4함수 내부 b : ${b}`); // 40
}

sum();
console.log(`5함수 외부 a : ${a}`); // 10
console.log(`6함수 외부 b : ${b}`); // 20

{
        let a= 50;
        const b = 60;
        console.log(`7블록 내부 a : ${a}`); // 50
        console.log(`8블록 내부 b : ${b}`); // 60
}

console.log(`9함수 외부 a : ${a}`); // 10
console.log(`10함수 외부 b : ${b}`); // 20

*/

// =================================================================

/*

// 함수 호이스팅

console.log(num); // undefined
var num = 10;

// printHello();
// function printHello() {
//     console.log("Hello")
// };



printHello();
var printHello =  function printHello() {
    console.log("Hello")
}; // 안됨



var text = "outside";
function printScope() {
    console.log(text);
    var text = "inside";
};
printScope(); // undefined
console.log(text);



var text = "1outside";
let ltext = "2outside";
console.log(`1전역변수 text : ${text}`);
console.log(`2전역변수 text : ${ltext}`);

{
    // let, const
    // var text = "3block-inside";
    // let ltext = "4block-inside";
    // console.log(`3블록 스코프 지역변수 text : ${text}`);
    // console.log(`4블록 스코프 지역변수 ltext : ${ltext}`);

    // console.log(`5블록 스코프 지역변수 text : ${text}`);
    // console.log(`6블록 스코프 지역변수 ltext : ${ltext}`);
    // var text = "5block-inside";
    // let ltext = "6block-inside";
}

console.log(`7전역변수 text : ${text}`);
console.log(`8전역변수 text : ${ltext}`);

function printScope(){
    console.log(`9전역변수 text : ${text}`)
    console.log(`10전역변수 ltext : ${ltext}`)
    var text = "11inside";
    let ltext = "12inside";

    // var text = "13inside";
    // var ltext = "14inside";
    // console.log(`15전역변수 text : ${text}`);
    // console.log(`16전역변수 ltext : ${ltext}`);
};
printScope();


console.log(`17전역변수 text : ${text}`);
console.log(`18전역변수 text : ${ltext}`);

*/

// =================================================================

/*

// 즉시실행 함수
//(function () {}) {};


// 셀프체크
//원의 넓이를 구하는 공식은 (반지름) x (반지름) x (원주율)입니다. 원주율은 3.14라고
//했을 때, 원의 반지름을 이용해 원의 넓이를 반환하는 함수를 만들어주세요

let text = 5;

const one = () => {
    console.log( text )
    console.log( text * text * 3.14 )
};
one();


*/

// 11장 자바스크립트 객체 다루기 ========================================

/*

const person = {
    name : "Hong Gildong",
    age : 20
};
console.log(person["name"]); // Hong Gildong
console.log(person['age']); // 20
// console.log(person[name]); // defined



const person = {
    name : { 
        firstName : "JungGyu",
        lastName : "Lee"
    },
    likes : ["dog" , "cut"],
    printHello : function () {
        return "hello";
    }
};

// 대괄호 연산자로 접근하기
console.log(person["name"]); 
console.log(person['likes']); 
console.log(person["printHello"]); 
console.log("----------------------------------------")
console.log(person["name"]["firstName"]); 
console.log(person["name"]["lastName"]); 
console.log(person["likes"][0]); 
console.log(person["likes"][1]); 
console.log(person["printHello"]()); 


*/

// ==========================================================

/*

// 마침표 연산자로 접근하기

console.log(person.name); 
console.log(person.likes); 
console.log(person.printHello); 
console.log("----------------------------------------")
console.log(person.name.firstName); 
console.log(person.name.lastName); 
console.log(person.likes[0]); 
console.log(person.likes[1]); 
console.log(person.printHello()); 

*/
