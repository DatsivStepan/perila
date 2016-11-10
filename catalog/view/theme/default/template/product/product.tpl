<?php echo $header; ?>
<div class="container">
    <div class="row">

    <div class="hidden-sm hidden-xs"><?php echo $column_left; ?></div>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-12 col-md-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="col-xs-12 <?php echo $class; ?>"><?php echo $content_top; ?>
        <ul class="breadcrumb hidden-sm hidden-xs navigation-style" style="font-size: 15px">
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <?php if ($breadcrumb ['href']==('')){ ?>
            <li><?php echo $breadcrumb['text']; ?></li>
            <?php }else{ ?>
            <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
            <?php } ?>
            <?php } ?>
        </ul>
                    <div class="row" style="    padding-bottom: 3%;">
            <div class="col-sm-1 hidden-sm hidden-xs"></div>
   <div class="col-md-4 col-xs-12 col-sm-12 text-center">
   <div class="row hidden-md hidden-lg"> <span name="zakaz" style="font-size: 22px;   color: #000000;  font-family: "Conv_pfdindisplaypro-reg";
       text-transform: uppercase;"><?php echo $catname; ?></span></div>
   <div class="row"> <span name="zakaz" class="zakaz-style"><?php echo $heading_title; ?></span></div>
  
    
   </div>
    <div class="col-sm-7 hidden-sm hidden-xs">
        <div class="col-sm-8 borderb"></div>
        <div class="col-sm-4 bordery"></div>
        
    </div></div>
        <div class="product-wrapper">
        <div class="col-xs-12 col-sm-12 col-md-6">
            <?php if ($thumb || $images) { ?>
                <ul class="thumbnails text-center" style="border: 1px solid #999999;">
                    <?php if ($thumb) { ?>
>>>>>>> Change design and mobile contact form
                        <li style="overflow-y: hidden;">
                            <a class="product-img" href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>">
                                <img class="prodimggolov" src="<?php echo $thumb; ?>"
                                     title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>"/>
                            </a>
                        </li>
                        <div class="row">
                            <div class="col-md-1 col-xs-1 col-sm-1"></div>
                            <div class="col-md-10 col-xs-10 col-sm-10 col-sm-10 borderbsmal"></div>
                            <div class="col-md-1 col-xs-1 col-sm-1 col-sm-1"></div>
                        </div>
                        <?php } ?>
                        <?php if ($images) { ?>


                        <div class="wrap" id="style-1">

                            <ul>
                                <?php foreach ($images as $image) { ?>
                                <li>
                                    <a class="" href="<?php echo $image['popup']; ?>"
                                       title="<?php echo $heading_title; ?>">
                                        <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>"
                                             alt="<?php echo $heading_title; ?>"/>
                                    </a>

                                <li>

                                    <?php } ?>


                        </div>
                        <?php } ?>
                    </ul>
                    <?php } ?>
                </div>
                <?php
             if (strlen($description) !== 0)  {
            if ($description !=='<p><br></p>') { ?>
                <div class="col-xs-12 col-sm-12 col-md-6 prodmarg hidden-md hidden-lg">
                    <div class="row kartheader text-center" style="">
                        <h3 class=" text-center orangedescription"><img src="image/she.png" alt=" ">Технические
                            характеристики</h3>
                        <div class="" style="    padding: 3%;
    -webkit-column-count: 2;
    -moz-column-count: 2;
    column-count: 2;
    -webkit-column-gap: 50px;
    -moz-column-gap: 50px;
    column-gap: 50px;">
                            <?php echo $description;  ?>
                            <a href="" data-toggle="modal" data-target="#modal-window-prok"> Подберем любую нужную вам
                                конфигурацию, звоните!&nbsp;&nbsp;&nbsp;<img src="image/phone.png" alt=" "></a>
                        </div>
                    </div>
                </div>

                <?php } }?>
                <div class="col-xs-12 col-sm-12 col-md-6 karttovar">
                    <div class="carttov1 text-center carttov1-style">
                        <div class="ribbon-bottom-1"></div>
                        <span class=" text-center no-margin carttov1-text-style">ЦЕНА ЗА 1 МЕТР:</span>
                        <div class="row" style="padding-top: 15px;">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <div class="row">
                                    <input class="cartinput text-center" type="text" id="quantity" name="quantityq"
                                           value="<?php echo $price; ?>" class="input_product text-center"/>
                                </div>
                                <div class="row carttov1-prise-text-style">рублей</div>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <div class="row">
                       <span class="quont-plus">
                           <i class="fa fa-plus" id="plus"></i>
                       </span>
                                    <input class="plusminusinp text-center" type="text" name="quantity" value="1"
                                           size="2" id="input-quantity" class="input_product text-center"/>
                       <span class="quont-minus">
                           <i class="fa fa-minus" id="minus"></i>
                       </span>
                                    <input type="hidden" name="product_id" value="<?php echo $product_id; ?>"/>
                                </div>
                                <div class="row carttov1-prise-text-style">метров</div>
                            </div>
                        </div>
                    </div>
                    <div class="carttov2 text-center carttov2-style">
                        <div class="ribbon-bottom-2"></div>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="row padtext "><span class="carttov2-text-1-style">Срок монтажа</span></div>
                                <div class="row"><span class="carttov2-text-2-style">от 3 дней</span></div>
                            </div>
                            <div class="col-sm-6">
                                <div class="row padtext"><span class="carttov2-text-1-style">Стоимость указана:</span>
                                </div>
                                <div class="row"><span
                                            class="carttov2-text-2-style">с учетом доставки и установки</span></div>
                            </div>
                        </div>
                    </div>
                    <div class="carttov3 text-center carttov3-style">
                        <div class="ribbon-bottom-3"></div>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="row"><img src="image/kon.png" alt=" "></div>
                                <div class="row carttov3a carttov3a-style">
                                    <a href="" data-toggle="modal" data-target="#modal-window-vuzvat">вызвать
                                        замерщика</a>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="row"><img src="image/woman93.png" alt=" "></div>
                                <div class="row carttov3a carttov3a-style">
                                    <a href="" data-toggle="modal"
                                       data-target="#modal-window-prok">проконсультироватся</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carttov4 text-center">
                        <div class="row">
                            <button data-toggle="modal" data-target="#modal-window-zakaz" type="button" id="button-cart"
                                    data-loading-text="<?php echo $text_loading; ?>"
                                    class="btn button_cart button_cart_prod carttov4-btn-text-style">Оформить заказ
                            </button>
                        </div>
                    </div>
                </div>


            </div>
            <div class="clearfix"></div>
            <?php
             if (strlen($description) !== 0)  {
             if ($description !=='<p><br></p>') { ?>
            <div class="col-xs-12 col-sm-12 col-md-6 prodmarg hidden-sm hidden-xs">
                <div class="row kartheader text-center hidden-sm hidden-xs" style="">
                    <h3 class=" text-center orangedescription kartheader-text-style"><img src="image/she.png" alt=" ">&nbsp;&nbsp;Технические
                        характеристики</h3>
                </div>
            </div>
            <div class="col-sm-6 hidden-sm hidden-xs" style="    padding-right: 0px;
        padding-left: 0;">
                <div style="    border-bottom: 1px solid #999999;
        padding: 0;
        margin: 0;
        padding-bottom: 30px;
        margin-left: -16px;"></div>
            </div>
            <div class="col-sm-12 descriptions hidden-sm hidden-xs">
                <div class="row description descriptions-style">
                    <?php echo $description;  ?>
                    <a href="" data-toggle="modal" class="descriptions-link-style" data-target="#modal-window-prok">
                        Подберем любую нужную вам конфигурацию, звоните!&nbsp;&nbsp;&nbsp;<img src="image/phone.png"
                                                                                               alt=" "></a>
                </div>
            </div>
            <?php } }?>
        </div>
    </div>

    <?php echo $content_bottom; ?></div>
