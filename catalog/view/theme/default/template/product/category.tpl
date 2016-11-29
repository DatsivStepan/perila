<?php echo $header; ?>
<div class="container">

    <div class="row">
        <div class="hidden-xs">
            <?php echo $column_left; ?>
        </div>
        <div class="container_contact">
            <?php if ($column_left && $column_right) { ?>
            <?php $class = ' col-sm-6 col-md-6 col-lg-6'; ?>
            <?php } elseif ($column_left || $column_right) { ?>
            <?php $class = 'col-sm-9 col-md-9 col-lg-9'; ?>
            <?php } else { ?>
            <?php $class = ' col-sm-12 col-md-12 col-lg-12'; ?>
            <?php } ?>
            <div id="content" class=" col-xs-12 <?php echo $class; ?>"><?php echo $content_top; ?>
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
        $b = array("#f8c828", "#008fd1", "#9ecb3c", "#f47a2f", "f8c828",);
        $c = array("#008fd1", "#f8c828", "#008fd1", "#f8c828", "#008fd1");
        $d = array("#ffffff", "#000000", "#ffffff", "#000000", "#000000");


          if ($categories) { ?>
                <div class="row hidden-md hidden-lg" style="width: 100%;">
                    <h1 class="category_heading_title_1"><?php echo $parent_categorie.' '.$heading_title; ?></h1>
                </div>
                <div class="row row_border  hidden-xs hidden-sm col-md-12 col-lg-12" style="width: 70%;">
                    <div class="border_h1">
                        <h1 class="category_heading_title"><?php echo $parent_categorie.' '.$heading_title; ?></h1>
                    </div>
                    <div class="border_2"></div>
                </div>
                <?php foreach ($categories as $category) {
            ?>
                <div class="col-md-4 categoryshow">
                    <a href="<?php echo $category['href']; ?>">
                        <div class="col-md-12 cat-thumb  no-padding no-margin text-center categoryshow"
                             style="background-color: <?php echo $b[$aa]; ?>">
                            <div class="col-sm-12 spancat" style="padding:0px;">
                                <div style="height: 70px !important;padding:10px;line-height: 19px;" class="category-title-style"><?php echo $category['name']; ?></div>
                                <?php if($category['image'] != ''){ ?>
                                <img src="<?php echo 'image/',$category['image']; ?>"
                                     alt="<?php echo $category['name']; ?>" class="img-responsive"/>
                                <?php }else{ ?>
                                <img src="../../image/catalog/perila_default.png"
                                     alt="<?php echo $category['name']; ?>" class="img-responsive"/>
                                <?php } ?>
                            </div>
                        </div>
                    </a>
                </div>
                <?php } ?>


                <?php } ?>


                <?php if ($products) { ?>
                <div class="row hidden-md hidden-lg" style="width: 100%;">
                    <h1 class="category_heading_title_1"><?php echo $parent_categorie.' '.$heading_title; ?></h1>
                </div>
                <div class="row row_border  hidden-xs hidden-sm col-md-12 col-lg-12" style="width: 70%;">
                    <div class="border_h1">
                        <h1 class="category_heading_title"><?php echo $parent_categorie.' '.$heading_title; ?></h1>
                    </div>
                    <div class="border_2"></div>
                </div>
                <div class="row col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <?php foreach ($products as $product) {
                        $aa = array_random($a);
                    ?>
                    <div class="product-layout product-list col-xs-12 col-md-6 col-sm-12 col-lg-6">
                        <span class="ribbon"> от <?php echo $product['tax']; ?></span>
                        <div class="product-thumb cat-thumb" style="background-color: <?php echo $b[$aa]; ?>">
                            <div class="row " style="margin: 0;">
                                <a href="<?php echo $product['href']; ?>">
                                    <div class="col-xs-6 col-sm-6 prodleft border_conteiner" style="min-height:200px;background: url(<?php echo $product['thumb']; ?>) center no-repeat;background-size: cover;">
                                    </div>
                                </a>
                                <span class="ribbonright" style="border-right: 10px solid <?php echo $b[$aa]; ?> "></span>
                                <div class="col-xs-6 col-sm-6 text-center prodright" style="padding:0px;">
                                    <span class="product-title-style text_zagoli">
                                        <a href="<?php echo $product['href']; ?>">
                                            <b><?php echo $product['name']; ?></b>
                                        </a>
                                    </span>
                                    <div class="row text-center">
                                        <a href="<?php echo $product['href']; ?>" style="background-color: <?php echo $c[$aa]; ?>;padding: 10px;" class="btncart" >
                                            <span class="" style="color:<?php echo $d[$aa]; ?>"><?php echo $button_cart;?></span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php } ?>
                </div>
                <?php } ?>
                <?php if (!$categories && !$products) { ?>
                <p><?php echo $text_empty; ?></p>
                <div class="buttons">
                    <div class="pull-right"><a href="<?php echo $continue; ?>"
                                               class="btn btn-primary"><?php echo $button_continue;?></a></div>
                </div>
                <?php } ?>
                <?php echo $content_bottom; ?></div>
        </div>
    </div>
</div>
<?php echo $column_right; ?></div>
<?php echo $footer; ?>