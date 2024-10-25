import React from "react";
import styles5 from "./page5.module.scss"; // 필요한 CSS 모듈을 불러옵니다.5

const page5 = () => {
    return (
        <main>
            <div className={styles5.explain}>
                <hr className={styles5.linee} width="100%" color="black" />
                <br /><br />
                <p className={styles5.company}>
                    직박구리(주) 대표이사 직박구리 사업자등록번호 123-456-678910 통신판매업신고번호 2024-천안시C-1234 충남 천안시 동남구 111-111호
                    <br /><br />
                    이메일상담 zip@zicbac.kr 유선상담 1234-1234 zicbac Co., Ltd.
                </p>
                <p className={styles5.companyx}>
                    직박구리는 플랫폼 제공자로서 직접적인 통신판매를 진행하지 않습니다. 상품의 정보, 상품, 거래에 관한 의무와 책임은 판매자에게 있으므로 구체적인 내용을 확인하시길 바랍니다.
                    직박구리 사이트의 등록된 사진, 콘텐츠 UI 등에 대한 무단복제, 전송 등의 행위는 저작권법, 콘텐츠 산업 진흥법 등 관련 법령에 위배됩니다.
                </p>
            </div>
        </main>
    );
};

export default page5;
