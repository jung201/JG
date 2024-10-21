// App.jsx
import React from "react";
import styles from "./header.module.scss";
import { Link } from 'react-router-dom';

function Header() {
  return (
    <header className={styles.header}>
      <div className={styles.top}>
        <Link to="/main" className="logo_pic" id="logo_picMain">
          <img src="/img/logo.png" alt="logo" />
        </Link>
        <div className={styles.jlmToBtn}>
          <button type="button" id="joinBtn">
            Join
          </button>
          <button type="button" id="loginBtn">
            Login
          </button>
          <button type="button" id="mypageBtn">
            MyPage
          </button>
          <button type="button" id="logoutBtn">
            Logout
          </button>
        </div>
      </div>
      <div className={styles.scroll}>
        <div className={styles.menu}>
          <ul className={styles.menu_inner}>
            <li id="ToHome">홈</li>
            <li id="ToList">펀딩 리스트</li>
            <li id="Toend">종료 펀딩</li>
            <li id="Topurchase_1">작품 구매</li>
          </ul>
        </div>
      </div>
    </header>
  );
}

export default Header;
