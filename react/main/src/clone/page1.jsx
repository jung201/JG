import React from "react";
import styles from "./page1.module.scss";

const MainPage = () => {
  return (
    <main className={styles.main}>
      <div className={styles.mainBox}>
        {/* 왼쪽 사진부분 */}
        <div className={styles.left}>
          {/* 메인 슬라이더 */}
          <section className={styles.section}>
            <div className={styles.pic_container}>
              <ul className={styles.pic_slider}>
                <li><img src="/img/사진38.jpeg" alt="img23" /></li>
                <li><img src="/img/사진34.jpeg" alt="img29" /></li>
                <li><img src="/img/사진32.jpeg" alt="img25" /></li>
                <li><img src="/img/사진33.jpeg" alt="img25" /></li>
                <li><img src="/img/사진40.jpg" alt="img25" /></li>
              </ul>
            </div>
          </section>

          {/* 서브 슬라이더 */}
          <div className={styles.subPicComment}>주목할 만한 펀딩</div>
          <sub className={styles.sub}>
            <div className={styles.pic_container}>
              <ul className={styles.pic_list}>
                <li className={styles.list}><img src="/img/camera-1438003_1280.jpg" alt="img17" /></li>
                <li className={styles.list}><img src="/img/camera-1438003_1280.jpg" alt="img13" /></li>
                <li className={styles.list}><img src="/img/배경23.png" alt="img14" /></li>
                <li className={styles.list}><img src="/img/kayak-5543935_1920.jpg" alt="img18" /></li>
                <li className={styles.list}><img src="/img/camera-1438003_1280.jpg" alt="img20" /></li>
              </ul>
              <button className={styles.btn1}>
                <i className="fa-solid fa-angle-left fa-2x"></i>
              </button>
              <button className={styles.btn2}>
                <i className="fa-solid fa-angle-right fa-2x"></i>
              </button>
            </div>
          </sub>
        </div>

        {/* 오른쪽 펀딩 */}
        <div className={styles.right}>
          <div className={styles.title}>
            <p>최근 등록된 펀딩</p>
            <div id={styles.allPic}>전체보기</div>
          </div>

          <div id={styles.timeDisplay}></div>
          <div className={styles.pic}>
            <div className={styles.rightPic}>
              <img src="/img/사진37.jpeg" alt="img6" />
              <div className={styles.num}>1</div>
              <div className={styles.comment}>
                <dl>
                  <dt>humanpicture</dt>
                  <dd>단 하나라도, 낭만 품고 살기 낭만을 찍은 엽서북</dd>
                </dl>
              </div>
            </div>

            <div className={styles.rightPic}>
              <img src="/img/사진31.jpeg" alt="img6" />
              <div className={styles.num}>2</div>
              <div className={styles.comment}>
                <dl>
                  <dt>pinkhuman</dt>
                  <dd>하루하루가 반복되고 있나요? 어쩌면 우리에게 쉼표가 필요한..</dd>
                </dl>
              </div>
            </div>

            <div className={styles.rightPic}>
              <img src="/img/사진36.jpeg" alt="img6" />
              <div className={styles.num}>3</div>
              <div className={styles.comment}>
                <dl>
                  <dt>human</dt>
                  <dd>기억하고 싶은 유럽의 찰나가 담긴 엽서북과 마스킹 테이프 [Nostalgia]</dd>
                </dl>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div className={styles.otherPicComment}>최근 본 프로젝트</div>
      <div className={styles.other_2}>
        <div className={styles.otherTwo}>
          <div className={styles.otherPic_container}>
            <div className={styles.inner}>
              <img src="/img/사진44.jpeg" alt="img30" />
              <div className={styles.comment}>
                <div className={styles.author}>annie chung</div>
                <div className={styles.title}>HOW CAN I FORGET YOU?</div>
              </div>
            </div>
          </div>

          <div className={styles.otherPic_container}>
            <div className={styles.inner}>
              <img src="/img/사진41.jpg" alt="img30" />
              <div className={styles.comment}>
                <div className={styles.author}>HB PRESS</div>
                <div className={styles.title}>빛나는 작은 가게들, small store</div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div className={styles.explain}>
        <hr className={styles.linee} width="100%" color="black" />
        <p className={styles.company}>
          직박구리(주) 대표이사 직박구리 사업자등록번호 123-456-678910 통신판매업신고번호 2024-천안시C-1234 충남 천안시 동남구 111-111호
        </p>
        <p className={styles.companyx}>
          직박구리는 플랫폼 제공자로서 직접적인 통신판매를 진행하지 않습니다. 상품의 정보, 상품, 거래에 관한 의무와 책임은 판매자에게 있으므로 구체적인 내용을 확인하시길 바랍니다.
        </p>
      </div>
    </main>
  );
};

export default MainPage;
