<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상품등록</title>
    <link rel="stylesheet" href="/farmStory/css/adminProductManagement/adminProductR.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
</head>
<body>
    <div id="wrapper">
    <%@ include file="../adminMain/_header.jsp" %>
        <main>
           <%@include file="../adminMain/_aside.jsp"%>

        <section>
            <nav class="heading2">상품등록</nav>
            <article>
                <form action="/farmStory/adminPro/register.do" method="post" enctype="multipart/form-data">
                    <table>
                     <tr class="table_tr">
                            <td>상품코드</td>
                            <td><input type="text" name="pid"></td>
                        </tr>
                        <tr class="table_tr">
                            <td>상품명</td>
                            <td><input type="text" name="pName"></td>
                        </tr>
                        <tr class="table_tr">
                            <td>종류</td>
                            <td>
                            <select class="op" name="types">
                            	<option value="과일">과일</option>
                            	<option value="야채">야채</option>
                            	<option value="곡류">곡류</option>
                            </select>
                            </td>
                        </tr>
                        <tr class="table_tr">
                            <td>가격</td>
                            <td><input type="text" name="price"></td>
                        </tr>
                        <tr class="table_tr">
                            <td>포인트</td>
                            <td><input type="number" name="point" placeholder="100"><span class="p_point">포인트는 가격의 1%</span></td>
                        </tr>
                        <tr class="table_tr">
                            <td>할인</td>
                            <td>
                            <select class="op" name="discount">
                            	<option value="10">10%</option>
                            	<option value="20">20%</option>
                            	<option value="30">30%</option>
                            </select>
                            </td>
                        </tr>
                        <tr class="table_tr">
                            <td><p>배송비</p></td>
                            <td class="radio">
                                <label><input type="radio" name="charge" value="2000">2,000원</label>
                                <label><input type="radio" name="charge" value="3000">3,000원</label>
                                <label><input type="radio" name="charge" value="4000">5,000원</label>
                                <label><input type="radio" name="charge" value="0">무료</label>
                            </td>    

                        </tr>
                        <tr class="table_tr">
                            <td class="td">재고</td>
                            <td><input type="text" name="stock"></td>
                        </tr>

                        <tr class="table_tr2">
                            <td>상품이미지</td>
                            <td class="td_img">
                                <p>상품목록 이미지(약 120 x 120)</p>
                                <input type="file" name="pImage1"> <br>
                                <p>기본정보 이미지(약 240 x 240)</p>
                                <input type="file" name="pImage2"> <br>
                                <p>상품목록 이미지(약 750 x Auto)</p>
                                <input type="file" name="pImage3">
                            </td>
                        </tr>
                        <tr class="table_tr3">
                            <td>기타</td>
                            <td><input type="text" name="other" class="footerinput"></td>
                        </tr>
                    </table>
                    <div class="form-ft">
                        <a href="#">취소</a>
                        <input type="submit" value="상품등록" class="submit">
                    </div>    
                </form>
            </article>
        </section>

        </main>
		<%@ include file="../adminMain/_footer.jsp" %>
    </div>
</body>
</html>