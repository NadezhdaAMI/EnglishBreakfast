// вызов функции по завершению загрузки страницы
$(document).ready(function() {
    $('#ButtonID').click(function ()  {
        $.ajax({
            url : 'showphrase',     // URL - сервлет
            success : function(response) {
                // обработка ответа от сервера
                $('#ajaxUserServletResponse').text(response);
            }
        });
    });

});
