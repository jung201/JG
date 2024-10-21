// 화면 이동
const myPageToGo = (url) => {
    window.open(url);
}
// 홈
$('#myPageToHome').on('click', () => myPageToGo('../../HTML/mainpage/main.html'));
// 펀딩리스트
$('#myPageToList').on('click', () => myPageToGo('../../HTML/mainpage/pagelist.html'));
// 종료펀딩
$('#myPageToend').on('click', () => myPageToGo('../../HTML/register/end.html'));
// 작품구매
$('#myPageTopurchase_1').on('click', () => myPageToGo('../../HTML/purchase/purchase1.html'));
// 작품등록
$('#endTopurchaseregister_1').on('click', () => myPageToGo('../../HTML/register/productregister.html'));
// 펀딩등록
$('#endTregister_1').on('click', () => myPageToGo('../../HTML/register/register.html'));

// join
$('#joinBtn').on('click', () => myPageToGo('../../HTML/login-join/join.html'));
// Login
$('#loginBtn').on('click', () => myPageToGo('../../HTML/login-join/login.html'));
// myPage
$('#mypageBtn').on('click', () => myPageToGo('../../HTML/mypage/mypage.html'));

