// 화면 이동 
// 로고
const loginToLogo = () => {
    window.location.replace('../../HTML/mainpage/main.html');
}
loginPic.addEventListener('click', loginToLogo);

// =============================================================================

const inputEmailId = document.getElementById('userEmail');
const inputEmailPwd = document.getElementById('userPwd');
const loginBtn = document.getElementById('btnlogin');

const emailWarning = document.getElementById('emailWarning');
const pwdWarning = document.getElementById('pwdWarning');

// 유효성 검사 함수
const login_user = () => {
    let isValid = true;

    // 경고 메시지 초기화
    emailWarning.textContent = '';
    pwdWarning.textContent = '';

    // 이메일 검사
    if (!inputEmailId.value.includes('@') || /\s/.test(inputEmailId.value)) {
        emailWarning.textContent = '이메일에는 @가 포함되어야 하며 공백을 포함할 수 없습니다.';
        loginBtn.style.backgroundColor = 'rgb(252, 146, 146)';
        loginBtn.disabled = true;
        isValid = false;
    }

    // 비밀번호 검사
    else if (inputEmailPwd.value.length < 8 || inputEmailPwd.value.length > 16 || /\s/.test(inputEmailPwd.value)) {
        pwdWarning.textContent = '비밀번호는 8~16자여야 하며 공백을 포함할 수 없습니다.';
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

// 로그인 처리 
const checkLoginCredentials = () => {
    const storedUser = JSON.parse(localStorage.getItem('user'));

    if (storedUser) {
        const storedEmail = storedUser.email;
        const storedPassword = storedUser.password;

        // 입력한 이메일과 비밀번호가 저장된 정보와 일치하는지 확인
        if (inputEmailId.value === storedEmail && inputEmailPwd.value === storedPassword) {
            localStorage.setItem('isLoggedIn', 'true');
            loginToMain();
        } else {
            alert('이메일 또는 비밀번호가 잘못되었습니다.');
        }
    } else {
        alert('회원가입된 사용자가 없습니다.');
    }
}

// 페이지 이동
const loginToMain = () => {
    alert('환영합니다!');
    location.replace('../../HTML/mainpage/main.html');
}

// 로그인 버튼 클릭
loginBtn.addEventListener('click', (event) => {
    event.preventDefault();
    login_user();

    if (!loginBtn.disabled) {
        checkLoginCredentials();
    }
});

// 각 입력 필드에서 입력이 변경될 때마다 유효성 검사 호출
inputEmailId.addEventListener('input', login_user);
inputEmailPwd.addEventListener('input', login_user);












// ======================================================================================
//로그인시 마이페이지 표시

// $(document).ready(function() {
//     $('#btnlogin').click(function(event) {
//         event.preventDefault(); // 폼의 기본 제출 동작 방지

//         const email = $('#userEmail').val();
//         const password = $('#userPwd').val();

//         // 여기서 실제 로그인 인증 로직을 구현해야 합니다.
//         // 예를 들어, AJAX를 사용하여 서버에 로그인 요청을 보낼 수 있습니다.
//         // 여기서는 간단히 예시로 로그인 성공을 가정합니다.

//         // 로그인 성공 시
//         const isLoginSuccess = true; // 실제 인증 결과로 변경

//         if (isLoginSuccess) {
//             // 로그인 상태 저장
//             localStorage.setItem('isLoggedIn', 'true');

//             // 필요한 사용자 정보 저장 (예: 이메일)
//             localStorage.setItem('userEmail', email);

//             // main.html로 리디렉션
//             window.location.href = '../../HTML/mainpage/main.html';
//         } else {
//             // 로그인 실패 시 경고 메시지 표시
//             $('#emailWarning').text('이메일 또는 비밀번호가 일치하지 않습니다.');
//         }
//     });
// });


