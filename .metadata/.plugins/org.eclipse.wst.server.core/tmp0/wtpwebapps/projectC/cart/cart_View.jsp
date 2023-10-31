<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<link rel="stylesheet" href="../assets/css/cart.css?=3"/>
<title>장바구니</title>
</head>
<body>

<!-- Header -->
 <%@ include  file="../nav.jsp"%>
<form name="orderform" id="orderform" method="post" class="orderform" action="\page" onsubmit="return false;">
    
    		<h2 style="text-align: center;">BELLO - 장바구니</h2>
            <input type="hidden" name="cmd" value="order">
            <div class="basketdiv" id="basket">
                <div class="row head">
                    <div class="subdiv">
                        <div class="img">이미지</div>
                        <div class="pname">상품명</div>
                        <div class="size">사이즈</div>
                    </div>
                    <div class="subdiv">
                        <div class="basketprice">가격</div>
                        <div class="num">수량</div>
                        <div class="sum">합계</div>
                    </div>
                    <div class="subdiv">
    
                        <div class="basketcmd">삭제</div>
                    </div>
                    <div class="split"></div>
                </div>
              <c:forEach var="vo" items="${cartlist}">
                    
                <div class="row data">
                    <div class="subdiv">
                        <div class="img"><img src="/imageupload/${vo.clothesImage}" width="60"></div>
                        <div class="pname">
                            <span>${vo.clothesName}</span>
                        </div>
                       <div class="size1">${vo.clothesSize}</div>
                    </div>
                    <div class="subdiv">
                        <div class="basketprice1"><input type="hidden" name="p_price" id="p_price1" class="p_price"><fmt:formatNumber value="${vo.price2}" type="currency" currencySymbol="￦"/></div>
                        <div class="num">
                            <div class="updown">
                                <input type="number" name="p_num1" id="p_num1" min="1" size="2" maxlength="4" class="p_num" value="${vo.cartQuantity}" onchange="changeQNum(this,'${user.id}','${vo.clothesNum}')" >
                                <!--  onkeyup="javascript:basket.changePNum(1); -->
                            </div>
                        </div>
                        <div class="sum"><!-- 합계 -->
                        <fmt:formatNumber value="${vo.price2 * vo.cartQuantity}" type="currency" currencySymbol="￦"/>
                        </div>
                    </div>
                    <div class="subdiv">
                        <div class="basketcmd1"><a href="cart_deleteone.jsp?clothesNum=${vo.clothesNum}" class="abutton">삭제</a></div>
                    </div>
                </div>
            </c:forEach>
            </div>
    
            <div class="right-align basketrowcmd">
                <a href="cart_delete.jsp" class="abutton">장바구니비우기</a>
            </div>
    
            <div class="bigtext right-align sumcount" id="sum_p_num">상품항목: ${count}개</div>
            <div class="bigtext right-align box blue summoney" id="sum_p_price">합계금액: <fmt:formatNumber value="${sum}" type="currency" currencySymbol="￦"/></div>
    
            <div id="goorder" class="">
                <div class="clear"></div>
                <div class="buttongroup center-align cmd">
                    <a href="javascript:buy()">선택한 상품 주문</a>
                </div>
            </div>
        </form>
        <script type="text/javascript">
        	function buy() {
        		var status = ${fn:length(cartlist)} 
				if(status!=0){
					var yn = confirm("장바구니 상품을 구매하시겠습니까?")
					if(yn)
						window.location.href = "../buyhistory/buy_insert.jsp?id="+"${user.id}";
				}else {
					alert('장바구니 목록이 비어있습니다. 상품을 추가하신 후 다시 요청해주세요.');
				}
        	}
 		</script>       
        <!-- Footer -->
       
         
<script type="text/javascript">
function changeQNum(target,id,clothesNum){
	console.log(target.value)
	console.log(target)
	console.log(id)
	console.log(clothesNum)
	location.href="cart_update.jsp?id=" + id + "&clothesNum=" +clothesNum +"&cartQuantity="+target.value   //사용자 id와 상품번호를 조건으로 수량 업데이트 jsp -> 업데이트 후 cart_select.jsp 로 리다이렉트 
}

let basket = {
       totalCount: 0, 
       totalPrice: 0,
       //체크한 장바구니 상품 비우기
       delCheckedItem: function(){
           document.querySelectorAll("input[name=buy]:checked").forEach(function (item) {
               item.parentElement.parentElement.parentElement.remove();
           });
           //AJAX 서버 업데이트 전송
       
           //전송 처리 결과가 성공이면
           this.reCalc();
           this.updateUI();
       },
       //장바구니 전체 비우기
       delAllItem: function(){
           document.querySelectorAll('.row.data').forEach(function (item) {
               item.remove();
             });
             //AJAX 서버 업데이트 전송
           
             //전송 처리 결과가 성공이면
             this.totalCount = 0;
             this.totalPrice = 0;
             this.reCalc();
             this.updateUI();
       },
       //재계산
       reCalc: function(){
           this.totalCount = 0;
           this.totalPrice = 0;
           document.querySelectorAll(".p_num").forEach(function (item) {
               if(item.parentElement.parentElement.parentElement.previousElementSibling.firstElementChild.firstElementChild.checked == true){
                   var count = parseInt(item.getAttribute('value'));
                   this.totalCount += count;
                   var price = item.parentElement.parentElement.previousElementSibling.firstElementChild.getAttribute('value');
                   this.totalPrice += count * price;
               }
           }, this); // forEach 2번째 파라메터로 객체를 넘겨서 this 가 객체리터럴을 가리키도록 함. - thisArg
       },
       //화면 업데이트
       updateUI: function () {
           document.querySelector('#sum_p_num').textContent = '상품갯수: ' + this.totalCount.formatNumber() + '개';
           document.querySelector('#sum_p_price').textContent = '합계금액: ' + this.totalPrice.formatNumber() + '원';
       },
       //개별 수량 변경
       changePNum: function (pos) {
           var item = document.querySelector('input[name=p_num'+pos+']');
           var p_num = parseInt(item.getAttribute('value'));
           var newval = event.target.classList.contains('up') ? p_num+1 : event.target.classList.contains('down') ? p_num-1 : event.target.value;
           
           if (parseInt(newval) < 1 || parseInt(newval) > 99) { return false; }

           item.setAttribute('value', newval);
           item.value = newval;

           var price = item.parentElement.parentElement.previousElementSibling.firstElementChild.getAttribute('value');
           item.parentElement.parentElement.nextElementSibling.textContent = (newval * price).formatNumber()+"원";
           //AJAX 업데이트 전송

           //전송 처리 결과가 성공이면    
           this.reCalc();
           this.updateUI();
       },
       checkItem: function () {
           this.reCalc();
           this.updateUI();
       },
       delItem: function () {
           event.target.parentElement.parentElement.parentElement.remove();
           this.reCalc();
           this.updateUI();
       }
   }

   // 숫자 3자리 콤마찍기
   Number.prototype.formatNumber = function(){
       if(this==0) return 0;
       let regex = /(^[+-]?\d+)(\d{3})/;
       let nstr = (this + '');
       while (regex.test(nstr)) nstr = nstr.replace(regex, '$1' + ',' + '$2');
       return nstr;
   };
</script>

</body>




</html>