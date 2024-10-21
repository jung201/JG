// 화면 이동
const detail1ToGo = (url) => {
    window.open(url);
}
// 로고
$('#logo_picMain').on('click', () => detail1ToGo('../../HTML/mainpage/main.html'));
// 홈
$('#detail1ToHome').on('click', () => detail1ToGo('../../HTML/mainpage/main.html'));
// 펀딩 리스트
$('#detail1ToList').on('click', () => detail1ToGo('../../HTML/mainpage/pagelist.html'));
// 종료펀딩
$('#detail1ToEnd').on('click', () => detail1ToGo('../../HTML/register/end.html'));
// 작품구매
$('#detail1Topurchase_1').on('click', () => detail1ToGo('../../HTML/purchase/purchase1.html'));
// join
$('#joinBtn').on('click', () => detail1ToGo('../../HTML/login-join/join.html'));
// Login
$('#loginBtn').on('click', () => detail1ToGo('../../HTML/login-join/login.html'));
// myPage
$('#mypageBtn').on('click', () => detail1ToGo('../../HTML/mypage/mypage.html'));


// ==============================================================================================


// 스크롤
document.querySelectorAll(".scroll_move").forEach(function (button) {
    button.addEventListener("click", function () {
        const targetId = button.getAttribute("data-target");
        const targetSection = document.getElementById(targetId);

        if (targetSection) {
            targetSection.scrollIntoView({ behavior: "smooth" });
        }
    });
});


// ==============================================================================================


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


// ==============================================================================================


// 하트 버튼
let liked = false;  // 좋아요를 이미 눌렀는지 확인하는 변수
let likeCount = 255;  // 좋아요 수량

document.getElementById("likeButton").addEventListener("click", function () {
    if (!liked) {
        likeCount++;
        document.getElementById("likeCount").textContent = likeCount;
        liked = true;
    } else {
        // alert("좋아요는 한번만 가능합니다.");
        window.open("../../HTML/mainpage/likespopup.html", "popup", "width=400,height=550");

    }
});
