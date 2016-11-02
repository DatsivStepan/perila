<?php echo $header; ?>
<div class="container">
    <div class="row">
    <?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-8 col-md-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
        <ul class="breadcrumb">
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
            <?php } ?>
        </ul>
                    <div class="row" style="    padding-bottom: 3%;">
            <div class="col-sm-1"></div>
   <div class="col-sm-4"><span name="zakaz" style="font-size: 22px;   color: #000000;  font-family: "Conv_pfdindisplaypro-reg";
    text-transform: uppercase;" value="<?php echo $heading_title; ?>"><?php echo $heading_title; ?></span></div>
    <div class="col-sm-7">
        <div class="col-sm-8 borderb"></div>
        <div class="col-sm-4 bordery"></div>
        
    </div></div>
        <div class="product-wrapper">
        <div class="col-sm-6">
            <?php if ($thumb || $images) { ?>
                <ul class="thumbnails text-center" style="border: 1px solid #999999;">
                    <?php if ($thumb) { ?>
                        <li style="overflow-y: hidden;">
                            <a class="product-img" href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>">
                                <img class="prodimggolov" src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
                            </a>
                        </li>
                        <div class="row">
                           <div class="col-sm-1"></div>
                            <div class="col-sm-10 borderbsmal"></div>
                            <div class="col-sm-1"></div>
                        </div>
                    <?php } ?>
                    <?php if ($images) { ?>
                       
                           
                           <div class="wrap" id="style-1">

 <ul>
      <?php foreach ($images as $image) { ?>
                                     <li>
                                           <a class="" href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>">
                                        <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
                                    </a>
                                        
                                     <li>
                                
                            <?php } ?>






                           
                      
                        </div>
                    <?php } ?>
                </ul>
            <?php } ?>
        </div>

        <div class="col-sm-6 karttovar">
            <div class="carttov1 text-center">
            <h3 class=" text-center no-margin">ЦЕНА ЗА 1 МЕТР:</h3>
            <div class="row">
                <div class="col-sm-6">
                   <div class="row">
                                          <input class="cartinput text-center" type="text" id="quantity" name="quantityq" value="<?php echo $price; ?>"
                                           class="input_product text-center"/>
                                           </div>
                   <div class="row">рублей</div>
                </div>
                  <div class="col-sm-6">
                   <div class="row"> 
<span class="quont-plus">
                                        <i class="fa fa-plus" id="plus"></i>
                                    </span>
                                    <input type="text"  name="quantity" value="1" size="2" id="input-quantity"
                                           class="input_product text-center"/>
<span class="quont-minus">
                                        <i class="fa fa-minus" id="minus"></i>
                                    </span>
                                    
                                    <input type="hidden" name="product_id" value="<?php echo $product_id; ?>"/></div>
                   <div class="row">метров</div>
                </div>
                
                        
                       
                    </div>
                      
                    </div>
            <div class="carttov2 text-center">
                      <div class="row">
                <div class="col-sm-6">
                   <div class="row padtext"><b>Срок монтажа</b></div>
                   <div class="row">от 3 дней</div>
                </div>
                  <div class="col-sm-6">
                   <div class="row padtext"><b>Стоимость указана:</b></div>
                   <div class="row">с учетом доставки и установки</div>
                </div>
                
                        
                       
                    </div>
            </div>
            <div class="carttov3 text-center">
                      <div class="row">
                <div class="col-sm-6">
                   <div class="row"> <img src="image/kon.png" alt=" "></div>
                   <div class="row carttov3a">
                   <a href="" data-toggle="modal" data-target="#modal-window-vuzvat">
                   вызвать замерщика
                   </a>
                   </div>
                </div>
                  <div class="col-sm-6">
                   <div class="row"> <img src="image/woman93.png" alt=" "></div>
                   <div class="row carttov3a">
                    <a href="" data-toggle="modal" data-target="#modal-window-prok">

                    проконсультироватся
                    </a></div>
                </div>
                
                        
                       
                    </div>
            </div>
            <div class="carttov4 text-center">
                
                  <div class="row">
                                    <button  data-toggle="modal" data-target="#modal-window-zakaz" type="button" id="button-cart"
                                            data-loading-text="<?php echo $text_loading; ?>"
                                            class="btn button_cart button_cart_prod">Оформить заказ</button>
                                </div>
                
            </div>
                </div>
                
            
           
 
        </div>
        <div class="clearfix"></div>
            <?php
             if (strlen($description) !== 0)  {
            if ($description !=='<p><br></p>') { ?>
             <div class="col-sm-6 " style="margin-top: -5%;">
             <div class="row kartheader text-center" style="border-left: 1px solid #999999;    border-right: 1px solid #999999;
    border-top: 1px solid #999999;">
            
             <h3 class=" text-center orangedescription" >Технические характеристики</h3>
             </div>
             </div>
             <div class="col-sm-6 " style="    padding-right: 5px;
    padding-left: 0;">
                 <div style="    border-bottom: 1px solid #999999;
    padding: 0;
    margin: 0;
    padding-bottom: 30px;
    margin-left: -16px;"></div>
             </div>
           
            
               <div class="col-sm-12 description">
                
                
                <?php echo $description;  ?>
                <a href="" data-toggle="modal" data-target="#modal-window-prok"> Подберем любую нужную вам конфигурацию, звоните!</a>
               
            </div>
            <?php } }?>
      </div>
    </div>

      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>

