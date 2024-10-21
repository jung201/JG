// 텍스트 작성과 삭제 즉시 실행 함수
(function () {
    const spanEl = document.querySelector("main h2 span");
    const txtArr = ['Wep Publisher', 'Front-End Developer', 'Web UI Designer', 'UX Designer', 'Back-END Developer']
    let index = 0;
    let currentTxt = txtArr[index].split("");

    function writeTxt() {
        spanEl.textContent += currentTxt.shift();
        if (currentTxt.length !== 0) {
            setTimeout(writeTxt, Math.floor(Math.random() * 100));
        } else {
            currentTxt = spanEl.textContent.split("");
            setTimeout(deleteTxt, 3000);
        }
    }

    function deleteTxt() {
        currentTxt.pop();
        spanEl.textContent = currentTxt.join("");
        if (currentTxt.length !== 0) {
            setTimeout(deleteTxt, Math.floor(Math.random() * 100));
        } else {
            index = (index + 1) % txtArr.length;
            currentTxt = txtArr[index].split("");
            writeTxt();
        }
    }

    writeTxt();
})();



// 수직 스크롤이 발생하면 header 태그에 active 클래스 추가 및 삭제
(function () {
    const headerEl = document.querySelector("header");
    window.addEventListener("scroll", function () {
        requestAnimationFrame(scrollCheck);
    });

    function scrollCheck() {
        const browserScrollY = window.scrollY ? window.scrollY : window.pageYOffset;
        if (browserScrollY > 0) {
            headerEl.classList.add('active');
        } else {
            headerEl.classList.remove('active');
        }
    }
})();


// 애니메이션 스크롤
(function () {
    const animationMove = function (selector) {
        const target = document.querySelector(selector);
        const browserScrollY = window.pageYOffset;
        const targetScrollY = target.getBoundingClientRect().top + browserScrollY;
        window.scrollTo({ top: targetScrollY, behavior: 'smooth' });
    }

    const scrollMoveEl = document.querySelectorAll("[data-animation-scroll='true']");
    for (let i = 0; i < scrollMoveEl.length; i++) {
        scrollMoveEl[i].addEventListener("click", function (e) {
            animationMove(this.dataset.target);
        });
    }
})();