<?php echo $column_right; ?></div>
</div>

<!-- Basic modal -->
<form id="modal-window-vuzvat" class="modal fade">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header" style="border-bottom: none;">
                <button type="button" class="close" data-dismiss="modal">&times;</button>

            </div>
            <div class="modal-body">
                <h4 class="text-center">ВЫЗВАТЬ ЗАМЕРЩИКА</h4>

                <div class="form-group">
                    <label>Ваше имя:</label>
                    <input id="name" class="form-control name">
                </div>

                <div class="form-group">
                    <label>Ваш телефон:</label>
                    <input id="phone" class="form-control phone">
                </div>
            </div>
            <div class="form-group text-center">
                <button type="button" class="btn btnp" id="vuzvat">ОТПРАВИТЬ</button>
            </div>
            <div class="form-group">
                <h4 class="formh4 text-center">Спасибо. Мы свяжемся с Вами в ближайшее время</h4>
            </div>

        </div>
    </div>
</form>
<!-- /basic modal -->
<!-- Basic modal -->
<form id="modal-window-prok" class="modal fade">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header" style="border-bottom: none;">
                <button type="button" class="close" data-dismiss="modal">&times;</button>

            </div>
            <div class="modal-body">
                <h4 class="text-center"><b>ПРОКОНСУЛЬТИРОВАТСА</b></h4>

                <div class="form-group">
                    <label>Ваше имя:</label>
                    <input id="name2" class="form-control name2" name="name2">
                </div>

                <div class="form-group">
                    <label>Ваш телефон:</label>
                    <input id="phone2" class="form-control phone2" name="phone2">
                </div>
            </div>
            <div class="form-group text-center">
                <button type="button" class="btn btnp" id="prok">ОТПРАВИТЬ</button>
            </div>
            <div class="form-group">
                <h4 class="formh4 text-center">Спасибо. Мы свяжемся с Вами в ближайшее время</h4>
            </div>

        </div>
    </div>
