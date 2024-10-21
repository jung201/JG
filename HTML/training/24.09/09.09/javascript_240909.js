// 24.09.09 실습


// 문자열 출력
let string1 = "Hello, World!";
let string2 = 'Hello, World!';
console.log(string1);
console.log(string2);


console.log("\n------------------------------------------------------------\n");


// 이스케이프 문자 사용 - "" , '' , \" , \'
let string3 = 'Hello, "World!';
let string4 = "Hello, 'World!";
console.log(string3);
console.log(string4);
let string5 = "Hell\"o, \'World!";
console.log(string5);


console.log("\n------------------------------------------------------------\n");


// 연결연산자
let string6 = '문자열' + " 연결 연산자";
console.log(string6);
let string7 = '문자열은 큰따옴표(")나' + " 작은따옴표(')로 감싸면 됩니다.";
console.log(string7);


console.log("\n------------------------------------------------------------\n");


// 이스케이프 문자 사용 - 줄바꿈 \n
let string8 = "이스케이프 문자를 이용해서\n줄 바꿈하고 싶어요"
console.log(string8);


console.log("\n------------------------------------------------------------\n");


// 템플릿 문자열 백틱(`)
let string9 = `문자열은 큰따옴표(")나 작은따옴표(')로 감싸면 됩니다.`;
console.log(string9);
console.log();


let string10 = `문자열은 큰따옴표(")나


작은따옴표(')로 감싸면 됩니다.`;
console.log(string10);


console.log("\n------------------------------------------------------------\n");


// ${} 문법
let dan = 3;
let gugu = 8;
let string = `${dan} 곱하기 ${gugu}은 ${dan * gugu}입니다.`;
console.log(string);


console.log("\n------------------------------------------------------------\n");


// 숫자형
let num1 = 10;
let num2 = 0.1;
console.log(num1);
console.log(num2);

let sum = 0.1 + 0.2;
console.log(sum);

let sum1 = (0.1*10 + 0.2*10)/10;
console.log(sum1);


console.log("\n------------------------------------------------------------\n");


// 논리형
let boolean1 = true;
let boolean2 = true;
console.log(boolean1); // true
console.log(boolean2); // false

let boolean3 = 10 < 20;
let boolean4 = 10 > 20;
console.log(boolean3);
console.log(boolean4);


console.log("\n------------------------------------------------------------\n");


// undefined
let empty;
console.log(empty);


console.log("\n------------------------------------------------------------\n");


// null
let empty1 = null;
console.log(empty1); // null


console.log("\n------------------------------------------------------------\n");


// 객체 배열
let studentScore = [80, 70, 90, 60]; // 국어, 영어, 수학, 과학 점수
console.log(studentScore[1]); // 70, 1번 인덱스의 데이터에 접근

let array = ['abc', 10, true, undefined, null, [], {}, function(){}];
console.log(array[0]);
console.log(array[1]);
console.log(array[2]);
console.log(array[3]);
console.log(array[4]);
console.log(array[5]);
console.log(array[6]);
console.log(array[7]);
console.log(array);


console.log("\n------------------------------------------------------------\n");


// 객체 리터럴
let studentScore1 = {
    korean : 80,
    enlish : 70,
    math : 90,
    science : 60
};
console.log(studentScore1.korean);
console.log(studentScore1['enlish']);
console.log(studentScore1.math);
console.log(studentScore1.science);


console.log("\n------------------------------------------------------------\n");


// 이항 산술 연산자
let sumSum = 10 + 20;
let sub = 20 - 10;
let multi = 10 * 20;
let div = 10 / 2;
let remain = 10 % 3;
let expon = 2 ** 3;
console.log("sumSum : " + sumSum);
console.log("sub : " + sub);
console.log("multi : " + multi);
console.log("div : " + div);
console.log("remain : " + remain);
console.log("expon : " + expon);


console.log("\n------------------------------------------------------------\n");


