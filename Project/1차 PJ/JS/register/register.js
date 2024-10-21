function validateAndShowRegister() {
    const theme = document.querySelector('.theme').value.trim();
    const details = document.querySelector('.details').value.trim();
    const quantityPrice = document.getElementById('quantitypirceInput').value.trim();
    const productName = document.getElementById('productNameInput').value.trim();
    const quantity = document.getElementById('quantityInput').value.trim();
    const period = document.getElementById('periodInput').value.trim();
    const targetAmount = document.getElementById('targetAmountInput').value.trim();

    // 하나라도 비어 있는 필드 체크
    if (!theme || !details || !quantityPrice || !productName || !quantity || !period || !targetAmount) {
        alert("모든 내용을 작성해주세요.");
        return;
    }

    // 모든 필드가 채워지면 팝업 염.
    showRegister();
}

function showRegister() {
    window.open("../../HTML/register/registerpop.html", "a", "width=400,height=400,left=100,top=0");
}

function setThumbnail(input) {
    // 이미지 미리보기 
}

// 팝업등록완료
function showRegister() {
    window.open("../../HTML/register/registerpop.html", "a", "width=400, height=400, left=100, top=0");
}


const container = document.getElementById('add')

// 
const registerTheme = document.getElementsByClassName('theme');
const registerDetails = document.getElementsByClassName('details');
const registerBt = document.getElementsByClassName('button');

const registerPopBtn = () => {
    let isValid = true;

    if (registerTheme.value.length < 1 || registerDetails.value.length < 1) {
        registerBt.style.backgroundColor = 'rgb(252, 146, 146)';
        registerBt.disabled = true;
        isValid = false;
    } else if (isValid) {
        registerBt.style.backgroundColor = "#0095F6";
        registerBt.disabled = false;
    }
}
// // 끝
// const joinToMain = () => {
//     location.replace('../../HTML/mainpage/main.html');
// }

// // 로그인 버튼 클릭
// registerBt.addEventListener('click', (event) => {
//     event.preventDefault(); // 기본 동작 방지
//     registerPopBtn(); // 입력검사 호출
//     if (!registerBt.disabled) { // 버튼이 활성화된 경우에만 이동
//         registerPopBtn();
//     }
// });

// 각 입력 필드에서 입력이 변경될 때마다 join_user 호출
registerTheme.addEventListener('input', registerPopBtn);
registerDetails.addEventListener('input', registerPopBtn);


// // 상품 정보 추가
// document.getElementById('addProductButton').addEventListener('click', function() {
//     const productInfo = document.getElementById('product-info');
//     const newProductInfo = productInfo.cloneNode(true); // 클론 생성

//     // 클론 입력 필드 초기화.
//     const inputs = newProductInfo.getElementsByTagName('input');
//     for (let input of inputs) {
//         input.value = ''; // 입력값 초기화
//     }

//     // 클론을 기존 DOM에 추가
//     productInfo.parentNode.insertBefore(newProductInfo, this); // 버튼 앞에 추가
// });


