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
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
     <div class="row" style="    padding-bottom: 3%;">
            <div class="col-sm-1"></div>
   <div class="col-sm-2"><span style="font-size: 22px;   color: #000000;  font-family: "Conv_pfdindisplaypro-reg";
    text-transform: uppercase;"><?php echo $heading_title; 
    
    ?></span></div>
    <div class="col-sm-9">
        <div class="col-sm-8 borderb"></div>
        <div class="col-sm-4 bordery"></div>
        
    </div></div>
     <div class="cat_pad product-list col-xs-12" style="padding-top: 2px;">
          <div class="product-thumb">
           <div class="productimg">
		<img src="<?php echo $original; ?>" alt="<?= $article['name'];?>" class="img-responsive"/></div>
           
            <div class="col-xs-12 cat_text ">
                <h4><?php echo $heading_title; ?></h4>
                <p><?php echo $description; ?></p>
                <p><?php echo $datecreate; ?>/ <a href="<?php echo $href;?>" tabindex="-1" title="<?php echo $heading_title;?>" >
                <?php if ($category_id==1) { ?>
                Назад к новостям 
                <?php }else{ ?>
                Назад к нашим работам 
                <?php } ?>
                </a></p>
                
      <?php if ($images) { ?><ul class="thumbnails text-center" style="background-color: #F4F4F4;">
            <?php foreach ($images as $image) { ?>
            
                          
                                                       
            <li class="image-additional"><a class="thumbnail" href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>"> <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></li>
            <?php } ?>
             </ul>
            <?php } ?>
         
            </div>
          </div>
        </div>
      
  

 
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>

<script type="text/javascript"><!--
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
<?php echo $footer; ?>