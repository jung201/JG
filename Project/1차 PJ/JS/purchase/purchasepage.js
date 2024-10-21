//약관동의 js
document.getElementById('submitButton').addEventListener('click', function () {

  var checkbox = document.getElementById('agreeCheckbox');


  if (checkbox.checked) {
    alert('결제완료');
  } else {
    alert('약관에 동의해주세요.');
  }
});

//==================================================================================================

// 합계 금액 js 
(function (won) {
  var total, initialValue;
  var sum, options;
  var inc;


  var updateTotal = function (evt, cb) {
    inc = (this.checked ? 1 : -1);
    total += this.value * inc;


    sum.animate({ top: 12 * inc + "px" }, {
      duration: 150,
      easing: "linear",
      complete: function () {
        sum.css({ "top": 12 * (inc * -1) + "px" }).animate({ top: "0px" }, 100, "linear").text(total + "원");
        if (cb) { cb(); }
      }
    });
  };

  var initTotal = function () {

    var ind = 0;
    var selected;
    var opt, fn;

    total = initialValue;
    selected = options.filter(":checked");

    (fn = function () {
      if ((opt = selected[ind++])) {
        updateTotal.apply(opt, [null, fn]);
      }
    })();
  }


  $(function () {
    options = won('fieldset input[type=checkbox]');
    sum = won('#sum strong');
    initialValue = parseInt(won("fieldset>input[name=initialValue]").val(), 10);

    options.on('click', updateTotal);
    initTotal();

  });

})(jQuery);