<?php echo $header;  ?>
<div class="container">
  <div class="row"><?php echo "<div class='hidden-sm'>",$column_left,"</div>"; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-xs-12 col-sm-12 col-md-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <ul class="hidden-sm hidden-xs breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
   <?php if ($category_id==1){?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
                          <div class="row" style="    padding-bottom: 3%;">
            <div class="col-sm-1 col-xs-1"></div>
   <div class="col-sm-2 col-xs-2"><span style="font-size: 22px;   color: #000000;  font-family: "Conv_pfdindisplaypro-reg";
    text-transform: uppercase;"><?php echo $heading_title; ?></span></div>
    <div class="col-sm-9 col-xs-9 hidden-sm hidden-xs">
        <div class="col-sm-4 col-xs-4 borderb"></div>
        <div class="col-sm-8 col-xs-8 bordery"></div>
        
    </div></div>
   

     
      <?php if ($articles) { ?>
      <div class="row">
        <?php foreach ($articles as $article) { ?>
        <div class="cat_pad product-list col-xs-12 col-sm-12 col-md-6" style="padding-top: 2px;">
          <div class="product-thumb">
           <div class="productimg">
		<img src="<?php echo $article['original']; ?>" alt="<?= $article['name'];?>" class="img-responsive"/></div>
           
            <div class="col-xs-12 cat_text ">
                <h4><?php echo $article['name']; ?></h4>
                <p><?php echo  $article['preview']; ?></p>
                <p><?php echo $article['date']; ?>&nbsp;/&nbsp; <a href="<?php echo $article['href'];?>" tabindex="-1" title="<?php echo $article['name'];?>" >Подробнее </a></p>
                

         
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