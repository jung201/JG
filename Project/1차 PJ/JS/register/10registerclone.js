document.getElementById('addProductBtn').addEventListener('click', function (event) {
    event.preventDefault(); // 페이지 새로고침 방지

    // 입력된 수량과 상품명을 가져오기
    const quantitypirce = document.getElementById('quantitypirceInput').value;
    const quantity = document.getElementById('quantityInput').value;
    const productName = document.getElementById('productNameInput').value;


    // 수량이나 상품명이 입력되지 않으면 경고창 표시
    if (!quantity || !productName || !quantitypirce) {
        alert('상품 정보를 모두 입력해 주세요.');
        return;
    }

    // 상품 정보를 담을 div 생성
    const productInfoDiv = document.createElement('div');
    productInfoDiv.classList.add('product-info');

    // 상품 정보를 추가할 HTML 템플릿 (이미지를 제거하고 입력된 수량, 상품명만 포함)
    productInfoDiv.innerHTML = `
        <div class="product-card">
            <div class="product-details">
                <p>•${quantitypirce}원+</p>
                <p>•${productName} x ${quantity}</p>
                
            </div>
        </div>
    `;

    // 생성된 div를 페이지에 추가
    document.getElementById('productInfoContainer').appendChild(productInfoDiv);

    // 입력 필드 초기화
    document.getElementById('quantityInput').value = '';
    document.getElementById('productNameInput').value = '';
});