// 단항 산술 연산자
let increment = 10;
console.log("increment : " + increment); // 10
console.log("increment++ : " + increment++); // 10
increment++;
console.log("increment : " + increment); // 12

let decrement = 10;
console.log("increment : " + decrement); // 10
console.log("increment-- : " + decrement--); // 10
decrement--;
console.log("increment : " + decrement); // 8


console.log("\n------------------------------------------------------------\n");


// 단항 산술 연산자
let num3 = 10;
console.log("num3 : " + num3); // 10
let subNum = ++num3;
console.log("subNum : " + subNum); // 11
console.log("num3 : " + num3); // 11


console.log("\n------------------------------------------------------------\n");


// 단한 부정 연산자
let num4 = -10;
num4 = -num4;
console.log("num4 : " + num4); // 10
num4 = -num4;
console.log("num4 : " + num4) // -10


console.log("\n------------------------------------------------------------\n");


// 대입 연산자와 복합 대입 연산자
let x = 10;
console.log("x : " + x); // 10
x += 5;
console.log("x : " + x); // 15

let y = 10;
console.log("y : " + y); // 10
y -= 5;
console.log("y : " + y); // 5

let z = 10;
console.log("z : " + z); // 10
z *=5;
console.log("z : " + z); // 50

let u = 10;
console.log("u : " + u); // 10
u /= 5;
console.log("u : " + u); // 2

let v = 10;
console.log("v : " + v); // 10
v %= 3;
console.log("v : " + v); // 1

let t = 10;
console.log("t : " + t); // 10
t **= 2;
console.log("t : " + t); // 100


console.log("\n------------------------------------------------------------\n");


// 비교 연산자
console.log( 10 != 10); // 10과 10은 값이 같지 않다
console.log( 10 != '10'); // 10과 '10'은 값이 같지 않다
console.log( 10 !== '10'); // 10과 '10'은 값과 자료형이 같지 않다
console.log( 10 !== 10); // 10과 '10'은 값과 자료형이 같지 않다
console.log( 10 < 10); // 10은 10보다 작다
console.log( 10 <= 10); // 10은 10과 같거나 작다
console.log( 10 > 10); // 10은 10보다 크다
console.log( 10 >= 10); // 10은 10과 같거나 크다


console.log("\n------------------------------------------------------------\n");

// 논리 연산자 

// x && y : x가 차이면 y를 반환하고, 거짓이면 x를 반환
console.log( true && true ); // true
console.log( true && false && true ); // false
console.log("------")

// "" , undefined, 0, null : false
console.log( "" && "cat" ); // ??
console.log( undefined && "cat" ); // undefined
console.log( 0 && "cat" ); // 0
console.log( "cat" && 0 ); // 0
console.log( null && "cat" ); // null
console.log("------")

console.log( 1 && "cat" ); // cat
console.log("cat" && "dog"); // dog
console.log("cat" && "dog" && "bird"); // bird
console.log("cat" && 1); // 1
console.log("------")

// x || y : x가 참이면 x를 반환하고, 거짓이면 y를 반환
console.log( false || true || false ); // true
console.log( false || false ); // false
console.log( false || "cat" ); // cat
console.log( "" || "cat" ); // cat
console.log( "dog" || "cat" ); //dog
console.log("------")

console.log( !false); // true
console.log( !( 10 < 20 )); // false
console.log( !( 10 < 20 && 20 < 10)); // true


console.log("\n------------------------------------------------------------\n");



// 삼항 연산자 
let score = 90;
let grade = score >= 90 ? 'A+' : 'B';
console.log("grade : " + grade);


console.log("\n------------------------------------------------------------\n");


// 형 변환
let num = 10;
let strNum = "10";
console.log( num + strNum ); // 숫자형이 문자형으로 변환 1010
if ( num == strNum ) {
    console.log(`equals`); // == 값이 같니 equals
}

console.log( typeof(num) ); // typeof : 변수명에 해당하는 데이터타입을 출력해줌 
console.log( typeof(String( num )) ); // String
if ( String(num) == strNum ) {
    console.log(`equals`); // equals
}


