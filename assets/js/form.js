$('#shortURL').submit(function(event) {

    event.preventDefault();

    $.ajax({
        type: $(this).attr('method'),
        url: $(this).attr('action'),
        data: new FormData(this),
        // dataType: 'json',
        contentType: false,
        cache: false,
        processData: false,
        success: function(result) {
            $("#result_send").html(result);
            if (result['status'] == '1') {
                $("#result_send").html(result['error']);
                $("#shortURL")[0].reset();
            } else {
                $("#result_send").html(result['error']);
            }
        },
    });


});