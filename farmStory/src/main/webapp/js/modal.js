document.addEventListener('DOMContentLoaded', function() {
	
	const modal = document.getElementById('confirm-modal');
    const modalContent = document.getElementById('modal-content');
    const body = document.body;

    document.getElementById('delete-btn').addEventListener('click', function() {
        modal.style.display = 'block';
        body.classList.add('modal-open'); // 스크롤 방지
    });

    document.getElementById('cancel-btn').addEventListener('click', function() {
        modal.style.display = 'none';
        body.classList.remove('modal-open'); // 스크롤 해제
    });

    // 모달 외부 클릭해도 닫히지 않도록 이벤트 막기
    modal.addEventListener('click', function(event) {
        event.stopPropagation();
    });

    // 모달 내부 클릭 시 닫히지 않게 방지
    modalContent.addEventListener('click', function(event) {
        event.stopPropagation();
    });
	
});

