<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>adminProduct</title>
    <link rel="stylesheet" href="/farmStory/css/adminProductManagement/adminProduct.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
	<script src="/farmStory/js/cart.js"></script>
</head>
</head>
<body>
    <div id="wrapper">
    <%@ include file="../adminMain/_header.jsp" %>
        <main>
            <%@include file="../adminMain/_aside.jsp"%>

            <section>
                <nav>상품목록</nav>
                <article class="art1">
                    <table>
                            <tr class="table_hd">
                                <td class="img"><input type="checkbox" class="allCheckbtn"></td>
                                <th>사진</th>
                                <th>상품번호</th>
                                <th>상품명</th>
                                <th>구분</th>
                                <th>가격</th>
                                <th>재고</th>
                                <th>등록일</th>
                            </tr>
                            
                             <c:forEach var="dto" items="${dtos}">
	                            <tr class="table_bd1">
	                                <td class="img"><input type="checkbox" class="checkbtn"></td>
	                                <td><img src="/farmStory/uploadImg/${dto.sName}"></td>
	                                <td>${dto.pid}</td>
	                                <td>${dto.pName}</td>
	                                <td>${dto.types}</td>
	                                <td>${dto.price}</td>
	                                <td>${dto.stock}</td>
	                                <td>${dto.pDate}</td>
                            	</tr>
                            </c:forEach>
                            
                    </table>
                    
                    <div class="main_a">
                        <a href="#">선택삭제</a>
                        <a href="/farmStory/adminPro/register.do"><p>상품등록</p></a>
                    </div>
                    <div class="main_a2"><a href="#">< [1] [2] [3] [4] [5] ></a></div>
                </article>
            </section>
        </main>
        <%@ include file="../adminMain/_footer.jsp" %>
    </div>
</body>
</html>