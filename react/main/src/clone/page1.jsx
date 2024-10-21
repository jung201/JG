import React from "react";
import styles from "./page1.module.scss";

import photo38 from './img/사진38.jpeg';
import photo34 from './img/사진34.jpeg';
import photo32 from './img/사진32.jpeg';
import photo33 from './img/사진33.jpeg';
import photo40 from './img/사진40.jpg';

const MainBox = () => {
  return (
    <div className="mainBox">
      {/* 왼쪽 사진 부분 */}
      <div className="left">
        {/* 메인 슬라이더 */}
        <section>
          <div className="pic_container">
            <ul className="pic_slider">
              <li><img src={photo38} alt="img23" /></li>
              <li><img src={photo34} alt="img29" /></li>
              <li><img src={photo32} alt="img25" /></li>
              <li><img src={photo33} alt="img25" /></li>
              <li><img src={photo40} alt="img25" /></li>
            </ul>
          </div>
        </section>
      </div>
    </div>
  );
};

export default MainBox;