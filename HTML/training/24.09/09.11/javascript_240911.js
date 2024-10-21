// 24.09.11 

/*

// 객체 속성값 변경하기
const person = {
    name : "Hong Gildong"
}
person.name = "Kim";
console.log(person.name); // Kim


*/

// =============================================

/*

// 객체 속성 동적으로 추가하기
const person = {}
console.log(person);

// name 추가
// person.name = "Jung Gyu";
// console.log(person);
person.name = {
    firstName : "Jung Gyu",
    lastName : "Lee"
}

// age, familyCount 추가
person.age = 20;
person.familyCount = 20;
person.family = ["father", "monther" , "son" , "june", "may" ];
person.printHello = function() {
    return "hello";
}

// 객체 속성 동적으로 삭제하기
console.log(person)
delete person.name;
console.log("---------delete---------")
console.log(person)
delete person.familyCount;
delete person.family;
delete person.printHello;
delete person.age;
console.log("---------delete---------")
console.log(person)


*/
// =============================================

/*

// 깊은 복사 - 두 데이터는 연동되어 있지 않다
let num = 10;
let copyNum = num; // 변수 num의 데이터를 변수 copyNum에 할당
console.log(`1num : ${num}`); // 10
console.log(`2copyNum : ${copyNum}`); // 10

num = 20; // 변수 num을 재할당
console.log(`3num : ${num}`); // 20
console.log(`4copyNum : ${copyNum}`); // 10

*/

// =============================================

/*

// 얇은 복사 - 객체의 데이터가 저장된 메모리 주소만 가지고 있다 (참조)
const person = {
    name: "Lee JungGyu"
};
// person = {
//     name : "이정규"
// }; // 변수에 할당된 객체 자체를 변경하려면 오류가 남

person.name = "이정규"; // 할당된 객체의 값을 변경 
console.log(person); // (객체주소는 그대로이고 값만 변경)

const copyPerson = person; // copyPerson에 person 대입
person.name = "Hong"; // person 값 변경
console.log(`1person : ${person.name}`); // Hong
console.log(`2copyPerson.name : ${copyPerson.name}`); // Hong
console.log(person.name); // Hong
console.log(copyPerson.name); // Hong
// 같은 person 주소를 참조하고 있으므로 한쪽 값을 변경하면 다른쪽도 변경됨

*/

// =============================================

/*

// 표준 내장 객체 사용하기
// String, Array, Math, Date

const pw = "123";
if (pw.length < 4) {
    console.log("비밀번호는 최소 4자리 이상 입력해 주세요: " + pw.length);
}

let email = "test!naver.com";
if (email.includes("@") === false) {
    console.log("올바른 이메일 형식이 아닙니다." + email.includes("@"));
}

email = "test2@naver.com";
if (email.includes("@") !== false) {
    console.log("올바른 이메일 형식 입니다." + email.includes("@"));
}

email = "test3!naver.com";
if (email.indexOf("@") < 0) {
    console.log("올바른 이메일 형식이 아닙니다." + email.indexOf("@"));
}

email = "test4@naver.com";
if (email.indexOf("@") > -1) {
    console.log("올바른 이메일 형식 입니다." + email.indexOf("@"));
}

*/

// =============================================

/*

const arr = [10, 20, 30];
for (let i = 0; i < arr.length; i++) {
    console.log("arr[" + i + "] : " + arr[i]);

} 
console.log("\n------------------------")

const arr1 = [10, 20, 30, 40, 50];
arr.push(50);
console.log(arr);
console.log(`push : ${arr1}`);
console.log("\n------------------------")

arr1.pop();
console.log(`pop : ${arr1}`);
console.log("\n------------------------")

arr1.unshift(0);
console.log(`unshift : ${arr1}`);
console.log("\n------------------------")

arr1.shift();
console.log(`shift : ${arr1}`);
console.log("\n------------------------")

const arr2 = [10, 20, 30, 40];
// function(p1, p2, p3) : p1은 필수, p2,p3은 선택
arr2.forEach(function(v) {
    console.log(v);
});
console.log(`forEach : ${arr2}`);
console.log("\n------------------------")

arr2.forEach(function(currentValue, index, array) {
    console.log(`현재 index:${index} 이며 현재 값은 ${currentValue} 입니다`);
    console.log(`전체 배열:${array}`);
});
console.log(`5arr2: ${arr2}`)

*/

// =============================================

/*

// 날짜와 시간을 다루는 Date 객체

const date1 = new Date(2024, 11 ,25);
const date2 = new Date(2024, 11 ,25, 18, 30 ,50);
const date3 = new Date("2024-12-25");
const date4 = new Date("2024/12/25/18:30:50");

console.log(`date 1 : ${date1}`);
console.log(`date 2 : ${date2}`);
console.log(`date 3 : ${date3}`);
console.log(`date 4 : ${date4}`);
console.log("\n------------------------")
const curDate = new Date();
console.log(`curDate : ${curDate}`); // 현재날짜,시간 가져오기


*/

// ============================================= 

/*

// 메서드로 날짜와 시간정보 가져와서 설정하기

// 특정날짜 지정 출력
const date = new Date(2022, 11 , 25, 18, 30, 50);
const dateFormat
=`${date.getFullYear()} - ${date.getMonth()+1} - ${date.getDate()} 
${date.getHours()} : ${date.getMinutes()} : ${date.getSeconds()}`;
console.log(dateFormat);

console.log("\n------------------------")

// 현재날짜 설정 및 출력변경
const curDate = new Date();
console.log(`curDate:${curDate}`);
const dateFormat1
=`${curDate.getFullYear()} - ${curDate.getMonth()+1} - ${curDate.getDate()} 
${curDate.getHours()} : ${curDate.getMinutes()} : ${curDate.getSeconds()}`;
console.log(dateFormat1);


*/

