import React from "react";
import styles4 from "./page4.module.scss"; // 필요한 CSS 모듈을 불러옵니다.

const Page4 = () => {
    return (
        <main>
            <div>
                <div className={styles4.otherPicComment}>이런 펀딩 어때요?</div>

                <div className={styles4.other}>
                    <div className={styles4.otherLeft}>
                        <div className={styles4.inner}>
                            <img src="../../img/집중.png" alt="img18" />
                            <div className={styles4.author}>시선집중 프로젝트</div>
                            <div className={styles4.title}>
                                후원자들의 취향이 궁금했다면 주목! 모두의 시선을 사로잡은 보물 같은 프로젝트들을 만나보세요.
                            </div>
                        </div>
                    </div>

                    <div className={styles4.otherRight}>
                        <div className={styles4.otherOne}>
                            {/* 첫 번째 그룹의 이미지 카드들 */}
                            <div className={styles4.otherPic_container}>
                                <div className={styles4.inner} id="otherPic_1">
                                    <img src="../../img/사진49.jpeg" alt="img30" />
                                    <div className={styles4.comment}>
                                        <div className={styles4.author}>annie chung</div>
                                        <div className={styles4.title}>HOW CAN I FORGET YOU?</div>
                                    </div>
                                </div>
                            </div>

                            <div className={styles4.otherPic_container}>
                                <div className={styles4.inner} id="otherPic_1">
                                    <img src="../../img/사진41.jpg" alt="img30" />
                                    <div className={styles4.comment}>
                                        <div className={styles4.author}>HB PRESS</div>
                                        <div className={styles4.title}>빛나는 작은 가게들, small store</div>
                                    </div>
                                </div>
                            </div>

                            <div className={styles4.otherPic_container}>
                                <div className={styles4.inner} id="otherPic_2">
                                    <img src="../../img/사진43.jpeg" alt="img28" />
                                    <div className={styles4.comment}>
                                        <div className={styles4.author}>repaly</div>
                                        <div className={styles4.title}>필름으로 창조한 우리들만의 세계</div>
                                    </div>
                                </div>
                            </div>

                            <div className={styles4.otherPic_container}>
                                <div className={styles4.inner} id="otherPic_3">
                                    <img src="../../img/사진45.jpeg" alt="img28" />
                                    <div className={styles4.comment}>
                                        <div className={styles4.author}>Tory Film</div>
                                        <div className={styles4.title}>같이 찍어요, 토리 필름 카메라</div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div className={styles4.otherOne}>
                            {/* 두 번째 그룹의 이미지 카드들 */}
                            <div className={styles4.otherPic_container}>
                                <div className={styles4.inner} id="otherPic_1">
                                    <img src="../../img/사진58.JPG" alt="img30" />
                                    <div className={styles4.comment}>
                                        <div className={styles4.author}>Time</div>
                                        <div className={styles4.title}>사랑을 발견하는 가족사진 출장 촬영</div>
                                    </div>
                                </div>
                            </div>

                            <div className={styles4.otherPic_container}>
                                <div className={styles4.inner} id="otherPic_1">
                                    <img src="../../img/사진42.jpg" alt="img30" />
                                    <div className={styles4.comment}>
                                        <div className={styles4.author}>Days</div>
                                        <div className={styles4.title}>직접 담은 각 나라의 순간들을 제품으로 구현</div>
                                    </div>
                                </div>
                            </div>

                            <div className={styles4.otherPic_container}>
                                <div className={styles4.inner} id="otherPic_2">
                                    <img src="../../img/가로작품9 (3).jpg" alt="img28" />
                                    <div className={styles4.comment}>
                                        <div className={styles4.author}>시선</div>
                                        <div className={styles4.title}>너머의 감정, 엽서북과 포스터</div>
                                    </div>
                                </div>
                            </div>

                            <div className={styles4.otherPic_container}>
                                <div className={styles4.inner} id="otherPic_3">
                                    <img src="../../img/photographer-5353515_1920.jpg" alt="img28" />
                                    <div className={styles4.comment}>
                                        <div className={styles4.author}>address</div>
                                        <div className={styles4.title}>당신께 감동을 드립니다.</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    );
};

export default Page4;
