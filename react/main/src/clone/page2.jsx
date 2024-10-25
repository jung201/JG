import React from "react";
import styles2 from "./page2.module.scss";
import { FaAngleLeft, FaAngleRight } from 'react-icons/fa';

const Page2 = () => {
    return (
        <main>
            <div className={styles2.subPicComment}>주목할 만한 펀딩</div>
            <sub>
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
                        <FaAngleLeft className="icon-large " />
                    </button>
                    <button className={styles2.btn2 + ' nextBtn'}>
                        <FaAngleRight className="icon-large " />
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
                        <FaAngleLeft className="icon-large " />
                    </button>
                    <button className={styles2.btn4 + ' nextBtn'}>
                        <FaAngleRight className="icon-large " />
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
                        <FaAngleLeft className="icon-large " />
                    </button>
                    <button className={styles2.btn6 + ' nextBtn'}>
                        <FaAngleRight className="icon-large " />
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
                        <FaAngleLeft className="icon-large" />
                    </button>
                    <button className={styles2.btn8 + ' nextBtn'}>
                        <FaAngleRight className="icon-large" />
                    </button>
                </div>
            </sub>
        </main>
    );
};
export default Page2;

// import React, { useState } from "react";
// import styles2 from "./page2.module.scss";
// import { FaAngleLeft, FaAngleRight } from 'react-icons/fa';

// const ImageSlider = ({ images }) => {
//     const [currentIndex, setCurrentIndex] = useState(0);

//     const showPreviousImage = () => {
//         setCurrentIndex((prevIndex) => (prevIndex - 1 + images.length) % images.length);
//     };

//     const showNextImage = () => {
//         setCurrentIndex((prevIndex) => (prevIndex + 1) % images.length);
//     };

//     return (
//         <div className={styles2.pic_container}>
//             <ul className={styles2.pic_list}>
//                 {images.map((img, index) => (
//                     <li
//                         key={index}
//                         className={styles2.list}
//                         style={{ display: index === currentIndex ? "block" : "none" }}
//                     >
//                         <img src={img.src} alt={img.alt} />
//                     </li>
//                 ))}
//             </ul>
//             <button onClick={showPreviousImage} className={styles2.btn1 + ' prevBtn'}>
//                 <FaAngleLeft className="icon-large" />
//             </button>
//             <button onClick={showNextImage} className={styles2.btn2 + ' nextBtn'}>
//                 <FaAngleRight className="icon-large" />
//             </button>
//         </div>
//     );
// };

// const Page2 = () => {
//     // 각 슬라이드 이미지 배열
//     const sliderImages1 = [
//         { src: "../../img/camera-1438003_1280.jpg", alt: "img17" },
//         { src: "../../img/camera-1438003_1280.jpg", alt: "img13" },
//         { src: "../../img/배경23.png", alt: "img14" },
//         { src: "../../img/kayak-5543935_1920.jpg", alt: "img18" },
//         { src: "../../img/camera-1438003_1280.jpg", alt: "img20" },
//     ];

//     const sliderImages2 = [
//         { src: "../../img/배경12.png", alt: "img12" },
//         { src: "../../img/배경18.jpg", alt: "img18" },
//         { src: "../../img/배경15.jpg", alt: "img15" },
//         { src: "../../img/배경20.jpg", alt: "img20" },
//         { src: "../../img/photographer-407068_1920.jpg", alt: "img13" },
//     ];

//     // 추가 슬라이더 데이터
//     const sliderImages3 = [
//         { src: "../../img/배경13.jpg", alt: "img13" },
//         { src: "../../img/배경1.png", alt: "img6" },
//         { src: "../../img/배경30.png", alt: "img3" },
//         { src: "../../img/배경11.jpg", alt: "img11" },
//         { src: "../../img/kayak-5543935_1920.jpg", alt: "img15" },
//     ];

//     const sliderImages4 = [
//         { src: "../../img/배경27.png", alt: "img6" },
//         { src: "../../img/배경20.jpg", alt: "img20" },
//         { src: "../../img/배경16.jpg", alt: "img16" },
//         { src: "../../img/배경18.jpg", alt: "img18" },
//         { src: "../../img/figures-1384865_1920.jpg", alt: "img19" },
//     ];

//     return (
//         <main>
//             <div className={styles2.subPicComment}>주목할 만한 펀딩</div>
//             <sub>
//                 <ImageSlider images={sliderImages1} />
//                 <ImageSlider images={sliderImages2} />
//                 <ImageSlider images={sliderImages3} />
//                 <ImageSlider images={sliderImages4} />
//             </sub>
//         </main>
//     );
// };

// export default Page2;
