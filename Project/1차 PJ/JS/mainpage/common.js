document.addEventListener('DOMContentLoaded', () => {
    const joinBtn = document.getElementById('joinBtn');
    const loginBtn = document.getElementById('loginBtn');
    const mypageBtn = document.getElementById('mypageBtn');
    const logoutBtn = document.getElementById('logoutBtn');

    // 로그인 상태 확인
    const isLoggedIn = localStorage.getItem('isLoggedIn');

    // 로그인 상태에 따른 버튼 표시/숨김 처리
    if (isLoggedIn === 'true') {
        if (joinBtn) joinBtn.style.display = 'none';
        if (loginBtn) loginBtn.style.display = 'none';
        if (logoutBtn) logoutBtn.style.display = 'block';
        if (mypageBtn) mypageBtn.style.display = 'block';

    } else {
        if (joinBtn) joinBtn.style.display = 'block';
        if (loginBtn) loginBtn.style.display = 'block';
        if (logoutBtn) logoutBtn.style.display = 'none';
        if (mypageBtn) mypageBtn.style.display = 'none';
    }
});

// 로그아웃 버튼 클릭 시 로그아웃 처리
document.getElementById('logoutBtn')?.addEventListener('click', () => {
    localStorage.setItem('isLoggedIn', 'false');
    location.reload();
});

// 약관페이지 체크박스 누르면 윈도우 닫힘
const userCopy = document.getElementById('userCopy');
userCopy.addEventListener('click', (event) => {
    window.close();
});