<!-- Basic modal -->
<div id="modal-window-vuzvat" class="modal fade">
	<div class="modal-dialog modal-sm">
		<div class="modal-content">
		<div class="modal-header" style="border-bottom: none;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
   
        </div>
			<div class="modal-body">
			<h4 class="text-center">ВЫЗВАТЬ ЗАМЕРЩИКА</h4>
				
				<div class="form-group">
					<label>Ваше имя:</label>
					<input id="name" class="form-control" name="name">
				</div>
				
				<div class="form-group">
					<label>Ваш телефон:</label>
					<input id="phone" class="form-control" name="phone">
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
</div>
<!-- /basic modal -->
<!-- Basic modal -->
<div id="modal-window-prok" class="modal fade">
	<div class="modal-dialog modal-sm">
		<div class="modal-content">
		<div class="modal-header" style="border-bottom: none;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
   
        </div>
			<div class="modal-body">
			<h4 class="text-center"><b>ПРОКОНСУЛЬТИРОВАТСА</b></h4>
				
				<div class="form-group">
					<label>Ваше имя:</label>
					<input id="name" class="form-control" name="name2">
				</div>
				
				<div class="form-group">
					<label>Ваш телефон:</label>
					<input id="phone" class="form-control" name="phone2">
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
</div>
<!-- /basic modal -->
<!-- Basic modal -->
<div id="modal-window-zakaz" class="modal fade">
	<div class="modal-dialog modal-sm">
		<div class="modal-content">
		<div class="modal-header" style="border-bottom: none;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
   
        </div>
			<div class="modal-body">
			<h4 class="text-center"><b>ОФОРМИТЬ ЗАКАЗ</b></h4>
				
				<div class="form-group">
					<label>Ваше имя:</label>
					<input id="name" class="form-control" name="name3">
				</div>
				
				<div class="form-group">
					<label>Ваш Email:</label>
					<input id="email" class="form-control" name="email">
				</div>
				
				<div class="form-group">
					<label>Ваш телефон:</label>
					<input id="phone" class="form-control" name="phone3">
				</div>
				
				<div class="form-group">
					<label>Адрес доставки:</label>
					<input id="adress" class="form-control" name="adress">
				</div>
				
				<div class="form-group">
					<label>Ваш заказ:</label>
                    <textarea rows="5" cols="45" id="zakaz" class="form-control" name="zakaz" ><?php echo $heading_title; ?></textarea>
				</div>
				
				<p class="text-center" style="color:#fe6100;">Общая сумма заказа:  <span id="summa"><?php echo $price; ?></span> рублей</p>
			</div>
                <div class="form-group text-center">	
				<button type="button" class="btn btnm" id="zakazat">ЗАКАЗАТЬ</button>
				</div>
				<div class="form-group">
				<h4 class="formh4 text-center">Спасибо. Мы свяжемся с Вами в ближайшее время</h4>
				</div>
			
		</div>
	</div>
</div>
<!-- /basic modal -->






