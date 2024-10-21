// 화면 이동 
// 로고
const loginToLogo = () => {
    window.location.replace('../../HTML/mainpage/main.html');
}
idfindPic.addEventListener('click', loginToLogo);

// =============================================================================

// 입력창 유효성 검사 

const inputName = document.getElementById('userName');
const inputPhone = document.getElementById('userPhone');
const useraut = document.getElementById('useraut');
const loginBtn = document.getElementById('btnidfind');

const nameWarning = document.getElementById('nameWarning');
const phoneWarning = document.getElementById('phoneWarning');
const userautWarning = document.getElementById('userautWarning');

const idfind_user = () => {
    let isValid = true; // 모든사항이 유효한지 확인 변수

    // 경고 메시지 초기화
    nameWarning.textContent = '';
    phoneWarning.textContent = '';
    userautWarning.textContent = '';


    // 이름 검사 (2~10자)
    if (inputName.value.length < 2 || inputName.value.length > 10 || /\s/.test(inputName.value)) {
        nameWarning.textContent = '이름은 2~10자이며 공백을 포함할 수 없습니다.';
        loginBtn.style.backgroundColor = 'rgb(252, 146, 146)';
        loginBtn.disabled = true;
        isValid = false;
    }

    // 전화번호 검사 (11자)
    else if (inputPhone.value.length !== 11 || /\s/.test(inputPhone.value)) {
        phoneWarning.textContent = '전화번호는 11자리여야 하며 공백을 포함할 수 없습니다.';
        loginBtn.style.backgroundColor = 'rgb(252, 146, 146)';
        loginBtn.disabled = true;
        isValid = false;
    }

    // 인증번호 (6자)
    else if (useraut.value.length !== 6 || /\s/.test(useraut.value)) {
        userautWarning.textContent = '인증번호는 6자리여야 하며 공백을 포함할 수 없습니다.';
        loginBtn.style.backgroundColor = 'rgb(252, 146, 146)';
        loginBtn.disabled = true;
        isValid = false;
    }

    // 모든 조건을 통과했을 경우
    if (isValid) {
        loginBtn.style.backgroundColor = "#0095F6";
        loginBtn.disabled = false;
    }
}

// 페이지 이동
const idfindToMain = () => {
    alert('Email을 확인해주세요')
    location.replace('../../HTML/mainpage/main.html');
}

// 로그인 버튼 클릭
loginBtn.addEventListener('click', (event) => {
    event.preventDefault(); // 기본 동작 방지
    idfind_user(); // 입력검사 호출
    if (!loginBtn.disabled) { // 버튼이 활성화된 경우에만 이동
        idfindToMain();
    }
});

inputName.addEventListener('input', idfind_user);
useraut.addEventListener('input', idfind_user);
inputPhone.addEventListener('input', idfind_user);
