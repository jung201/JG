// 화면 이동 

// 로고
const pwfindToLogo = () => {
    window.location.replace('../../HTML/mainpage/main.html');
}
pwfindPic.addEventListener('click', pwfindToLogo);
// =============================================================================

// 입력창 유효성 검사 

const inputEmailId = document.getElementById('userEmail');
const inputName = document.getElementById('userName');
const pwfindBtn = document.getElementById('btnpwfind');

const emailWarning = document.getElementById('emailWarning');
const pwdWarning = document.getElementById('nameWarning');

const pwfind_user = () => {
    let isValid = true;

    // 경고 메시지 초기화
    emailWarning.textContent = '';
    pwdWarning.textContent = '';

    // 이메일 검사 (@ 포함)
    if (!inputEmailId.value.includes('@') || /\s/.test(inputEmailId.value)) {
        emailWarning.textContent = '이메일에는 @가 포함되어야 하며 공백을 포함할 수 없습니다.';
        pwfindBtn.style.backgroundColor = 'rgb(252, 146, 146)';
        pwfindBtn.disabled = true;
        isValid = false;
    }

    else if (inputName.value.length < 2 || inputName.value.length > 10 || /\s/.test(inputName.value)) {
        nameWarning.textContent = '이름은 2~10자이며 공백을 포함할 수 없습니다.';
        pwfindBtn.style.backgroundColor = 'rgb(252, 146, 146)';
        pwfindBtn.disabled = true;
        isValid = false;
    }

    // 모든 조건을 통과했을 경우
    if (isValid) {
        pwfindBtn.style.backgroundColor = "#0095F6";
        pwfindBtn.disabled = false;
    }
}

// 페이지 이동
const pwfindToMain = () => {
    alert('Email을 확인해주세요')
    location.replace('../../HTML/mainpage/main.html');
}

// 로그인 버튼 클릭
pwfindBtn.addEventListener('click', (event) => {
    event.preventDefault();
    console.log('비밀번호 찾기')
    pwfind_user();
    if (!pwfindBtn.disabled) {
        pwfindToMain();
    }
});

// 각 입력 필드에서 입력이 변경될 때마다 pwfind_user 호출
inputEmailId.addEventListener('input', pwfind_user);
inputName.addEventListener('input', pwfind_user);
