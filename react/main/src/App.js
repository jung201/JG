import React from 'react';
import Header from './clone/header'; // Header 컴포넌트 import
import Page1 from './clone/page1'; // Header 컴포넌트 import
import Page2 from './clone/page2'; // Header 컴포넌트 import
import Page3 from './clone/page3'; // Header 컴포넌트 import
import Page4 from './clone/page4'; // Header 컴포넌트 import
import Page5 from './clone/page5'; // Header 컴포넌트 import
import { BrowserRouter as Router } from 'react-router-dom';

function App() {
    return (
        <Router>
            <Header />
            <Page1 />
            <Page2 />
            <Page3 />
            <Page5 />
        </Router>
    );
}

export default App;
