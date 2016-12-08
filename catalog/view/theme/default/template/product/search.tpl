<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h1><?php echo $heading_title; ?></h1>
      <label class="control-label" for="input-search"><?php echo $entry_search; ?></label>
      <div class="row">
        <div class="col-sm-4">
          <input type="text" name="search" value="<?php echo $search; ?>" placeholder="<?php echo $text_keyword; ?>" id="input-search" class="form-control" />
        </div>
          <div class="col-sm-4">
          <input type="button" value="<?php echo $button_search; ?>" id="button-search" class="btn btn-primary search-btn-style" />
          </div>
          <!--    <div class="col-sm-3">
                <select name="category_id" class="form-control">
                  <option value="0"><?php echo $text_category; ?></option>
                  <?php foreach ($categories as $category_1) { ?>
                  <?php if ($category_1['category_id'] == $category_id) { ?>
                  <option value="<?php echo $category_1['category_id']; ?>" selected="selected"><?php echo $category_1['name']; ?></option>
                  <?php } else { ?>
                  <option value="<?php echo $category_1['category_id']; ?>"><?php echo $category_1['name']; ?></option>
                  <?php } ?>
                  <?php foreach ($category_1['children'] as $category_2) { ?>
                  <?php if ($category_2['category_id'] == $category_id) { ?>
                  <option value="<?php echo $category_2['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
                  <?php } else { ?>
                  <option value="<?php echo $category_2['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
                  <?php } ?>
                  <?php foreach ($category_2['children'] as $category_3) { ?>
                  <?php if ($category_3['category_id'] == $category_id) { ?>
                  <option value="<?php echo $category_3['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
                  <?php } else { ?>
                  <option value="<?php echo $category_3['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
                  <?php } ?>
                  <?php } ?>
                  <?php } ?>
                  <?php } ?>
                </select>
              </div>-->
       <!-- <div class="col-sm-3">
          <label class="checkbox-inline">
            <?php if ($sub_category) { ?>
            <input type="checkbox" name="sub_category" value="1" checked="checked" />
            <?php } else { ?>
            <input type="checkbox" name="sub_category" value="1" />
            <?php } ?>
            <?php echo $text_sub_category; ?></label>
        </div>-->
      </div>
     <!-- <p>
        <label class="checkbox-inline">
          <?php if ($description) { ?>
          <input type="checkbox" name="description" value="1" id="description" checked="checked" />
          <?php } else { ?>
          <input type="checkbox" name="description" value="1" id="description" />
          <?php } ?>
          <?php echo $entry_description; ?></label>
      </p>-->
      <span class="search-text-style"><?php echo $text_search; ?></span>
      <?php if ($products) { ?>
        <!--  <p><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></p>
    <!--  <div class="row">
            <div class="col-sm-3 hidden-xs">
              <div class="btn-group">
                <button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_list; ?>"><i class="fa fa-th-list"></i></button>
                <button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_grid; ?>"><i class="fa fa-th"></i></button>
              </div>
            </div>
            <div class="col-sm-1 col-sm-offset-2 text-right">
              <label class="control-label" for="input-sort"><?php echo $text_sort; ?></label>
            </div>
            <div class="col-sm-3 text-right">
              <select id="input-sort" class="form-control col-sm-3" onchange="location = this.value;">
                <?php foreach ($sorts as $sorts) { ?>
                <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
                <?php } ?>
                <?php } ?>
              </select>
            </div>
            <div class="col-sm-1 text-right">
              <label class="control-label" for="input-limit"><?php echo $text_limit; ?></label>
            </div>
            <div class="col-sm-2 text-right">
              <select id="input-limit" class="form-control" onchange="location = this.value;">
                <?php foreach ($limits as $limits) { ?>
                <?php if ($limits['value'] == $limit) { ?>
                <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
                <?php } ?>
                <?php } ?>
              </select>
            </div>
          </div>-->
      <br />
      <div class="row">
        <?php
          function array_random($arr, $num = 1) {
              shuffle($arr);
              $r = array();
              for ($i = 0; $i < $num; $i++) {
                  $r[] = $arr[$i];
              }
              return $num == 1 ? $r[0] : $r;
          }
                  $a = array(0, 1, 2, 3);
                  $b = array("#f8c828", "#008fd1", "#9ecb3c", "#f47a2f", "f8c828",);
                  $c = array("#008fd1", "#f8c828", "#008fd1", "#f8c828", "#008fd1");
                  $d = array("#ffffff", "#000000", "#ffffff", "#000000", "#000000");
        ?>
        <?php foreach ($products as $product) {
                        $aa = array_random($a);
                    ?>
        <div class="col-xs-12 col-md-6 col-sm-12 col-lg-6">
          <span class="ribbon"> от <?php echo $product['tax']; ?></span>
          <div class="product-thumb cat-thumb" style="background-color: <?php echo $b[$aa]; ?>">
            <div class="row no-margin">
              <a href="<?php echo $product['href']; ?>">
                <div class="col-xs-6 col-sm-6 prodleft border_conteiner product-tax-div-style" style="background: url(<?php echo $product['thumb']; ?>) center no-repeat;">
                </div>
              </a>
              <span class="ribbonright" style="border-right: 10px solid <?php echo $b[$aa]; ?> "></span>
              <div class="col-xs-6 col-sm-6 text-center prodright no-padding">
                                    <span class="product-title-style text_zagoli">
                                        <a href="<?php echo $product['href']; ?>">
                                            <b><?php echo $product['name']; ?></b>
                                        </a>
                                    </span>
                <div class="row text-center">
                  <a href="<?php echo $product['href']; ?>" style="background-color: <?php echo $c[$aa]; ?>;" class="product-btncart-style btncart" >
                    <span class="" style="color:<?php echo $d[$aa]; ?>"><?php echo $button_cart;?></span>
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
        <?php } ?>
      </div>
      <div class="row">
        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
        <div class="col-sm-6 text-right"><?php echo $results; ?></div>
      </div>
      <?php } else { ?>
      <p><?php echo $text_empty; ?></p>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<script type="text/javascript"><!--
$('#button-search').bind('click', function() {
	url = 'index.php?route=product/search';
	
	var search = $('#content input[name=\'search\']').prop('value');
	
	if (search) {
		url += '&search=' + encodeURIComponent(search);
	}

	var category_id = $('#content select[name=\'category_id\']').prop('value');
	
	if (category_id > 0) {
		url += '&category_id=' + encodeURIComponent(category_id);
	}
	
	var sub_category = $('#content input[name=\'sub_category\']:checked').prop('value');
	
	if (sub_category) {
		url += '&sub_category=true';
	}
		
	var filter_description = $('#content input[name=\'description\']:checked').prop('value');
	
	if (filter_description) {
		url += '&description=true';
	}

	location = url;
});

$('#content input[name=\'search\']').bind('keydown', function(e) {
	if (e.keyCode == 13) {
		$('#button-search').trigger('click');
	}
});

$('select[name=\'category_id\']').on('change', function() {
	if (this.value == '0') {
		$('input[name=\'sub_category\']').prop('disabled', true);
	} else {
		$('input[name=\'sub_category\']').prop('disabled', false);
	}
});

$('select[name=\'category_id\']').trigger('change');
--></script> 
<?php echo $footer; ?>