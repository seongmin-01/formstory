document.addEventListener('DOMContentLoaded', function() {

    const allCheckbtn = document.querySelector(".allCheckbtn");
    const checkbtns = document.querySelectorAll(".checkbtn");
    
    // 전체 선택 체크박스 클릭 시 모든 체크박스 변경
    allCheckbtn.addEventListener("change", function () {
        checkbtns.forEach(checkbtn => checkbtn.checked = allCheckbtn.checked);
    });
    
    // 개별 체크박스 클릭 시 전체 선택 체크 여부 확인
    checkbtns.forEach(checkbtn => {
        checkbtn.addEventListener("change", function () {
            allCheckbtn.checked = [...checkbtns].every(cb => cb.checked);
        });
    });
});