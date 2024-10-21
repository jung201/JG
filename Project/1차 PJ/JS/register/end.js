// 화면 이동
const endToGo = (url) => {
    window.open(url);
}

// 로고
$('#logo_picMain').on('click', () => endToGo('../../HTML/mainpage/main.html'));
// 홈 화면 이동
$('#ToHome').on('click', () => endToGo('../../HTML/mainpage/main.html'));
// 펀딩리스트
$('#ToList').on('click', () => endToGo('../../HTML/mainpage/pagelist.html'));
// 종료펀딩
$('#Toend').on('click', () => endToGo('../../HTML/register/end.html'));
// 작품구매
$('#Topurchase_1').on('click', () => endToGo('../../HTML/purchase/purchase1.html'));
// join
$('#joinBtn').on('click', () => endToGo('../../HTML/login-join/join.html'));
// Login
$('#loginBtn').on('click', () => endToGo('../../HTML/login-join/login.html'));
// myPage
$('#mypageBtn').on('click', () => endToGo('../../HTML/mypage/mypage.html'));
// 작품 구매
$('.buying').on('click', () => endToGo('../../HTML/purchase/purchasepage.html'));
// 사진 클릭
$('.inner img').on('click', () => endToGo('../../HTML/register/endpage.html'));



// ============================================================================



