import React from "react";
import styles2 from "./page2.module.scss";


const Page2 = () => {
    return (
        <>
            <main className={styles2.main_2}>
                <div className={styles2.subPicComment}>주목할 만한 펀딩</div>
                <section>
                    {/* <!-- 첫번째 --> */}
                    <div className={styles2.pic_container}>
                        <ul className={styles2.pic_list}>
                            <li className={styles2.list}><img src="../../img/camera-1438003_1280.jpg" alt="img17" /></li>
                            <li className={styles2.list}><img src="../../img/camera-1438003_1280.jpg" alt="img13" /></li>
                            <li className={styles2.list}><img src="../../img/배경23.png" alt="img14" /></li>
                            <li className={styles2.list}><img src="../../img/kayak-5543935_1920.jpg" alt="img18" /></li>
                            <li className={styles2.list}><img src="../../img/camera-1438003_1280.jpg" alt="img20" /></li>
                        </ul>
                        <button className={styles2.btn1 + ' prevBtn'}>
                            <i className="fa-solid fa-angle-left fa-2x"></i>
                        </button>
                        <button className={styles2.btn2 + ' nextBtn'}>
                            <i className="fa-solid fa-angle-right fa-2x"></i>
                        </button>
                    </div>
                    {/* <!-- 두번째 --> */}
                    <div className={styles2.pic_container}>
                        <ul className={styles2.pic_list}>
                            <li><img src="../../img/배경12.png" alt="img12" /></li>
                            <li><img src="../../img/배경18.jpg" alt="img18" /></li>
                            <li><img src="../../img/배경15.jpg" alt="img15" /></li>
                            <li><img src="../../img/배경20.jpg" alt="img20" /></li>
                            <li><img src="../../img/photographer-407068_1920.jpg" alt="img13" /></li>
                        </ul>
                        <button className={styles2.btn3 + ' prevBtn'}>
                            <i className="fa-solid fa-angle-left fa-2x"></i>
                        </button>
                        <button className={styles2.btn4 + ' nextBtn'}>
                            <i className="fa-solid fa-angle-right fa-2x"></i>
                        </button>
                    </div>
                    {/* <!-- 세번째 --> */}
                    <div className={styles2.pic_container}>
                        <ul className={styles2.pic_list}>
                            <li><img src="../../img/배경13.jpg" alt="img13" /></li>
                            <li><img src="../../img/배경1.png" alt="img6" /></li>
                            <li><img src="../../img/배경30.png" alt="img3" /></li>
                            <li><img src="../../img/배경11.jpg" alt="img11" /></li>
                            <li><img src="../../img/kayak-5543935_1920.jpg" alt="img15" /></li>
                        </ul>
                        <button className={styles2.btn5 + ' prevBtn'}>
                            <i className="fa-solid fa-angle-left fa-2x"></i>
                        </button>
                        <button className={styles2.btn6 + ' nextBtn'}>
                            <i className="fa-solid fa-angle-right fa-2x"></i>
                        </button>
                    </div>
                    {/* <!-- 네번째 --> */}
                    <div className={styles2.pic_container}>
                        <ul className={styles2.pic_list}>
                            <li><img src="../../img/배경27.png" alt="img6" /></li>
                            <li><img src="../../img/배경20.jpg" alt="img20" /></li>
                            <li><img src="../../img/배경16.jpg" alt="img16" /></li>
                            <li><img src="../../img/배경18.jpg" alt="img18" /></li>
                            <li><img src="../../img/figures-1384865_1920.jpg" alt="img19" /></li>
                        </ul>
                        <button className={styles2.btn7 + ' prevBtn'}>
                            <i className="fa-solid fa-angle-left fa-2x"></i>
                        </button>
                        <button className={styles2.btn8 + ' nextBtn'}>
                            <i className="fa-solid fa-angle-right fa-2x"></i>
                        </button>
                    </div>
                </section>
            </main>
        </>
    );
};
export default Page2;