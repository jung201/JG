function setThumbnail(input) {
    const container = document.getElementById("image_container");
    container.innerHTML = ''; // 기존 미리보기 이미지 제거

    for (const image of input.files) {
        const reader = new FileReader();

        reader.onload = function (event) {
            const img = new Image();
            img.src = event.target.result;

            img.onload = function () {
                const canvas = document.createElement("canvas");
                const ctx = canvas.getContext("2d");

                const maxWidth = 80;
                const maxHeight = 80;
                let width = img.width;
                let height = img.height;

                // 비율 유지하면서 리사이즈
                if (width > height) {
                    if (width > maxWidth) {
                        height = Math.round((height * maxWidth) / width);
                        width = maxWidth;
                    }
                } else {
                    if (height > maxHeight) {
                        width = Math.round((width * maxHeight) / height);
                        height = maxHeight;
                    }
                }

                canvas.width = width;
                canvas.height = height;
                ctx.drawImage(img, 0, 0, width, height);

                const resizedImage = canvas.toDataURL("image/png");
                const resizedImgElement = document.createElement("img");
                resizedImgElement.setAttribute("src", resizedImage);
                resizedImgElement.classList.add('preview-image');
                container.appendChild(resizedImgElement);
            };
        };

        reader.readAsDataURL(image); // 파일을 Data URL로 읽기
    }
}


// 추가
// function loadFile(input) {
//     let file = input.files[0]; // 선택파일 가져오기

//     let newImage = document.createElement("img"); //새 이미지 태그 생성

//     //이미지 source 가져오기
//     newImage.src = URL.createObjectURL(file);
//     newImage.style.width = "100%"; //div에 꽉차게 넣으려고
//     newImage.style.height = "100%";
//     newImage.style.objectFit = "cover"; // div에 넘치지 않고 들어가게

//     //이미지를 image-show div에 추가
//     let container = document.getElementById('image-show');
//     container.appendChild(newImage);
// }
