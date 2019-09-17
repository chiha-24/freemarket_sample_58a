$(document).on("turbolinks:load", function(){
  $("#product_price").keyup(function(){
    var inputPrice = Number($(this).val());
    if(inputPrice >= 300 && inputPrice < 10000000){
      var fee = Math.floor(inputPrice * 0.1);
      var benefit = inputPrice - fee;
      $('#price_fee').text("¥" + fee.toLocaleString()),
      $('#price_benefit').text("¥" + benefit.toLocaleString())
    }else{
      $('#price_fee').text("ー");
      $('#price_benefit').text("ー");
    }
  });
})
$(function(){
  var inputPrice = $('#product_price').val()
  $('.sell-container-right__price-fee__price').textContent = inputPrice * 0.1
})
