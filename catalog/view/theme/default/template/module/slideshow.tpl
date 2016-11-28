<!--<div class="container" style="position: absolute; padding-top: 10%; z-index: 100;">
    <div style=" background: rgba(153,153,153,0.3);padding-left: 20px;  ">
        <span>qwfwqf</span>
    </div>
</div>-->
<div class="container" style="position: relative">
    <div class="banner-div-text" >
        <span class="slider-text-style_1">Компания Dekorperila -</span></br>
        <span class="slider-text-style_2">это опора вашего успеха</span></br>
        <div class="slider-text-style_4"></div>
        <span class="slider-text-style_3">Проектирование и изготовление перил</br>и лестничных ограждений</span>
    </div>
    <div data-toggle="modal" data-target="#modal-window-vuzvat" class="div-slider-btn">
        <span class="slider-btn-text">ОФОРМИТЬ ЗАКАЗ</span>
    </div>
</div>
<div id="slideshow<?php echo $module; ?>" class="owl-carousel slider-style" style="height: 445px; border: 0">
    <?php foreach ($banners as $banner) { ?>
    <div class="item" style="background-image: url('<?php echo $banner['image']; ?>'); background-size: cover; height: 445px ">

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