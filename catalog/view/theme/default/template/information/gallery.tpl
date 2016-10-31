<?php echo $header; ?>
<div class="container">

  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
    <div id="content" class="prem2 no-padding <?php echo $class; ?>"><?php echo $content_top; ?>
       <div class="row headergall">
      <div class="col-sm-4"><span>Наши работы</span></div>
    <div class="col-sm-8">
        <div class="col-sm-9 borderb"></div>
        <div class="col-sm-3 bordery"></div>
        
    </div>
     </div>
     
      <?php foreach ($banners as $banner) { ?>
            <div class="col-md-3 no-margin no-padding">

                <?php if ($banner['link']) { ?>
                
                <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>"
                                                              alt="<?php echo $banner['title']; ?>"
                                                              class="img-responsive"/></a>
                <?php } else { ?>
                
                <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>"
                     class="img-responsive"/>
                <?php } ?>
                 <span id="spanprod" class="product_span" style="opacity: 0;" onmouseover="this.style.opacity = '1';" onmouseout="this.style.opacity = '0';"><?php echo  $banner['title']; ?></span>
            </div>
            <?php } ?>
        
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?> 