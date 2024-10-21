import React from 'react';
import Header from './clone/header'; // Header 컴포넌트 import
import { BrowserRouter as Router } from 'react-router-dom';

function App() {
    return (
        <Router>
            <Header />
            <page1 />
        </Router>
    );
}

export default App;
