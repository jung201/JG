// 팝업창
function showPopup() { window.open("endpop.html", "a", "width=600, height=1800"); }

// main 화면으로 이동
const mainToGo = (url) => {
    window.open(url);
}
// 로고
$('#logo_picMain').on('click', () => mainToGo('../../HTML/mainpage/main.html'));
// 홈
$('#endpageToHome').on('click', () => mainToGo('../../HTML/mainpage/main.html'));
// 펀딩 리스트
$('#endpageToList').on('click', () => mainToGo('../../HTML/mainpage/pagelist.html'));
// 종료펀딩
$('#endpageToend').on('click', () => mainToGo('../../HTML/register/end.html'));
// 작품구매
$('#endpageTopurchase_1').on('click', () => mainToGo('../../HTML/purchase/purchase1.html'));
// join
$('#joinBtn').on('click', () => mainToGo('../../HTML/login-join/join.html'));
// Login
$('#loginBtn').on('click', () => mainToGo('../../HTML/login-join/login.html'));
// myPage
$('#mypageBtn').on('click', () => mainToGo('../../HTML/mypage/mypage.html'));


// 슬라이드

var slideIndex = 1;
showSlides(slideIndex);
// Next/previous controls
function plusSlides(n) {
    showSlides(slideIndex += n);
}
// Thumbnail image controls
function currentSlide(n) {
    showSlides(slideIndex = n);
}

function showSlides(n) {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    if (n > slides.length) { slideIndex = 1 }
    if (n < 1) { slideIndex = slides.length }
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex - 1].style.display = "block";
    dots[slideIndex - 1].className += " active";
}

// 커뮤니티 댓글 기능

const commentBtn = document.querySelector("#commentFrm");
const commentList = document.querySelector("#comment-list");
const total = document.querySelector("h4 > span");
const list = [];

class Comment {
    constructor(content) {
        this.userid = "익명";
        this.content = content;
        this.date = "2024-10-16";
    }
}

function createRow(userid, content, date) {
    const ul = document.createElement("ul");
    const li1 = document.createElement("li");
    const li2 = document.createElement("li");
    const li3 = document.createElement("li");

    ul.append(li1);
    ul.append(li2);
    ul.append(li3);

    ul.setAttribute("class", "comment-row");
    li1.setAttribute("class", "comment-id");
    li2.setAttribute("class", "comment-content");
    li3.setAttribute("class", "comment-date");

    li1.innerHTML = userid;
    li2.innerHTML = content;
    li3.innerHTML = date;

    return ul;
}

function drawing() {
    commentList.innerHTML = "";
    for (let i = list.length - 1; i >= 0; i--) {
        const row = createRow(list[i].userid, list[i].content, list[i].date);
        commentList.append(row);
    }
}

function totalRecord() {
    total.innerHTML = `(${list.length})`;
}

function commentBtnHandler(e) {
    e.preventDefault();

    const input = e.target.content;
    if (input.value === "") {
        alert("내용을 넣고 등록 버튼을 눌러주세요.");
        return;
    }

    const commentObj = new Comment(input.value);
    list.push(commentObj);
    totalRecord();

    drawing();
    e.target.reset();

}

commentBtn.addEventListener("submit", commentBtnHandler);

// 파일 업로드 스크립트
function setThumbnail(event) {
    for (var image of event.target.files) {
        var reader = new FileReader();

        reader.onload = function (event) {
            var img = document.createElement("img");
            img.setAttribute("src", event.target.result);
            document.querySelector("div#image_container").appendChild(img);
        };
        console.log(image);
        reader.readAsDataURL(image);
    }
}

// 결제하기
function showPurchasePopup() {
    window.open('../../HTML/mainpage/detail-pop1.html', 'popupWindow', 'width=1600,height=1600,');
}


// 업로드 끝

// const textarea = useRef();

// const handleResizeHeight = () => {
//     textarea.current.style.height = 'auto'; //height 초기화
//     textarea.current.style.height = textarea.current.scrollHeight + 'px';
// };