</form>
<!-- /basic modal -->
<!-- Basic modal -->
<form id="modal-window-zakaz" class="modal fade">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header" style="border-bottom: none;">
                <button type="button" class="close" data-dismiss="modal">&times;</button>

            </div>
            <div class="modal-body">
                <h4 class="text-center"><b>ОФОРМИТЬ ЗАКАЗ</b></h4>

                <div class="form-group">
                    <label>Ваше имя:</label>
                    <input id="name3" class="form-control name3" name="name3">
                </div>

                <div class="form-group">
                    <label>Ваш Email:</label>
                    <input id="email" class="form-control email" name="email">
                </div>

                <div class="form-group">
                    <label>Ваш телефон:</label>
                    <input id="phone3" class="form-control phone3" name="phone3">
                </div>

                <div class="form-group">
                    <label>Адрес доставки:</label>
                    <input id="adress" class="form-control adress" name="adress">
                </div>

                <div class="form-group">
                    <label>Ваш заказ:</label>
                    <textarea rows="5" cols="45" id="zakaz" class="form-control"
                              name="zakaz"><?php echo $heading_title; ?></textarea>
                </div>

                <p class="text-center" style="color:#fe6100;">Общая сумма заказа: <span
                            id="summa"><?php echo $price; ?></span> рублей</p>
            </div>
            <div class="form-group text-center">
                <button type="button" class="btn btnm" id="zakazat">ЗАКАЗАТЬ</button>
            </div>
            <div class="form-group">
                <h4 class="formh4 text-center">Спасибо. Мы свяжемся с Вами в ближайшее время</h4>
            </div>

        </div>
    </div>
</form>
<!-- /basic modal -->


