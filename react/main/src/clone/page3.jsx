import React from "react";
import styles3 from "./page3.module.scss"; // 필요한 CSS 모듈을 불러옵니다.

const Page3 = () => {
    return (
        <main>
            <div>
                <div className={styles3.otherPicComment}>최근 본 프로젝트</div>
                <div className={styles3.other_2}>
                    <div className={styles3.otherTwo}>
                        {/* 첫 번째 이미지 카드 */}
                        <div className={styles3.otherPic_container}>
                            <div className={styles3.inner}>
                                <img src="../../img/사진44.jpeg" alt="img30" />
                                <div className={styles3.comment}>
                                    <div className={styles3.author}>annie chung</div>
                                    <div className={styles3.title}>HOW CAN I FORGET YOU?</div>
                                </div>
                            </div>
                        </div>

                        {/* 두 번째 이미지 카드 */}
                        <div className={styles3.otherPic_container}>
                            <div className={styles3.inner}>
                                <img src="../../img/사진41.jpg" alt="img30" />
                                <div className={styles3.comment}>
                                    <div className={styles3.author}>HB PRESS</div>
                                    <div className={styles3.title}>빛나는 작은 가게들, small store</div>
                                </div>
                            </div>
                        </div>

                        {/* 세 번째 이미지 카드 */}
                        <div className={styles3.otherPic_container}>
                            <div className={styles3.inner}>
                                <img src="../../img/사진43.jpeg" alt="img28" />
                                <div className={styles3.comment}>
                                    <div className={styles3.author}>repaly</div>
                                    <div className={styles3.title}>필름으로 창조한 우리들만의 세계</div>
                                </div>
                            </div>
                        </div>

                        {/* 네 번째 이미지 카드 */}
                        <div className={styles3.otherPic_container}>
                            <div className={styles3.inner}>
                                <img src="../../img/사진45.jpeg" alt="img28" />
                                <div className={styles3.comment}>
                                    <div className={styles3.author}>Tory Film</div>
                                    <div className={styles3.title}>같이 찍어요, 토리 필름 카메라</div>
                                </div>
                            </div>
                        </div>

                        {/* 다섯 번째 이미지 카드 */}
                        <div className={styles3.otherPic_container}>
                            <div className={styles3.inner}>
                                <img src="../../img/사진58.JPG" alt="img30" />
                                <div className={styles3.comment}>
                                    <div className={styles3.author}>Time</div>
                                    <div className={styles3.title}>사랑을 발견하는 가족사진 출장 촬영</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    );
};

export default Page3;
