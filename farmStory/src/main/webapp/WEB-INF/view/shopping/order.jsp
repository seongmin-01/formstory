<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>주문하기</title>
    <link rel="stylesheet" href="/farmStory/css/shopping/order.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
</head>
<body>
    <div id="wrapper">
    	<%@ include file="/../../header.jsp" %>
        <main>
            <div class="main_container">
                <div class="sub_top_container">
                    <img src="/images/sub_top_tit2.png" alt="마켓">
                </div>
                <section>
                    <%@include file="./_side.jsp"%>
                    <article>
                        <div class="nav_bar">
                            <nav>
                                <img src="/images/sub_nav_tit_cate2_tit1.png" alt="장보기">
                            </nav>
                            <div>
                                <p>HOME > 장보기 > <span style="color: #91ba23; font-weight: 700;">장보기</span></p>
                            </div>
                        </div>
                        <div class="sub_page">
                            <div class="sub_page_p">
                                <p>
                                    <a href="#">주문상품 전체(10)</a>
                                </p>
                            </div>
                            <table>
                                <tr>
                                    <th>이미지</th>
                                    <th>종류</th>
                                    <th>상품명</th>
                                    <th>수량</th>
                                    <th>할인</th>
                                    <th>포인트</th>
                                    <th>가격</th>
                                    <th>소계</th>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="#"><img src="/images/market_item1.jpg" alt="사과" class="item_img"></a>
                                    </td>
                                    <td>과일</td>
                                    <td>사과 500g</td>
                                    <td>1</td>
                                    <td>10%</td>
                                    <td>400P</td>
                                    <td>4,000</td>
                                    <td>3,600<span style="color: #777; font-weight: normal;">원</span></td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="#"><img src="/images/market_item1.jpg" alt="사과" class="item_img"></a>
                                    </td>
                                    <td>과일</td>
                                    <td>사과 500g</td>
                                    <td>1</td>
                                    <td>10%</td>
                                    <td>400P</td>
                                    <td>4,000</td>
                                    <td>3,600<span style="color: #777; font-weight: normal;">원</span></td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="#"><img src="/images/market_item1.jpg" alt="사과" class="item_img"></a>
                                    </td>
                                    <td>과일</td>
                                    <td>사과 500g</td>
                                    <td>1</td>
                                    <td>10%</td>
                                    <td>400P</td>
                                    <td>4,000</td>
                                    <td>3,600<span style="color: #777; font-weight: normal;">원</span></td>
                                </tr>
                            </table>
                            
                            <div class="input_info">
                                <p class="sub_title">주문정보 입력</p>
                                <form action="#">
                                    <table>
                                        <tr>
                                            <td>주문자</td>
                                            <td>
                                                <input type="text" name="name" maxlength="5">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>휴대폰</td>
                                            <td>
                                                <input type="text" name="hp" maxlength="13">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>포인트 사용</td>
                                            <td>
                                                <input type="text" name="point"><button>사용하기</button>
                                                <p>사용가능 2,000P</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>받는분</td>
                                            <td>
                                                <input type="text" name="receiver" maxlength="5">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>연락처</td>
                                            <td>
                                                <input type="text" name="hp2" maxlength="13">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>배송주소</td>
                                            <td>
                                                <div class="zipSearch">
                                                    <input type="text" name="addr">
                                                    <button class="zipSearchBtn">
                                                        <img src="/images/user/btn_post_search.gif" alt="우편번호 검색">
                                                    </button>
                                                </div>
                                                <input type="text" name="addr2" class="addr" placeholder="기본주소 입력">
                                                <input type="text" name="addr3" class="addr" placeholder="상세주소 입력">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>결제방법</td>
                                            <td>
                                                <input type="radio" value="계좌이체">계좌이체
                                                <input type="radio" value="신용카드">신용카드
                                                <input type="radio" value="체크카드">체크카드
                                                <input type="radio" value="휴대폰">휴대폰
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>기타</td>
                                            <td>
                                                <textarea></textarea>
                                            </td>
                                        </tr>
                                    </table>
                                </form>
                            </div>
                            <div class="total">
                                <table>
                                    <tr>
                                        <th colspan="2">전체합계</th>
                                    </tr>
                                    <tr>
                                        <td>상품수</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>상품금액</td>
                                        <td>27,000원</td>
                                    </tr>
                                    <tr>
                                        <td>할인금액</td>
                                        <td>5,000원</td>
                                    </tr>
                                    <tr>
                                        <td>배송비</td>
                                        <td>5,000원</td>
                                    </tr>
                                    <tr>
                                        <td>포인트</td>
                                        <td>4,000원</td>
                                    </tr>
                                    <tr>
                                        <td>전체주문금액</td>
                                        <td><span style="font-size: 9px; font-weight: 700; color: #c20a0a;">22,000원</span></td>
                                    </tr>
                                </table>
                                <div class="btn_container">
                                    <button class="order">주문하기</button>
                                </div>
                            </div>
                        </div>
                    </article>
                </section>
            </div> 
        </main>

        <%@ include file="/../../footer.jsp" %>
        
    </div>
</body>
</html>