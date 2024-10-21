// 암시적 형변환
// const result = 10 + "10";
// 명시적 형변환
// var result1 = data1 + data2;
// console.log(result);
// console.log()

console.log("----------------------------------------------")

// let q1 = 10 + 10 * 2; // 30
// let q2 = 10 === 10 || 10 !== "10"; // true
// let q3 = !(10 < 20) && 10 < 20; // false
// console.log("q1=" + q1); // 10 + (10*2) = 30 , 곱셈 먼저 
// console.log("q2=" + q2); // 숫자 10 === 숫자 10이 같거나 숫자 10 !== 문자 "10" 같지 않다면 
// console.log("q3=" + q3); // 10이 20보다 작지 않고 10이 20보다 작다 

console.log()
console.log("----------------------------------------------")

let num = 10;
if ( num % 2 === 0 ) {
    console.log("1.if 변수 num에 할당된 숫자는 짝수입니다.")
}
console.log()

num = 5;
if(num % 2 === 0) {
    console.log("2.if else 변수 num에 할당된 숫자는 짝수입니다.")
} else {
    console.log("2.if else 변수 num에 할당된 숫자는 홀수입니다.")
}
console.log()

num = 0;
if(num > 0 ) {
    console.log("3.if elseif else 양수")
} else if(num < 0) {
    console.log("3.if else if else 음수")
} else {
    console.log("3.if else if else 0")
}
console.log()
console.log("----------------------------------------------")
