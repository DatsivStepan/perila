$(document).ready(function () {
    function checkForm(id) {
        if(typeof id != 'undefined'){
            if($('#'+id).val() == ''){
                return 0;
            }
        }
        switch (id) {
            case 'email':
                if (!($( '#'+id).val().match(/^[a-z0-9_-]+@[a-z0-9-]+\.[a-z]{2,6}$/i))) {
                    $('#errorMasege > .' + id).text('Некоректно вказана електроная почта');
                    $('#' + id).css('border', '1px solid red');
                    $('#errorMasege > .' + id).show();
                } else {
                    $('#errorMasege > .' + id).text('');
                    $('#' + id).css('border', '1px solid green');
                    $('#errorMasege > .' + id).hide();
                }
                break;
            case 'enquiry':
                if (!($('#'+id).val().length > 3)){
                    $('#errorMasege > .' + id).text('Некоректно задан вопрос');
                    $('#' + id).css('border', '1px solid red');
                    $('#errorMasege > .' + id).show();
                } else {
                    $('#errorMasege > .' + id).text('');
                    $('#' + id).css('border', '1px solid green');
                    $('#errorMasege > .' + id).hide();
                }
                break;
            default:
                var errorCount = 0;
                if (!($('#email').val().match(/^[a-z0-9_-]+@[a-z0-9-]+\.[a-z]{2,6}$/i))) {
                    $('#email').css('border', '1px solid red');
                    errorCount++;
                    $('#errorMasege > .email').show();
                } else {
                    $('#errorMasege > .email').text('');
                    $('#email').css('border', '1px solid green');
                    $('#errorMasege > .email').hide();
                }
                if (!($('#enquiry').val())) {
                    $('#enquiry').css('border', '1px solid red');
                    errorCount++;
                    $('#errorMasege > .enquiry').show();
                } else {
                    $('#errorMasege > .enquiry').text('');
                    $('#enquiry').css('border', '1px solid green');
                    $('#errorMasege > .enquiry').hide();
                }
                if (errorCount == 0) {
                    return true;
                } else {
                    return false;
                }
                break;
        }
    }
    $('.text').on('blur', function () {
        //console.log($(this).attr('id'));
        checkForm($(this).attr('id'));
    });
    $('#button_submit').on('click', function (even) {
        even.preventDefault();
        if (checkForm()) {
            var res = $('#contact').serializeArray();
            var arr = {};
            $.each(res, function (result) {
                var $index = res[result].name;
                arr[$index] = res[result].value;
            });
            $.ajax({
                url: 'index.php?route=information/contact/contact',
                type: 'post',
                dataType: 'json',
                data: arr,
                success: function (data) {
                }
            });

            swal(
                'Повідомлення відправлено!',
                '',
                'success'
            );
            $('#contact')[0].reset();
            $('#email').css('border', '1px solid  #ccc');
            $('#enquiry').css('border', '1px solid  #ccc');

        } else {
            console.log('Incorrectly completed forms');
        }

    });


    var map;
    function initMap() {
        map = new google.maps.Map(document.getElementById('mapa'), {
            center: {lat: -34.397, lng: 150.644},
            zoom: 8,
            scrollwheel: false
        });
        var image = '../../../image/marker.png';
        var marker = new google.maps.Marker({
            position: {lat: -34.397, lng: 150.644},
            map: map,
            title: 'Наше место нахождения',
            icon: image
        });
    }
    initMap();
});
