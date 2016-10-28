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
   <div class="col-sm-4"><span style="font-size: 22px;   color: #000000;  font-family: "Conv_pfdindisplaypro-reg";
    text-transform: uppercase;"><?php echo $heading_title; ?></span></div>
    <div class="col-sm-7">
        <div class="col-sm-8 borderb"></div>
        <div class="col-sm-4 bordery"></div>
        
    </div></div>
        <div class="product-wrapper">
        <div class="col-sm-6">
            <?php if ($thumb || $images) { ?>
                <ul class="thumbnails text-center">
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
            <h3 class=" text-center orangeproduct">ЦЕНА ЗА 1 МЕТР:</h3>
            <div class="row">
                <div class="col-sm-6">
                   <div class="row"><?php echo $price; ?></div>
                   <div class="row">рублей</div>
                </div>
                  <div class="col-sm-6">
                   <div class="row"> <span class="quont-minus">
                                        <i class="fa fa-minus"></i>
                                    </span>

                                    <input type="text" name="quantity" value="<?php echo $minimum; ?>" size="2" id="input-quantity"
                                           class="input_product text-center"/>

                                    <span class="quont-plus">
                                        <i class="fa fa-plus"></i>
                                    </span>
                                    <input type="hidden" name="product_id" value="<?php echo $product_id; ?>"/></div>
                   <div class="row">метров</div>
                </div>
                
                        
                       
                    </div>
                      
                    </div>
            <div class="carttov2 text-center">
                      <div class="row">
                <div class="col-sm-6">
                   <div class="row"><?php echo $price; ?></div>
                   <div class="row">рублей</div>
                </div>
                  <div class="col-sm-6">
                   <div class="row"> <span class="quont-minus">
                                        <i class="fa fa-minus"></i>
                                    </span>

                                    <input type="text" name="quantity" value="<?php echo $minimum; ?>" size="2" id="input-quantity"
                                           class="input_product text-center"/>

                                    <span class="quont-plus">
                                        <i class="fa fa-plus"></i>
                                    </span>
                                    <input type="hidden" name="product_id" value="<?php echo $product_id; ?>"/></div>
                   <div class="row">метров</div>
                </div>
                
                        
                       
                    </div>
            </div>
            <div class="carttov3 text-center">
                      <div class="row">
                <div class="col-sm-6">
                   <div class="row"><?php echo $price; ?></div>
                   <div class="row">рублей</div>
                </div>
                  <div class="col-sm-6">
                   <div class="row"> <span class="quont-minus">
                                        <i class="fa fa-minus"></i>
                                    </span>

                                    <input type="text" name="quantity" value="<?php echo $minimum; ?>" size="2" id="input-quantity"
                                           class="input_product text-center"/>

                                    <span class="quont-plus">
                                        <i class="fa fa-plus"></i>
                                    </span>
                                    <input type="hidden" name="product_id" value="<?php echo $product_id; ?>"/></div>
                   <div class="row">метров</div>
                </div>
                
                        
                       
                    </div>
            </div>
            <div class="carttov4 text-center">
                
                  <div class="row">
                                    <button type="button" id="button-cart"
                                            data-loading-text="<?php echo $text_loading; ?>"
                                            class="btn button_cart button_cart_prod"><?php echo $button_cart; ?></button>
                                </div>
                
            </div>
                </div>
                
            
           
 
        </div>
        <div class="clearfix"></div>
            <?php
             if (strlen($description) !== 0)  {
            if ($description !=='<p><br></p>') { ?>
            <div class="col-sm-12 description">
                <h3 class=" text-center orangedescription" ><?php echo $tab_description;  ?></h3>
                <?php echo $description;  ?>
            </div>
            <?php } }?>
      </div>
    </div>

      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>









<script type="text/javascript"><!--
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
$('#button-cart').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-cart').button('loading');
		},
		complete: function() {
			$('#button-cart').button('reset');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');

			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						var element = $('#input-option' + i.replace('_', '-'));

						if (element.parent().hasClass('input-group')) {
							element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						} else {
							element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						}
					}
				}

				if (json['error']['recurring']) {
					$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}

			if (json['success']) {
				
				$('#cart > span').html('Ваш кошик<br> ' + json['total']+ '<img src="image/trik.png" alt="" style="    padding-bottom: 10%;">');

                //$('html, body').animate({ scrollTop: 0 }, 'slow');
                var beepOne = $("#beep-one")[0];
                beepOne.play();


                var add = document.getElementById('add').title;
                if (add == 'Українська'){add='Добавлено';}
                    if (add == 'russian'){add='Добавлено';}
                        if (add == 'English'){add='Added';}


                var d = document.getElementById("button-cart");
                d.className += " added_to_cart";
                $("#image").attr("src","image/mishok_cart.png");


                $('#cart > ul').load('index.php?route=common/cart/info ul li');


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
</script>
<?php echo $footer; ?>