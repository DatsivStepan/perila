<?php echo $header;  ?>
<div class="container">
  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 row" style="padding-bottom: 9%; margin:0;"><?php echo "<div class='hidden-sm hidden-xs'>",$column_left,"</div>"; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-xs-12 col-sm-12 col-md-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
	<div class="hidden-xs hidden-sm col-md-8 col-lg-8"style="margin: 1% 0 0 0;">
    <ul class="hidden-sm hidden-xs breadcrumb">
   <?php foreach ($breadcrumbs as $breadcrumb) { ?> 
		<?php if ($breadcrumb ['href']==('')){ ?> 
		<li style="color: #8a8a8a;font-family: 'Helvetica';font-weight: 300;font-size: 17px;"><?php echo $breadcrumb['text']; ?></li>
		<?php }else{ ?> 
		<li style="color: #3e9fd6;font-family: 'Helvetica';font-weight: 300;font-size: 17px;"><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
		<?php } ?> 
		<?php } ?>
  </ul>
  </div>
   <?php if ($category_id==1){?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
    <div class="row" style="padding-bottom: 3%;">
		<div class="col-lg-1 col-md-1 col-sm-0 col-xs-0"></div>
		<div class="col-md-2 col-sm-2 col-xs-4">
			<span class ="news_span_zaholovok"><?php echo $heading_title; ?></span>
		</div>
		 <div class="col-sm-0 col-xs-1"></div>
		<div class="col-lg-9 col-md-9 col-sm-10 col-xs-6 no-padding">
			<div class="col-lg-4 col-md-4 hidden-sm hidden-xs borderb border_news"></div>
			<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12 bordery border_news_2"></div>
		</div>
	</div>
   

     
      <?php if ($articles) { ?>
		<div class="row" style="margin: 0;">
			<?php foreach ($articles as $article) { ?>
			<div class="cat_pad product-list col-xs-12 col-sm-12 col-md-6" style="padding-top: 2px;">
				<div class="product-thumb">
					<div class="productimg">
						<img src="<?php echo $article['original']; ?>" alt="<?= $article['name'];?>" class="img-responsive news_block_resp"/>
					</div>
					<div class="col-xs-12 cat_text border_block">
						<h4 class="perila_text_h4"><?php echo $article['name']; ?></h4>
						<p class="perila_text_opus"><?php echo  $article['preview']; ?></p>
						<p class="perila_data"><?php echo $article['date']; ?>&nbsp;/&nbsp; <a class="perila_podrobnee" href="<?php echo $article['href'];?>" tabindex="-1" title="<?php echo $article['name'];?>" >Подробнее </a></p>
					</div>
				</div>
			</div>
			<?php } ?>
		</div>
      <?php } ?>
      <?php } ?>
         <?php if ($category_id==2){?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
                          <div class="row" style="    padding-bottom: 3%;">
            <div class="col-sm-1 col-xs-1"></div>
   <div class="col-sm-4 col-xs-4"><span style="font-size: 22px;   color: #000000;  font-family: "Conv_pfdindisplaypro-reg";
    text-transform: uppercase;"><?php echo $heading_title; ?></span></div>
    <div class="col-sm-7 col-xs-7 hidden-sm hidden-xs">
        <div class="col-sm-4 col-xs-4 borderb"></div>
        <div class="col-sm-8 col-xs-8 bordery"></div>
        
    </div></div>
   

     
      <?php if ($articles) { ?>
      <div class="row">
        <?php foreach ($articles as $article) { ?>
        <div class="cat_pad product-list col-md-3 col-xs-4 no-padding">
           <a href="<?php echo $article['href'];?>" tabindex="-1" title="<?php echo $article['name'];?>" >
           
           <div class="productimg">
		<img src="<?php echo $article['original']; ?>" alt="<?= $article['name'];?>" class="img-responsive"/></div>
            <span id="spanprod" class="product_span" style="opacity: 0;" onmouseover="this.style.opacity = '1';" onmouseout="this.style.opacity = '0';"><?php echo  $article['preview']; ?></span>
            
         </a>
        </div>
        <?php } ?>
      </div>
     
      <?php } ?>
      <?php } ?>
      <?php if (!$categories && !$articles) { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>