console.log("\n------------------------------------------------------------\n");

//  if 조건문
let num11 = 10;
if ( num11 % 2 === 0 ) { // 10 % 2의 나머지가 0 (값과 자료형) 이면 
    console.log("변수 num에 할당된 숫자는 짝수입니다.");
}


console.log("\n------------------------------------------------------------\n");


//  else 조건문
let num9 = 5;
if ( num9 % 2 === 0 ) {
    console.log("변수 num에 할당된 숫자는 짝수입니다.");
} else {
    console.log("변수 num에 할당된 숫자는 홀수입니다.");
}


console.log("\n------------------------------------------------------------\n");


//  else if 조건문
let num7 = 0;
if ( num7 > 0 ) {
    console.log("양수");
} else if ( num7 < 0 ) {
    console.log("음수");
} else {
    console.log("0");
}


console.log("\n------------------------------------------------------------\n");


// switch 조건 문
let food = "melon";
switch (food) {
    case "melon":
    case "apple":
    case "banana":
        console.log("fruit");
        break;
    case "carrot":
        console.log("vegetable");
        break;
    default:
        console.log("It's not fruits and vegetables");
        break;
}



console.log("\n------------------------------------------------------------\n");

// while 반복문
let num5 = 1;
while ( num5 <= 9 ) {
    console.log("num3 : " + num5);
    num3++;

}


console.log("\n------------------------------------------------------------\n");


// do while 반복문
num3 = 1;
do {
    console.log("num3 : " + num3);
    num3++;
} while ( num3 <= 9 ) {

}


console.log("\n------------------------------------------------------------\n");


// for 반복문

for ( i = 1; i <= 9; i++) {
    console.log("i : " + i)

}


console.log("\n------------------------------------------------------------\n");

// 중첩 반복문

for ( let i = 0; i < 2; i++) {
    console.log(`i : ${i}`);
    for ( let k = 0; k < 2; k++ ) {
        console.log(`     k: ${k}`);
    }
}



console.log("\n------------------------------------------------------------\n");


// for문과 배열

let arr = ["banana" , "apple" , "orange"];
console.log(`배열 arr 0번 째 값은 : ${arr[0]}`);
console.log(`배열 arr 1번 째 값은 : ${arr[1]}`);
console.log(`배열 arr 2번 째 값은 : ${arr[2]}`);
console.log(`=======================`);

for ( let i = 0; i < arr.length; i++ ) {
    // console.log(arr[i]);
    console.log(`배열 arr ${i}번 째 값은 : ${arr[i]}`);
}


console.log("\n------------------------------------------------------------\n");

// for ... in
let obj1 = { name : "철수" , age : "20"};
for ( let key in obj1 ) {
    console.log ( key + ": " + obj1[key]);

}

let arr1 = ["banana" , "apple" , "orange"];
for ( let arrValue in arr1 ) {
    console.log ( `${arrValue}`);
}

for ( let arrIndex in arr1 ) {
    console.log( `배열 arr ${arrIndex}번 째 값은 : ${arr1[arrIndex]}`);
}


console.log("\n------------------------------------------------------------\n");

// break 문

for (let i = 0; i < 10; i++) {
    console.log(i);
    if ( i === 5 )
        break;
}

let obj = { name : "철수" , age : "20" , address : "천안"};
for ( let key in obj ) {
    if ( key === "address" ) break;
    console.log ( key + ": " + obj[key]);

}



console.log("\n------------------------------------------------------------\n");

// continue 문
for (let i = 0; i <= 10; i++) {
    if ( i % 2 === 1) 
        continue;
    console.log(i);
}


console.log("\n------------------------------------------------------------\n");

// 1~100까지의 합

let sum10 = 0;

for (let i = 1; i <= 100; i++) {
    sum10 += i;
}
    console.log("1~100까지의 합은 : " + sum10);
    console.log(`1~100까지의 합은 : ${sum10}`);

