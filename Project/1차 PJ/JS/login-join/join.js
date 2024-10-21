// 화면 이동 
const joinToLogin_1 = (url) => {
    window.open(url);
}
// 메인
$('#joinPic').on('click', () => joinToLogin_1('../../HTML/mainpage/main.html'));
// 로그인
$('#joinToJoin').on('click', () => joinToLogin_1('../../HTML/login-join/login.html'));

// =============================================================================

const inputName = document.getElementById('userName');
const inputPhone = document.getElementById('userPhone');
const inputEmailId = document.getElementById('userEmail');
const inputEmailPwd = document.getElementById('userPwd');
const inputEmailPwdCk = document.getElementById('userPwdCk');
const loginBtn = document.getElementById('btnjoin');
const emailCk = document.getElementById('userEmailCk');
const copyCk = document.getElementById('userCopy');

const nameWarning = document.getElementById('nameWarning');
const phoneWarning = document.getElementById('phoneWarning');
const emailWarning = document.getElementById('emailWarning');
const pwdWarning = document.getElementById('pwdWarning');
const pwdChWarning = document.getElementById('pwdChWarning');
const resultMessageId = document.getElementById('resultMessageId');
const resultMessageCopy = document.getElementById('resultMessageCopy');

// 이메일 중복 확인 함수
const checkEmail = () => {
    const existingUser = JSON.parse(localStorage.getItem('user'));
    if (existingUser && existingUser.email === inputEmailId.value) {
        resultMessageId.textContent = "이미 사용 중인 이메일입니다.";
        return false;
    }
    resultMessageId.textContent = "";
    return true;
};

// 이름 유효성 검사
const validateName = () => {
    if (inputName.value.length < 2 || inputName.value.length > 10 || /\s/.test(inputName.value)) {
        nameWarning.textContent = '이름은 2~10자이며 공백을 포함할 수 없습니다.';
        return false;
    } else {
        nameWarning.textContent = '';
        return true;
    }
};

// 전화번호 유효성 검사
const validatePhone = () => {
    if (inputPhone.value.length !== 11 || /\s/.test(inputPhone.value)) {
        phoneWarning.textContent = '전화번호는 11자리여야 하며 공백을 포함할 수 없습니다.';
        return false;
    } else {
        phoneWarning.textContent = '';
        return true;
    }
};

// 이메일 유효성 검사
const validateEmail = () => {
    if (!inputEmailId.value.includes('@') || /\s/.test(inputEmailId.value)) {
        emailWarning.textContent = '이메일에는 @가 포함되어야 하며 공백을 포함할 수 없습니다.';
        return false;
    } else if (!checkEmail()) {
        return false;
    } else {
        emailWarning.textContent = '';
        return true;
    }
};

// 비밀번호 유효성 검사
const validatePassword = () => {
    if (inputEmailPwd.value.length < 8 || inputEmailPwd.value.length > 16 || /\s/.test(inputEmailPwd.value)) {
        pwdWarning.textContent = '비밀번호는 8~16자여야 하며 공백을 포함할 수 없습니다.';
        return false;
    } else {
        pwdWarning.textContent = '';
        return true;
    }
};

// 비밀번호 확인 유효성 검사
const validatePasswordConfirm = () => {
    if (inputEmailPwd.value !== inputEmailPwdCk.value) {
        pwdChWarning.textContent = '비밀번호가 일치하지 않습니다.';
        return false;
    } else {
        pwdChWarning.textContent = '';
        return true;
    }
};

// 전체 유효성 검사
const validateInput = () => {
    let isValid = true;

    if (!validateName()) isValid = false;
    if (!validatePhone()) isValid = false;
    if (!validateEmail()) isValid = false;
    if (!validatePassword()) isValid = false;
    if (!validatePasswordConfirm()) isValid = false;

    if (!emailCk.checked) {
        resultMessageId.textContent = '이메일 중복확인을 체크해 주세요';
        isValid = false;
    } else {
        resultMessageId.textContent = '';
    }

    if (!copyCk.checked) {
        resultMessageCopy.textContent = '약관에 동의해 주세요.';
        isValid = false;
    } else {
        resultMessageCopy.textContent = '';
    }

    return isValid;
};

// 페이지 이동 함수 (회원가입 성공 후 메인 페이지로 이동)
const joinToMain = () => {
    alert(inputName.value + '님 가입을 환영합니다!');
    location.replace('../../HTML/mainpage/main.html');
};

// 실시간으로 입력 필드의 유효성 검사를 수행 (해당 필드만 검사)
inputName.addEventListener('input', validateName);
inputPhone.addEventListener('input', validatePhone);
inputEmailId.addEventListener('input', validateEmail);
inputEmailPwd.addEventListener('input', validatePassword);
inputEmailPwdCk.addEventListener('input', validatePasswordConfirm);
emailCk.addEventListener('change', validateInput);
copyCk.addEventListener('change', validateInput);

// 로그인 버튼 클릭 이벤트
loginBtn.addEventListener('click', (event) => {
    event.preventDefault();

    const isFormValid = validateInput();

    // 모든 조건이 충족되었을 경우에만 메인 페이지로 이동
    if (isFormValid) {
        saveUserData();
        joinToMain();
    } else {
        loginBtn.style.backgroundColor = 'rgb(252, 146, 146)';
    }
});

const saveUserData = () => {
    const userData = {
        name: inputName.value,
        phone: inputPhone.value,
        email: inputEmailId.value,
        password: inputEmailPwd.value
    };
    localStorage.setItem('user', JSON.stringify(userData)); // LocalStorage에 저장
};

// ============================================================








