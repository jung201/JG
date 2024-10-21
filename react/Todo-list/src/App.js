import React, { useState, useCallback } from "react";
import './App.css';
import TodoTemplate from "./TodoList/TodoTemplate";
import TodoInsert from "./TodoList/TodoInsert";
import TodoList from "./TodoList/TodoList";

function App() {
  const [todos, setTodos] = useState([
    {
      id: 1,
      text: '리액트 공부하기',
      checked: true
    },
    {
      id: 2,
      text: '운동하기',
      checked: false
    },
  ]);

  const onInsert = useCallback((text) => {
    const todo = {
      id: todos.length + 1,
      text,
      checked: false
    };
    setTodos(todos.concat(todo));
  }, [todos]);

  const onRemove = useCallback((id) => {
    setTodos(todos.filter(todo => todo.id !== id));
  }, [todos]);

  const onToggle = useCallback((id) => {
    setTodos(
      todos.map(todo =>
        todo.id === id ? { ...todo, checked: !todo.checked } : todo
      )
    );
  }, [todos]);

  return (
    <TodoTemplate>
      <TodoInsert onInsert={onInsert} />
      <TodoList todos={todos} onRemove={onRemove} onToggle={onToggle} />
    </TodoTemplate>
  );
}

export default App;

// function App() {

//   let [글제목, 글제목변경] = useState('남자 코드 추천');
//   let [따봉, 따봉변경] = useState(0);

//   let posts = '강남 고기 맛집';
//   return (
//     <div className="App">
//       <div className="black-nav">
//         <div> 개발 Blog</div>
//       </div>
//       <div className="list">
//         <h3> {글제목} <span onClick={() => { 따봉변경(따봉 + 1) }}>👌</span>
//           {따봉}</h3>
//         <p>2월 17일 발행</p>
//         <hr />
//       </div>
//     </div>
//   )
// }





// 이벤트 핸들링 //
// function App() {
//   const onSubmit = () => {
//     alert(`subMitted`);
//   };
//   const onKeyUp = (event) => {
//     console.log(`key up`);

//     // 누른키의 이벤트를 받아오는 if 함수
//     // 키 코드가 13이면 서브밋 동작 13은 엔터
//     if (event.keyCode === 12) {
//       onSubmit();
//     }//   }


//   // onKeyUp 키보드가 눌렀다가 올라올때 이벤트 발생
//   return (
//     <div className="App">
//       <input onKeyUp={onKeyUp} />
//       <button onClick={onSubmit}>Submit</button>
//     </div>
//   )
// }

// ===================================================================

// 리액트 훅스 useState //

// import React, { useState } from "react";

// function App() {
//   const [text, setText] = useState('Kossie');
//   const updateText = () => {
//     setText(`Coder`);
//     console.log(text);
//   }

//   return (
//     <div className="App">
//       <span>{text}</span>
//       <button onClick={updateText}>Update</button>
//     </div>
//   )
// }


// ===================================================================

// 폼에서 useState 사용하기 //

// import React, { useState } from "react";

// function App() {
//   const [username, setUsername] = useState('');
//   const [password, setPassword] = useState('');
//   const onSubmit = (event) => {
//     event.preventDefault(); // submit의 초기화 작동을 멈춤
//     console.log(username, password);

//   };

//   return (
//     <div className="App">
//       <form onSubmit={onSubmit}>
//         <input
//           placeholder="Username"
//           value={username}
//           onChange={(e) => setUsername(e.target.value)} /><br />
//         <input
//           placeholder="Password"
//           value={password}
//           onChange={(e) => setPassword(e.target.value)} /><br />
//         <button type="submit">Login</button>
//       </form>
//     </div>
//   )
// }







