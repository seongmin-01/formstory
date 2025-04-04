<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상품상세보기</title>
    <link rel="stylesheet" href="/farmStory/css/shopping/productDetail.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
	<script src="/farmStory/js/calculate.js"></script>
</head>
<body>
    <div id="wrapper">
		<%@ include file="/../../header.jsp" %>
        <main>
            <div class="main_container">
                <div class="sub_top_container">
                    <img src="/farmStory/images/sub_top_tit2.png" alt="마켓">
                </div>
                <section>
                     <%@include file="./_side.jsp"%>
                    <article>
                        <div class="nav_bar">
                            <nav>
                                <img src="/farmStory/images/sub_nav_tit_cate2_tit1.png" alt="장보기">
                            </nav>
                            <div>
                                <p>HOME > 장보기 > <span style="color: #91ba23; font-weight: 700;">장보기</span></p>
                            </div>
                        </div>
                        <c:forEach var="dto" items="${dtos}">
                        <div class="sub_page">
                            <p class="subtitle">기본정보</p>
                            
                            
                            <div class="basic_info">
                            
                             
                                <div>
                                    <img src="/farmStory/uploadImg/${dto.sName}" alt="상품이미지">
                                    <div class="form_container">
                                        <form action="#">
                                            <table>
                                       
                                                <tr>
                                                    <td>상품명</td>
                                                    <td>${dto.pName}</td>
                                                </tr>
                                                <tr>
                                                    <td>상품코드</td>
                                                    <td>${dto.pid}</td>
                                                </tr>
                                                <tr>
                                                    <td>배송비</td>
                                                    <td>${dto.charge}원 &nbsp;<span style="color: #777;">3만원 이상 무료배송</span></td>
                                                </tr>
                                                <tr>
                                                    <td>판매가격</td>
												    <td id="price" data-price="${dto.price}">${dto.price}원</td>
												</tr>
												<tr>
												    <td>구매수량</td>
												    <td>
												        <input type="number" id="quantity" value="1" min="1" max="1000" oninput="updateTotal()">
												    </td>
												</tr>
												<tr>
												    <td>합계</td>
												    <td><span id="total" style="color: #C20a0a; font-weight: 700;">${dto.price}원</span></td>
												</tr>
                                            </table>
                                            <div class="btn_container">
                                                <a href="#">
                                                    <p class="btn btn_cart">장바구니</p>
                                                </a>
                                                <a href="#">
                                                    <p class="btn btn_purchase">바로구매</p>
                                                </a>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                         
                            </div>
                            
                            <p class="subtitle">상품설명</p>
                            <div class="product_desc">
                                <p>${dto.other}</p>
                            </div>
                            </c:forEach>

                            <p class="subtitle">배송정보</p>
                            <div class="shipping_info">
                                <p>입금하신 이후 택배송장번호는 SMS(문자서비스)를 통해 고객님께 안내해드립니다.</p>
                            </div>
                            
                            <p class="subtitle">교환/반품</p>
                            <div class="exchange_return">
                                <table>
                                    <tr>
                                        <td>교환 반품이 가능한 경우</td>
                                        <td>
                                            팜스토리 상품에 하자가 있거나 불량인 경우<br>
                                            채소, 과일, 양곡등의 식품은 만1일 이내<br>
                                            기타 상품은 수령일로부터 영업일 기준 일주일 이내<br>
                                            받으신 상품이 표시사항과 다른 경우에는 받으신 날로부터 일주일 이내
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>교환 반품이 불가능한 경우</td>
                                        <td>
                                            신선 식품의 경우 단순히 마음에 들지 않는 경우<br>
                                            단순 변심으로 상품이 가치가 훼손돼서 판매가 어려운 경우
                                        </td>
                                    </tr>
                                </table>
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