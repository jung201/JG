// 변수 score를 선언해서 데이터 10을 할당하는 코드
var score = 10;
console.log(score);

console.log('__________________________________________');

// 문자열
let string1 = "Hello, World1";
let string2 = 'Hello, World1';
console.log(string1);
console.log(string2);

console.log('__________________________________________');

// 문자열에 '" 둘다 있는 경우
let string3 = "Harry Potter's Book";
let string4 = '"을 사용하고 싶습니다';
let string5 = "Harry Potter's Book" + '"을 사용하고 싶습니다';
console.log(string3);
console.log(string4);
console.log(string5);

console.log('__________________________________________');

let string6 = 'Harry Potter\'s Book';
let string7 = "\"을 사용하고 싶습니다";
let string8 = "Harry Potter\'s Book\"을 사용하고 싶습니다";
console.log(string6);
console.log(string7);
console.log(string8);

console.log('__________________________________________');

let string9 = `문자열은 큰따옴표(")나
작은따옴표(')로 감싸면 됩니다.`;
console.log(string9);

console.log('__________________________________________');

let dan = 3;
let gugu = 8;

let string10 = `${dan}곱하기 ${gugu}은 ${dan * gugu}입니다.`;
console.log(string10);
let string11 = dan + "곱하기 " + gugu + "은 " + dan * gugu + "입니다.";
console.log(string11);

console.log('__________________________________________');

let num1 = 10;
let num2 = 0.1;
console.log(num1);
console.log(num2);

console.log('__________________________________________');

let boolean1 = true;
let boolean2 = false;
console.log(boolean1);
console.log(boolean2);

let boolean3 = 10 < 20;
let boolean4 = 10 > 20;
console.log(boolean3);
console.log(boolean4);

console.log('__________________________________________');

let empty;
console.log(empty);

let empty2 = null;
console.log(empty2); // null

console.log('__________________________________________');


let x = 10;
console.log(x);
x += 5;
console.log(x);

let y = 10;
console.log(y);
y -= 5;
console.log(y);

let z = 10;
console.log(z);
z *= 5;
console.log(z);

let u = 10;
console.log(u);
u /= 5;
console.log(u);

let v = 10;
console.log(v);
v %= 3;
console.log(v);

let t = 10;
console.log(t);
t **= 2;
console.log(t);
