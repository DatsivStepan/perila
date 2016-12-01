<?php echo $header; ?>
<div class="container infodivtextcolor" >
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <div class="breadcrumb">
        <ul class="breadcrumb hidden-xs col-sm-12 col-md-12 col-lg-12" id="row_text">
          <?php foreach ($breadcrumbs as $breadcrumb) { ?>
          <?php if ($breadcrumb ['href']==('')){ ?>
          <li><?php echo $breadcrumb['text']; ?></li>
          <?php }else{ ?>

          <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
          <?php } ?>
          <?php } ?>
        </ul>
      </div>
      <div class="row" style="padding-bottom: 3%;">
        <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1"></div>
        <div class="col-lg-3 col-md-3 col-sm-4 col-xs-8 no-padding"">
          <h1><?php echo $heading_title; ?></h1>
        </div>
        <div class="hidden-lg col-md-1 col-sm-1 col-xs-1"></div>
        <div class="col-lg-7 col-md-7 col-sm-6 col-xs-2" style="padding: 0;">
          <div class="col-lg-8 col-md-8 col-sm-8 hidden-xs" style="min-height: 38px;border-bottom: 1px solid #999999;"></div>
          <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" style="min-height: 38px;border-bottom: 1px solid #f8c828;"></div>
        </div>
      </div>
      <div class="col-lg-12 col-md-12" style="margin:0">
        <?php echo $description; ?>
      </div>
    </div>
    <?php
        if($information_id == 10){
            echo $content_bottom;
        }
    ?>
  </div>
</div>
<?php echo $footer; ?>
