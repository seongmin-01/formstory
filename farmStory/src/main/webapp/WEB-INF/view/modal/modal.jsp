<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="confirm-modal" class="modal">
    <div class="modal-content">
        <p class="ruOk">정말로 탈퇴하시겠습니까?</p>
        <form id="delete-form" action="/farmStory/myInfo/removeUser.do" method="post">
            <button type="submit" class="confirm-btn">확인</button>
            <button type="button" class="cancel-btn" id="cancel-btn">취소</button>
        </form>
    </div>
</div>
