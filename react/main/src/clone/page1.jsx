import React, { useState, useEffect } from "react";
import styles1 from "./page1.module.scss";

const Page1 = () => {
  const [currentIndex, setCurrentIndex] = useState(0);
  const images = [
    "/img/사진38.jpeg",
    "/img/사진34.jpeg",
    "/img/사진32.jpeg",
    "/img/사진33.jpeg",
    "/img/사진40.jpg"
  ];

  useEffect(() => {
    const totalImages = images.length;
    const intervalId = setInterval(() => {
      setCurrentIndex((prevIndex) => (prevIndex + 1) % totalImages);
    }, 3000);

    return () => clearInterval(intervalId);
  }, [images.length]);


  return (
    <main className={styles1.main}>
      <div className={styles1.mainBox}>
        {/* 왼쪽 사진부분 */}
        <div className={styles1.left}>
          {/* 메인 슬라이더 */}
          <section className={styles1.section}>
            <div className={styles1.pic_container}>
              <ul className={styles1.pic_slider}
                style={{
                  transform: `translateX(-${(currentIndex * 100) / images.length}%)`,
                  width: `${images.length * 100}%`
                }}
              >
                {images.map((image, index) => (
                  <li key={index} style={{ width: `${100 / images.length}%` }}>
                    <img src={image} alt={`img${index}`} />
                  </li>
                ))}
              </ul>
            </div>
          </section>
        </div>

        {/* 오른쪽 펀딩 */}
        <div className={styles1.right}>
          <div className={styles1.title}>
            <p>최근 등록된 펀딩</p>
            <div id={styles1.allPic}>전체보기</div>
          </div>

          <div id={styles1.timeDisplay}></div>
          <div className={styles1.pic}>
            <div className={styles1.rightPic}>
              <img src="/img/사진37.jpeg" alt="img6" />
              <div className={styles1.num}>1</div>
              <div className={styles1.comment}>
                <dl>
                  <dt>humanpicture</dt>
                  <dd>단 하나라도, 낭만 품고 살기 낭만을 찍은 엽서북</dd>
                </dl>
              </div>
            </div>

            <div className={styles1.rightPic}>
              <img src="/img/사진31.jpeg" alt="img6" />
              <div className={styles1.num}>2</div>
              <div className={styles1.comment}>
                <dl>
                  <dt>pinkhuman</dt>
                  <dd>하루하루가 반복되고 있나요? 어쩌면 우리에게 쉼표가 필요한..</dd>
                </dl>
              </div>
            </div>

            <div className={styles1.rightPic}>
              <img src="/img/사진36.jpeg" alt="img6" />
              <div className={styles1.num}>3</div>
              <div className={styles1.comment}>
                <dl>
                  <dt>human</dt>
                  <dd>기억하고 싶은 유럽의 찰나가 담긴 엽서북과 마스킹 테이프 [Nostalgia]</dd>
                </dl>
              </div>
            </div>
            <div className={styles1.rightPic}>
              <img src="/img/사진38.jpeg" alt="img6" />
              <div className={styles1.num}>4</div>
              <div className={styles1.comment}>
                <dl>
                  <dt>human</dt>
                  <dd>기억하고 싶은 유럽의 찰나가 담긴 엽서북과 마스킹 테이프 [Nostalgia]</dd>
                </dl>
              </div>
            </div>
            <div className={styles1.rightPic}>
              <img src="/img/사진44.jpeg" alt="img6" />
              <div className={styles1.num}>5</div>
              <div className={styles1.comment}>
                <dl>
                  <dt>human</dt>
                  <dd>기억하고 싶은 유럽의 찰나가 담긴 엽서북과 마스킹 테이프 [Nostalgia]</dd>
                </dl>
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>
  );
};

export default Page1;
