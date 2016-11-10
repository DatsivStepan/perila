$(document).ready(function () {
    // function checkForm(id) {
    //     if(typeof id != 'undefined'){
    //         if($('#'+id).val() == ''){
    //             return 0;
    //         }
    //     }
    //     switch (id) {
    //         case 'userName':
    //             if (!($( '#'+id).val().match(/^[a-zA-Zа-яА-Я]+$/)) || ($('#'+id).val().length < 3)) {
    //                 $('#errorMasege > .' + id).text('Некоректно заполнено Имя');
    //                 $('#' + id).css('border', '1px solid red');
    //                 $('#errorMasege > .' + id).show();
    //             } else {
    //                 $('#errorMasege > .' + id).text('');
    //                 $('#' + id).css('border', '1px solid green');
    //                 $('#errorMasege > .' + id).hide();
    //             }
    //             break;
    //         case 'userPhone':
    //             if (!($('#'+id).val().match(/^[0-9]+$/)) || ($('#'+id).val().length < 12)){
    //                 $('#errorMasege > .' + id).text('Некоректно заполнен телефон');
    //                 $('#' + id).css('border', '1px solid red');
    //                 $('#errorMasege > .' + id).show();
    //             } else {
    //                 $('#errorMasege > .' + id).text('');
    //                 $('#' + id).css('border', '1px solid green');
    //                 $('#errorMasege > .' + id).hide();
    //             }
    //             break;
    //         default:
    //             var errorCount = 0;
    //             if (!($('#userName').val().match(/^[a-zA-Zа-яА-Я]+$/))) {
    //                 $('#userName').css('border', '1px solid red');
    //                 errorCount++;
    //                 $('#errorMasege > .userName').show();
    //             } else {
    //                 $('#errorMasege > .userName').text('');
    //                 $('#userName').css('border', '1px solid green');
    //                 $('#errorMasege > .userName').hide();
    //             }
    //             if (!($('#userPhone').val().match(/^[0-9]+$/))) {
    //                 $('#userPhone').css('border', '1px solid red');
    //                 errorCount++;
    //                 $('#errorMasege > .userPhone').show();
    //             } else {
    //                 $('#errorMasege > .userPhone').text('');
    //                 $('#userPhone').css('border', '1px solid green');
    //                 $('#errorMasege > .userPhone').hide();
    //             }
    //             if (errorCount == 0) {
    //                 return true;
    //             } else {
    //                 return false;
    //             }
    //             break;
    //     }
    // }
    // $('.contactItem').on('blur', function () {
    //     //console.log($(this).attr('id'));
    //     checkForm($(this).attr('id'));
    // });
    $('#btn-vuzov').on('click', function (even) {
        even.preventDefault();
        if ($('#name').val().length >3 && $('#phone').val().length >3) {
            $('#errorMasege').hide();
            var res = $('#contactForm_1').serializeArray();
            var arr = {};
            $.each(res, function (result) {
                var $index = res[result].name;
                arr[$index] = res[result].value;
            });
            $('#name').val('');
            $('#phone').val('');
            $.ajax({
                url: 'index.php?route=common/header/contactForm',
                type: 'post',
                dataType: 'json',
                data: arr,
                success: function (data) {

                }

            });
            swal("Сообщение отправлено", "", "success");
        } else {
            $('#errorMasege').show();
            console.log('Incorrectly completed forms');
        }

    });


    $('#btn-contact').on('click', function (even) {
        even.preventDefault();
        if ($('#userName').val().length >3 && $('#userPhone').val().length >3) {
            $('#errorMasege').hide();
            var res = $('#contactForm').serializeArray();
            var arr = {};
            $.each(res, function (result) {
                var $index = res[result].name;
                arr[$index] = res[result].value;
            });
            $('#userName').val('');
            $('#userPhone').val('');
            $.ajax({
                url: 'index.php?route=common/footer/contactForm',
                type: 'post',
                dataType: 'json',
                data: arr,
                success: function (data) {

                }

            });
            swal("Сообщение отправлено", "", "success");
        } else {
            $('#errorMasege').show();
            console.log('Incorrectly completed forms');
        }

    });


    
    $('#btn-contact-1').on('click', function (even) {
        even.preventDefault();
        if ($('#userName_1').val().length >3 && $('#userPhone_1').val().length >3) {
            $('#errorMasege_1').hide();
            var res = $('#contactForm-1').serializeArray();
            var arr = {};
            $.each(res, function (result) {
                var $index = res[result].name;
                arr[$index] = res[result].value;
            });
            $('#userName_1').val('');
            $('#userPhone_1').val('');
            $.ajax({
                url: 'index.php?route=common/footer/contactForm_1',
                type: 'post',
                dataType: 'json',
                data: arr,
                success: function (data) {

                }
            });
            swal("Сообщение отправлено", "", "success");
    }else {
            console.log('qwdwqd');
            $('#errorMasege_1').show();
        }
    });
});