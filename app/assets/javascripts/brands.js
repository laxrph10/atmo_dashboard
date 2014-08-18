$(document).ready(function () {
  function hideForm() {
    $('.edit_brand').remove();
    $('.brand').show();
    $('.edit').show();
  }

  function ajaxEditBrand() {
    var brandId = $('.brand').data('id');
    $.ajax({
      type: "GET",
      url: "/brands/" + brandId + "/edit",
      dataType: "script"
    });
  }

  $('.edit').on('click', function (e) {
    e.preventDefault();
    ajaxEditBrand();
  });

});