<?php echo $header; ?>
<div class="container">
  <div class="row"><?php echo "<div class='hidden-sm'>",$column_left,"</div>"; ?>
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
    <div id="content" class=" col-xs-12 <?php echo $class; ?>"><?php echo $content_top; ?>
     
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
        $b = array("#f8c828", "#008fd1", "#9ecb3c", "#f47a2f");
        $c = array("#008fd1", "#f8c828", "#008fd1", "#f8c828");
        $aa =array_random($a);
          if ($categories) { ?>
            <div class="row" style="    padding-bottom: 3%;">
            <div class="col-sm-1"></div>
   <div class="col-sm-4"><span style="font-size: 22px;   color: #000000;  font-family: "Conv_pfdindisplaypro-reg";
    text-transform: uppercase;"><?php echo $heading_title; ?></span></div>
    <div class="col-sm-7">
        <div class="col-sm-8 borderb"></div>
        <div class="col-sm-4 bordery"></div>
        
    </div></div>
            <?php foreach ($categories as $category) { 
            

            ?>
            
            <div class="col-md-4 categoryshow" >
            <a href="<?php echo $category['href']; ?>">
        
            <div class="col-md-12 cat-thumb  no-padding no-margin text-center categoryshow" style="background-color: <?php echo $b[$aa]; ?>">
            <diw class="row spancat">
                <h4><?php echo $category['name']; ?></h4>
                
                    <img src="<?php echo 'image/',$category['image']; ?>" style="margin-top: 25%;" alt="<?php echo $category['name']; ?>" class="img-responsive"/>
                
            </diw>
            
            </div>
            

                </a>
                
                
               
                
            </div>
            
            
            
            
            
            
            
            <?php } ?>
          

      <?php } ?>
      
      
      
      
      
      
      <?php if ($products) { ?>
           <div class="row" style="    padding-bottom: 3%;">
            <div class="col-sm-1"></div>
   <div class="col-sm-4"><span style="font-size: 22px;   color: #000000;  font-family: "Conv_pfdindisplaypro-reg";
    text-transform: uppercase;"><?php echo $heading_title; ?></span></div>
    <div class="col-sm-7">
        <div class="col-sm-8 borderb"></div>
        <div class="col-sm-4 bordery"></div>
        
    </div></div>
      <div class="row">
        <?php foreach ($products as $product) { ?>
        
        <div class="product-layout product-list col-md-6 col-sm-12 col-xs-12">
         <span class="ribbon"> от <?php echo $product['special']; ?></span>
          <div class="product-thumb cat-thumb" style="background-color: <?php echo $b[$aa]; ?>">
            
            <div class="row" style="margin-left: 0;">
                <div class="col-sm-6 prodleft"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
                <span class="ribbonright" style="border-right: 10px solid <?php echo $b; ?>;"></span>
                <div class="col-sm-6 text-center prodright">
                <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
                <p><?php echo $product['description']; ?></p>
                               <div class="row text-center">
                                <button style="background-color: <?php echo $c[$aa]; ?>" class="btncart" type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');">
                                <span class=""><?php echo $button_cart; ?></span>
                                </button>
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
      <?php } ?>
      <?php if (!$categories && !$products) { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