<script type="text/javascript"><!--
    var zakazname="<?php echo $heading_title; ?>";
    var stoimodun="<?php echo $price; ?>";
       $('#zakazat').on('click', function(){
           // if ($('#create-contact-form').valid()) {
               
                 var data = {
                'to': 3,
                'name':  $('input[name=name3]').val(),
                'phone': $('input[name=phone3]').val(),
                'email': $('input[name=email]').val(),
                'adress': $('input[name=adress]').val(),
                'summa': $('input[name=quantityq]').val(),
                'count': $('input[name=quantity]').val(),
                'zakaz': zakazname,
                'stoimodun': stoimodun
            };
     console.log(data);
            $.ajax(
                {
                    type: 'post',
                    url: 'index.php?route=email/email/send',
                    data: data
                })
                .fail(function() {
                    alert('Підключення');
                })
                .done(function(data) {
               
                     if (data.success){
                      /*  new PNotify({
                            title: 'Contact was updated',
                            addclass: 'bg-success'
                        });*/
                       // window.history.back();
                    }
                 console.log(data);
            //}
                });
   
          /*  else{
                new PNotify({
                    title: 'You made a mistake when filling out forms',
                    addclass: 'bg-danger'
                });
            }*/
        });
    
    
      $('#vuzvat').on('click', function(){
           // if ($('#create-contact-form').valid()) {
               
                 var data = {
                'to': 1,
                'name':  $('input[name=name]').val(),
                'phone': $('input[name=phone]').val()
            };
     
            $.ajax(
                {
                    type: 'post',
                    url: 'index.php?route=email/email/send',
                    data: data
                })
                .fail(function() {
                    alert('Підключення');
                })
                .done(function(data) {
               
                     if (data.success){
                      /*  new PNotify({
                            title: 'Contact was updated',
                            addclass: 'bg-success'
                        });*/
                       // window.history.back();
                    }
                 console.log(data);
            //}
                });
   
          /*  else{
                new PNotify({
                    title: 'You made a mistake when filling out forms',
                    addclass: 'bg-danger'
                });
            }*/
        });

          $('#prok').on('click', function(){
           // if ($('#create-contact-form').valid()) {
               
                 var data = {
                'to': 2,
                'name':  $('input[name=name2]').val(),
                'phone': $('input[name=phone2]').val()
            };
     
            $.ajax(
                {
                    type: 'post',
                    url: 'index.php?route=email/email/send',
                    data: data
                })
                .fail(function() {
                    alert('Підключення');
                })
                .done(function(data) {
               
                     if (data.success){
                      /*  new PNotify({
                            title: 'Contact was updated',
                            addclass: 'bg-success'
                        });*/
                       // window.history.back();
                    }
                 console.log(data);
            //}
                });
   
          /*  else{
                new PNotify({
                    title: 'You made a mistake when filling out forms',
                    addclass: 'bg-danger'
                });
            }*/
        });

    
    
    
    
    
    
    
$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
	$.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
		dataType: 'json',
		beforeSend: function() {
			$('#recurring-description').html('');
		},
		success: function(json) {
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

$('button[id^=\'button-upload\']').on('click', function() {
	var node = this;

	$('#form-upload').remove();

	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

	$('#form-upload input[name=\'file\']').trigger('click');

	if (typeof timer != 'undefined') {
    	clearInterval(timer);
	}

	timer = setInterval(function() {
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
				beforeSend: function() {
					$(node).button('loading');
				},
				complete: function() {
					$(node).button('reset');
				},
				success: function(json) {
					$('.text-danger').remove();

					if (json['error']) {
						$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
					}

					if (json['success']) {
						alert(json['success']);

						$(node).parent().find('input').attr('value', json['code']);
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	}, 500);
});
//--></script>
<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
  e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: $("#form-review").serialize(),
		beforeSend: function() {
			$('#button-review').button('loading');
		},
		complete: function() {
			$('#button-review').button('reset');
		},
		success: function(json) {
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

$(document).ready(function() {
	$('.thumbnails').magnificPopup({
		type:'image',
		delegate: 'a',
		gallery: {
			enabled:true
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
    
    
 $('#plus').on('click', function() { 
          var tp = '<?php echo $price; ?>';
          var q_obj = $("input[name='quantity']").val();
        q_obj++;
            $("#quantity").val(q_obj*tp);
     
     document.getElementById("summa").innerHTML=q_obj*tp;
});  
    
$('#minus').on('click', function() { 
          var tp = '<?php echo $price; ?>';
          var q_obj = $("input[name='quantity']").val();
    q_obj--;
    if(q_obj>0){
            $("#quantity").val(q_obj*tp);
        document.getElementById("summa").innerHTML=q_obj*tp;
        }
});   
</script>
<?php echo $footer; ?>