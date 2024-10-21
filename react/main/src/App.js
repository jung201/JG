import React from 'react';
import Header from './clone/header'; // Header 컴포넌트 import
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';

function App() {
    return (
        <Router>
            <Header />
            <Routes>
                {/* 예시로 몇 가지 페이지 추가 */}
                {/* <Route path="/" element={<HomePage />} /> */}
                {/* <Route path="/main" element={<MainPage />} /> */}
            </Routes>
        </Router>
    );
}

export default App;