<script type="text/javascript"><!--
    var zakazname = "<?php echo $heading_title; ?>";
    var stoimodun = "<?php echo $price; ?>";
    $('#zakazat').on('click', function () {
        if (!($('#name3').val().match(/^[a-zA-Zа-яА-Я].+$/))) {
            $('#name3').css('border', '1px solid red');
            errorCount++;
            $('#errorMasege > .name3').show();
        } else {
            $('#errorMasege > .name3').text('Некоректно заполнено Имя');
            $('#name3').css('border', '1px solid green');
            $('#errorMasege > .name3').hide();
        }
        if (!($('#email').val().match(/^([a-z0-9_\.-]+)@([a-z0-9_\.-]+)\.([a-z\.]{2,6})$/i))) {
            $('#email').css('border', '1px solid red');
            errorCount++;
            $('#errorMasege > .email').show();
        } else {
            $('#errorMasege > .email').text('Некоректно заполнено Имя');
            $('#email').css('border', '1px solid green');
            $('#errorMasege > .email').hide();
        }
        if (!($('#phone3').val().match(/^[0-9]+$/))) {
            $('#phone3').css('border', '1px solid red');
            errorCount++;
            $('#errorMasege > .phone3').show();
        } else {
            $('#errorMasege > .phone3').text('Некоректно заполнен телефон');
            $('#phone3').css('border', '1px solid green');
            $('#errorMasege > .phone3').hide();
        }
        if (!($('#adress').val().match(/^[a-zA-Zа-яА-Я].+$/))) {
            $('#adress').css('border', '1px solid red');
            errorCount++;
            $('#errorMasege > .adress').show();
        } else {
            $('#errorMasege > .adress').text('Некоректно заполнен телефон');
            $('#adress').css('border', '1px solid green');
            $('#errorMasege > .adress').hide();
        }
        // if ($('#create-contact-form').valid()) {

        var data = {
            'to': 3,
            'name': $('input[name=name3]').val(),
            'phone': $('input[name=phone3]').val(),
            'email': $('input[name=email]').val(),
            'adress': $('input[name=adress]').val(),
            'summa': $('input[name=quantityq]').val(),
            'count': $('input[name=quantity]').val(),
            'zakaz': zakazname,
            'stoimodun': stoimodun
        };
        $.ajax(
                {
                    type: 'post',
                    url: 'index.php?route=email/email/send',
                    data: data
                })
                .fail(function () {
                })
                .done(function () {
                    swal(
                            'Повідомлення відправлено!',
                            '',
                            'success'
                    );
                    $('#modal-window-zakaz').modal('hide');
                    $('#name3').css('border', '1px solid  #ccc');
                    $('#phone3').css('border', '1px solid  #ccc');
                    $('#email').css('border', '1px solid  #ccc');
                    $('#adress').css('border', '1px solid  #ccc');
                    $('#name3').val('');
                    $('#phone3').val('');
                    $('#email').val('');
                    $('#adress').val('');
                });
    });


    $('#vuzvat').on('click', function () {
        if (!($('#name').val().match(/^[a-zA-Zа-яА-Я].+$/))) {
            $('#name').css('border', '1px solid red');
            errorCount++;
            $('#errorMasege > .name').show();
        } else {
            $('#errorMasege > .name').text('Некоректно заполнено Имя');
            $('#name').css('border', '1px solid green');
            $('#errorMasege > .name').hide();
        }
        if (!($('#phone').val().match(/^[0-9]+$/))) {
            $('#phone').css('border', '1px solid red');
            errorCount++;
            $('#errorMasege > .phone').show();
        } else {
            $('#errorMasege > .phone').text('Некоректно заполнен телефон');
            $('#phone').css('border', '1px solid green');
            $('#errorMasege > .phone').hide();
        }
        // if ($('#create-contact-form').valid()) {

        var data = {
            'to': 1,
            'name': $('input[name=name]').val(),
            'phone': $('input[name=phone]').val()
        };

        $.ajax(
                {
                    type: 'post',
                    url: 'index.php?route=email/email/send',
                    data: data
                })
                .fail(function () {
                    alert('Помилка');
                })
                .done(function () {
                    swal(
                            'Повідомлення відправлено!',
                            '',
                            'success'
                    );
                    $('#modal-window-vuzvat').modal('hide');
                    $('#name').css('border', '1px solid  #ccc');
                    $('#phone').css('border', '1px solid  #ccc');
                    $('#name').val('');
                    $('#phone').val('');
                });
    });

    $('#prok').on('click', function () {
        if (!($('#name2').val().match(/^[a-zA-Zа-яА-Я].+$/))) {
            $('#name2').css('border', '1px solid red');
            errorCount++;
            $('#errorMasege > .name2').show();
        } else {
            $('#errorMasege > .name2').text('Некоректно заполнено Имя');
            $('#name2').css('border', '1px solid green');
            $('#errorMasege > .name2').hide();
        }
        if (!($('#phone2').val().match(/^[0-9]+$/))) {
            $('#phone2').css('border', '1px solid red');
            errorCount++;
            $('#errorMasege > .phone2').show();
        } else {
            $('#errorMasege > .phone2').text('Некоректно заполнен телефон');
            $('#phone2').css('border', '1px solid green');
            $('#errorMasege > .phone2').hide();
        }
        // if ($('#create-contact-form').valid()) {

        var data = {
            'to': 2,
            'name': $('input[name=name2]').val(),
            'phone': $('input[name=phone2]').val()
        };

        $.ajax(
                {
                    type: 'post',
                    url: 'index.php?route=email/email/send',
                    data: data
                })
                .fail(function () {
                    alert('Помилка');
                })
                .done(function () {
                    swal(
                            'Повідомлення відправлено!',
                            '',
                            'success'
                    );
                    $('#modal-window-prok').modal('hide');
                    $('#name2').css('border', '1px solid  #ccc');
                    $('#phone2').css('border', '1px solid  #ccc');
                    $('#name2').val('');
                    $('#phone2').val('');
                });
    });


    $('select[name=\'recurring_id\'], input[name="quantity"]').change(function () {
        $.ajax({
            url: 'index.php?route=product/product/getRecurringDescription',
            type: 'post',
            data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
            dataType: 'json',
            beforeSend: function () {
                $('#recurring-description').html('');
            },
            success: function (json) {
                $('.alert, .text-danger').remove();

                if (json['success']) {
                    $('#recurring-description').html(json['success']);
                }
            }
        });
    });
    //--></script>

