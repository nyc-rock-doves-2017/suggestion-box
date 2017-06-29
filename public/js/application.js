$(document).ready(function() {

  $('#new-suggestion').click(function(e){
    e.preventDefault();
    $.ajax({
      url: '/suggestions/new',
      method: 'get'
    }).done(function(res){
      $('#new-suggestion').hide();
      $('#new-suggestion-wrapper').append(res)
    })
  })

  $('#new-suggestion-wrapper').on('submit','form',function(e){
    e.preventDefault()
    var $form = $(this)
    $.ajax({
      url: '/suggestions',
      method: 'post',
      data: $(this).serialize()
    }).done(function(res){
      $('ul').append(res)
      $form.remove()
      $('#new-suggestion').show();
    })
  })
});
