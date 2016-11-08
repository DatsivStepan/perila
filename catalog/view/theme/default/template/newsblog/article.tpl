<?php echo $header; ?>
<div class="container">

    <div class="row">
        <div class="hidden-xs">
            <?php echo $column_left; ?>
        </div>
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-9'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-12'; ?>
        <?php } ?>
        <div id="content " class="col-xs-12 col-sm-9 col-md-9 col-lg-9"><?php echo $content_top; ?>
            <div class="breadcrumb">
                <ul class="breadcrumb text_breadcrumb_gallery hidden-xs col-sm-12 col-md-12 col-lg-12" id="row_text"
                    style="font-family: 'Helvetica'; font-style: normal; font-size: 17px; color: #008fd1; margin: 15px 38px 25px 0;">
                    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                    <?php if ($breadcrumb ['href']==('')){ ?>
                    <li><?php echo $breadcrumb['text']; ?></li>
                    <?php }else{ ?>
                    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                    <?php } ?>
                    <?php } ?>

                </ul>
            </div>
            <div id="content " class=" col-xs-12 col-sm-12 col-md-12 col-lg-12"><?php echo $content_top; ?>
                <div class="row col-xs-12 col-sm-12 col-md-12 col-lg-12" style="    padding-bottom: 3%;">
                    <div class="row headergall border_headergall hidden-md hidden-sm hidden-lg">
                        <div class="col-sm-4 text_span text_span_1 block_headergall"><span><?php echo $heading_title;

    ?></span></div>
                        <div class="col-sm-8">
                            <div class="hidden-xs col-sm-9 borderb"></div>
                            <div class=" hidden-xs col-sm-3 bordery border_style"></div>

                        </div>
                    </div>
                    <div class="hidden-xs col-sm-1 col-md-1 col-lg-1"></div>
                    <div class="hidden-xs col-sm-7 col-md-5 col-lg-4 text_title_article"><span> <?php echo $heading_title;

    ?></span></div>
                    <div class="col-xs-3 col-sm-4 col-md-6 col-lg-7">
                        <div class="hidden-xs col-sm-8 col-md-8 col-lg-8 borderb"></div>
                        <div class="hidden-xs col-sm-4 col-md-4 col-lg-4 bordery"></div>

                    </div>
                </div>
                <div class="cat_pad product-list col-xs-12" style="padding-top: 2px;">
                    <div class="product-thumb">
                        <div class="productimg">
                            <img src="<?php echo $original; ?>" alt="<?= $article['name'];?>" class="img-responsive"/>
                        </div>

                        <div class="col-xs-12 cat_text ">
                            <h4 class="style_heading_title"><?php echo $heading_title; ?></h4>
                            <p class="style_description"><?php echo $description; ?></p>
                            <p class="style_datecreate"><?php echo $datecreate; ?>/ <a href="<?php echo $href;?>"
                                                                                       tabindex="-1"
                                                                                       title="<?php echo $heading_title;?>">
                                    <?php if ($category_id==1) { ?>
                                    Назад к новостям
                                    <?php }else{ ?>
                                    Назад к нашим работам
                                    <?php } ?>
                                </a></p>

                            <?php if ($images) { ?>
                            <ul class="thumbnails text-center" style="background-color: #F4F4F4;">
                                <?php foreach ($images as $image) { ?>


                                <li class="image-additional"><a class="thumbnail" href="<?php echo $image['popup']; ?>"
                                                                title="<?php echo $heading_title; ?>"> <img
                                                src="<?php echo $image['thumb']; ?>"
                                                title="<?php echo $heading_title; ?>"
                                                alt="<?php echo $heading_title; ?>"/></a></li>
                                <?php } ?>
                            </ul>
                            <?php } ?>

                        </div>
                    </div>
                </div>
            </div>


            <?php echo $content_bottom; ?></div>
        <?php echo $column_right; ?></div>
    <div class="row col-xs-12 col-sm-12 col-md-12 col-lg-12" style="height: 100px; width: 100%; ">

    </div>
</div>
<?php echo $footer; ?>