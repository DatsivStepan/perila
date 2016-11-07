<!--<div class="container" style="position: absolute; padding-top: 10%; z-index: 100;">
    <div style=" background: rgba(153,153,153,0.3);padding-left: 20px;  ">
        <span>qwfwqf</span>
    </div>
</div>-->
<div id="slideshow<?php echo $module; ?>" class="owl-carousel slider-style" style="height: 445px; border: 0">
  <?php foreach ($banners as $banner) { ?>
  <div class="item">
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" style="width: 100%;" />
    <!--
    <?php if ($banner['link']) { ?>
    <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" /></a>
    <?php } else { ?>
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
    <?php } ?> -->

  </div>
  <?php } ?>
</div>
<script type="text/javascript"><!--
$('#slideshow<?php echo $module; ?>').owlCarousel({
	items: 6,
	autoPlay: 3000,
	singleItem: true,
	navigation: false,

	pagination: true
});
--></script>