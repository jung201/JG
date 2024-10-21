function count(type) {
  // 결과를 표시할 element
  const resultElement = document.getElementById('result');
  const totalPriceElement = document.getElementById('totalPrice');

  // 현재 화면에 표시된 값
  let number = resultElement.innerText;
  let sum = totalPriceElement.innerText;

  // 더하기/빼기
  if (number > 1) {
    if (type === 'plus') {
      number = parseInt(number) + 1;
    } else if (type === 'minus') {
      number = parseInt(number) - 1;
    }

  } else if (number = 1) {
    if (type === 'plus') {
      number = parseInt(number) + 1;
    }
  }

  // 수량에 따른 금액 연산

  sum = number * 150000;

  // 결과 출력
  resultElement.innerText = number;
  totalPriceElement.innerText = sum + " 원";
}

// 결제
document.getElementById("myButton").onclick = function () {
  const userConfirmed = window.confirm("결제하시겠습니까?");
  if (userConfirmed) {
    alert("결제가 완료되었습니다.");
  } else {
    alert("결제가 취소되었습니다.");
  }
};


// 결제끝




