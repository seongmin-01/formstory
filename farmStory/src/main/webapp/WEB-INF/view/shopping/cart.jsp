<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>장바구니</title>
    <link rel="stylesheet" href="/farmStory/css/shopping/cart.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
    <script src="/farmStory/js/cart.js"></script>
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
                                    <a href="#">장바구니 전체(10)</a>
                                </p>
                            </div>
                            <table>
                                <tr>
                                    <th>
                                        <input type="checkbox" class="allCheckbtn">
                                    </th>
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
                                    <td colspan="9">
                                        <p>장바구니에 상품이 없습니다.</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="checkbox" class="checkbtn">
                                    </td>
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
                                        <input type="checkbox" class="checkbtn">
                                    </td>
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
                                        <input type="checkbox" class="checkbtn">
                                    </td>
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
                            <button class="delete">선택삭제</button>
                            <div class="total">
                                <form action="#">
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
                                        <button class="order" type="submit">주문하기</button>
                                    </div>
                                </form>
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