// =============================================

/*

// 날짜 간격 계산하기

// 1970년 1월1일 12:00 이후의 시간을 밀리초 단위로 반환
const curDate = new Date();
console.log(`curDate : ${curDate}`);
console.log(`curDate.getTime() : ${curDate.getTime()}`);

console.log("\n------------------------")

const date1 = new Date('2022-12-23');
const date2 = new Date('2022-12-25');
console.log(`date1.getTime() : ${date1.getTime()}`);
console.log(`date2.getTime() : ${date2.getTime()}`);

console.log("\n------------------------")

const dateDiff = date2.getTime() - date1.getTime();
console.log(`dateDiff : ${dateDiff}`);
const interval = dateDiff / (24 * 60 * 60 * 1000);
console.log(`두 날짜의 차이는 ${interval}일입니다.`);
const interval1 = dateDiff / (60 * 60 * 1000);
console.log(`두 날짜의 차이는 ${interval1} 시간 입니다.`);


*/

//=============================================

/*


// 수학연산을 다루는 Math 객체
// Math.floor() - 소수점 버림
// Math.ceil() - 소수점 올림
// Math.round() - 소수점 반올림

const floatNum = 10.52;
console.log(`Math.floor(10.52) : ${Math.floor(floatNum)}`);
console.log(`Math.ceil(10.52) : ${Math.ceil(floatNum)}`);
console.log(`Math.round(10.52) : ${Math.round(floatNum)}`);

console.log("\n------------------------")

const floatNum1 = 10.42;
console.log(`Math.floor(10.52) : ${Math.floor(floatNum1)}`);
console.log(`Math.ceil(10.52) : ${Math.ceil(floatNum1)}`);
console.log(`Math.round(10.52) : ${Math.round(floatNum1)}`);

console.log("\n------------------------")

// Math.random()
// 0이상 1미만의 난수를 반환 
const random = Math.random();
console.log(`Math.random() : ${random}`);

console.log("\n------------------------")

// floor를 이용해서 1~20까지의 랜덤숫자 구하기
getMaxRandom = (max) => {
    console.log(`max : ${max}`);
    let random = Math.random();
    console.log(`Math.random() : ${random}`);
    random = Math.floor(Math.random() * max + 1);
    console.log(`random * max : ${random * max}`);
    console.log(`Math.floor( random * max) : ${Math.floor(random * max)}`);
    console.log(`Math.floor( random * max) + 1 : ${Math.floor(random * max) + 1}`);
    return Math.floor(Math.random() * max + 1);
    return random;
}
const maxRandom = getMaxRandom(20);
console.log(maxRandom);

console.log("\n------------------------")


// 난수의 최소값
getMinMaxRandom = (min, max) => {
    console.log(`min : ${min}`);
    console.log(`max : ${max}`);
    let random = Math.random();
    console.log(`Math.random() : ${random}`);
    random = Math.floor(random * (max - min)) + 1 + min;
    return random;
}
const maxRandom = getMinMaxRandom(10, 20);
console.log(`10이상 20이하 사이 : ${maxRandom}`);
console.log()

console.log(`1이상 45이하 사이 : ${getMinMaxRandom(1, 45)}`);
console.log(`1이상 45이하 사이 : ${getMinMaxRandom(1, 45)}`);
console.log(`1이상 45이하 사이 : ${getMinMaxRandom(1, 45)}`);
console.log(`1이상 45이하 사이 : ${getMinMaxRandom(1, 45)}`);
console.log(`1이상 45이하 사이 : ${getMinMaxRandom(1, 45)}`);
console.log(`1이상 45이하 사이 : ${getMinMaxRandom(1, 45)}`);

*/

//=============================================

/*

// 다음 배열의 요소 중 가장 큰 수를 출력하는 코드를 완성하세요.
let num;
const arr = [10, 120, 30, 50, 20];

num = arr; // num에 배열값 대입
console.log(num.length); // 배열 개수 반환
console.log(arr.reverse(num));
console.log(arr.sort(num));



console.log("\n------------------------")

// 배열의 최대값 구하기
Math.max.apply(null, arr);
console.log(`배열의 최대값 : ${Math.max.apply(null, arr)}`);

// 배열의 최소값 구하기
Math.min.apply(null, arr);
console.log(`배열의 최소값 : ${Math.min.apply(null, arr)}`);

// 함수로 배열의 최대값 구하기
function getMaxOfArray(arr) {
    return Math.max.apply(null, arr);
};
console.log(`함수로 배열의 최대값 : ${getMaxOfArray(arr)}`);

// 화살표 함수로 배열의 최소값 구하기
const getMin = (arr)=> {
    return Math.min.apply(null, arr);
};
console.log(`화살표 함수로 배열의 최소값 : ${getMin(arr)}`);

*/

//=============================================



// 브라우저 객체모델 사용하기

// window 웹 브라우저가 열릴 때마다 생성되는 최상위 관리 객체
// document 웹 브라우저에 표시되는 HTML 문서정보가 포함된 객체
// location 웹 브라우저에 현재 표시된 페이지에 대한 URL 정보가 포함된 객체
// history 웹 브라우저에 저장된 방문 기록이 포함된 객체
// navigator 웹 브라우저 정보가 포함된 객체
// screen 웹 브라우저의 화면 정보가 포함된 객체




