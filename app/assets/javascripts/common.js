$(document).on('turbolinks:load', function(){

  $.ajaxSetup({
    headers: {
      'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
    }
  });

  $(".hide_role").on('change', function(){
    var clicked_object = $(this);
    $.ajax({
        url: '/roles/'+clicked_object.data('id'),
        type : "PUT",
        data: {
          role: {
            is_active: (clicked_object.attr('value') === 'true' ? false : true)
          }
        }
    });
    
  });
});