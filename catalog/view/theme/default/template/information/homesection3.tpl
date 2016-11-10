<script type="text/javascript">
    $(document).ready(function() {
        $(".fancybox-button").fancybox({
            prevEffect		: 'none',
            nextEffect		: 'none',
            closeBtn		: false,
            helpers		: {
                title	: { type : 'inside' },
                buttons	: {}
            }
        });
    });
</script>
<div class="row">
    <div class="hidden-md hidden-sm hidden-lg hidden-xl col-xs-12 text-center work-text-style">
        <span>НАШИ РАБОТЫ</span>
    </div>
</div>
<div  class="prem3">
    <div class="col-md-15 hidden-sm hidden-xs bluegar text-center">
    <span>наши работы</span>

        <p> <a href="index.php?route=information/gallery"> Посмотреть галерею </a></p>
      </div>

        <?php foreach ($banners as $banner) { ?>
                <div class="col-md-15 col-xs-4">

                    <?php if ($banner['link']) { ?>

                    <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>"
                                                                  alt="<?php echo $banner['title']; ?>"
                                                                  class="img-responsive"/></a>
                    <?php } else { ?>
                        <a href="<?php echo $banner['image']; ?>" class="fancybox-button" rel="fancybox-button">
                            <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive"/>
                        </a>
                    <?php } ?>
                </div>
                <?php } ?>
    
     </div>

