import React from 'react';
import Header from './clone/header'; // Header 컴포넌트 import
import Page1 from './clone/page1'; // Header 컴포넌트 import
import Page2 from './clone/page2'; // Header 컴포넌트 import
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';

function App() {
    return (
        <Router>
            <Header />
            <Page1 />
            <Page2 />
        </Router>
    );
}

export default App;
