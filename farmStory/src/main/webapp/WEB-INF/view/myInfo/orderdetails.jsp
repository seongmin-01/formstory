<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>주문내역</title>
    <link rel="stylesheet" href="/farmStory/css/myInfo/orderdetails.css">
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
                    <img src="/farmStory/images/myinfo/myinfo_top_tit.png" alt="나의정보">
                </div>
                <section>
                    <aside>
                        <div>
                            <img src="/farmStory/images/myinfo/myinfo_menu_tit.png" alt="나의정보">
                        </div>
                        <div>
                        	<a href="/farmStory/myInfo/myCart.do">
                            	<img src="/farmStory/images/myinfo/myinfo_menu1.png" alt="장바구니">
                            </a>
                            <a href="/farmStory/myInfo/myOrder.do">
                            	<img src="/farmStory/images/myinfo/myinfo_menu2_ov.png" alt="주문내역">
                            </a>
                            <a href="/farmStory/myInfo/modifyInfo.do">
                            	<img src="/farmStory/images/myinfo/myinfo_menu3.png" alt="정보수정">
                        	</a>
                        </div>
                    </aside>
                    <article>
                        <div class="nav_bar">
                            <nav>
                                <img src="/farmStory/images/myinfo/myinfo_nav_tit2.png" alt="주문내역">
                            </nav>
                            <div>
                                <p>HOME > 나의정보 > <span style="color: #91ba23; font-weight: 700;">주문내역</span></p>
                            </div>
                        </div>
                        <div class="sub_page2">
                            <table>
                                <tr>
                                    <th>주문번호</th>
                                    <th>이미지</th>
                                    <th>상품명</th>
                                    <th>판매가격</th>
                                    <th>수량</th>
                                    <th>합계</th>
                                    <th>주문자</th>
                                    <th>주문일</th>
                                    <th>확인<span style="color: #777; font-weight: normal;"></span></th>

                                </tr>
                                <tr class="tr_d">
                                    <td colspan="9">
                                        <p>상품 구매 내역이 없습니다.</p>
                                    </td>
                                </tr>

                                <tr class="tr_d">
                                <td>1001</td>
                                <td>
                                    <a href="#"><img src="/farmStory/images/market_item1.jpg" alt="사과" class="apple"></a>
                                </td>
                                <td>사과<br>500g</td>
                                <td>4,000<br>원</td>
                                <td>2</td>
                                <td>11,000<br>원</td>
                                <td>김유신</td>
                                <td>2023-01-01 13:06:14</td>
                                <td>[상세확인]</td>
                                </tr>
                            </table>
                            <div class="sub_page3">
                               <a href="#" class="prev">이전</a>
                               <a href="#" class="num no">1</a>
                               <a href="#" class="num">2</a>
                               <a href="#" class="num">3</a>
                               <a href="#" class="next">다음</a>
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
