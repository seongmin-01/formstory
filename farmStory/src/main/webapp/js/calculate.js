function updateTotal() {
    let price = parseInt(document.getElementById("price").dataset.price); // 원래 가격
    let quantity = parseInt(document.getElementById("quantity").value); // 입력된 수량
    let total = price * quantity; // 가격 * 수량
    document.getElementById("total").innerText = total + "원"; // 합계 업데이트
}