<script type="text/javascript"><!--
    $('.date').datetimepicker({
        pickTime: false
    });

    $('.datetime').datetimepicker({
        pickDate: true,
        pickTime: true
    });

    $('.time').datetimepicker({
        pickDate: false
    });

    $('button[id^=\'button-upload\']').on('click', function () {
        var node = this;

        $('#form-upload').remove();

        $('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

        $('#form-upload input[name=\'file\']').trigger('click');

        if (typeof timer != 'undefined') {
            clearInterval(timer);
        }

        timer = setInterval(function () {
            if ($('#form-upload input[name=\'file\']').val() != '') {
                clearInterval(timer);

                $.ajax({
                    url: 'index.php?route=tool/upload',
                    type: 'post',
                    dataType: 'json',
                    data: new FormData($('#form-upload')[0]),
                    cache: false,
                    contentType: false,
                    processData: false,
                    beforeSend: function () {
                        $(node).button('loading');
                    },
                    complete: function () {
                        $(node).button('reset');
                    },
                    success: function (json) {
                        $('.text-danger').remove();

                        if (json['error']) {
                            $(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
                        }

                        if (json['success']) {
                            alert(json['success']);

                            $(node).parent().find('input').attr('value', json['code']);
                        }
                    },
                    error: function (xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        }, 500);
    });
    //--></script>
<script type="text/javascript"><!--
    $('#review').delegate('.pagination a', 'click', function (e) {
        e.preventDefault();

        $('#review').fadeOut('slow');

        $('#review').load(this.href);

        $('#review').fadeIn('slow');
    });

    $('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

    $('#button-review').on('click', function () {
        $.ajax({
            url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
            type: 'post',
            dataType: 'json',
            data: $("#form-review").serialize(),
            beforeSend: function () {
                $('#button-review').button('loading');
            },
            complete: function () {
                $('#button-review').button('reset');
            },
            success: function (json) {
                $('.alert-success, .alert-danger').remove();

                if (json['error']) {
                    $('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
                }

                if (json['success']) {
                    $('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

                    $('input[name=\'name\']').val('');
                    $('textarea[name=\'text\']').val('');
                    $('input[name=\'rating\']:checked').prop('checked', false);
                }
            }
        });
    });

    $(document).ready(function () {
        $('.thumbnails').magnificPopup({
            type: 'image',
            delegate: 'a',
            gallery: {
                enabled: true
            }
        });
    });
    //--></script>
<script>
    jQuery(document).ready(function ($) {
        $('.quont-minus').click(function () {
            document.getElementById('input-quantity').value--;
            var input = document.getElementById('input-quantity');

            if (input.value == -1)
                input.value = 0;
        });
        $('.quont-plus').click(function () {

            document.getElementById('input-quantity').value++;
        });
    });


    $('#plus').on('click', function () {
        var tp = '<?php echo $price; ?>';
        var q_obj = $("input[name='quantity']").val();
        q_obj++;
        $("#quantity").val(q_obj * tp);

        document.getElementById("summa").innerHTML = q_obj * tp;
    });

    $('#minus').on('click', function () {
        var tp = '<?php echo $price; ?>';
        var q_obj = $("input[name='quantity']").val();
        q_obj--;
        if (q_obj > 0) {
            $("#quantity").val(q_obj * tp);
            document.getElementById("summa").innerHTML = q_obj * tp;
        }
    });
</script>
<?php echo $footer; ?>