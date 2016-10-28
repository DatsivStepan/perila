    <div  class="prem3">
<div class="col-md-15 bluegar text-center">
<span>наши работы</span>
   
    <p> <a href="index.php?route=information/gallery"> Посмотреть галерею </a></p>
  </div>  
   
    <?php foreach ($banners as $banner) { ?>
            <div class="col-md-15">

                <?php if ($banner['link']) { ?>
                
                <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>"
                                                              alt="<?php echo $banner['title']; ?>"
                                                              class="img-responsive"/></a>
                <?php } else { ?>
                
                <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>"
                     class="img-responsive"/>
                <?php } ?>
            </div>
            <?php } ?>
    
     </div>
     
