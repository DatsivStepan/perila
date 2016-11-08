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
            <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
                <div class="breadcrumb">
                    <ul class="breadcrumb text_breadcrumb_article hidden-xs col-sm-12 col-md-12 col-lg-12" id="row_text" style="font-family: 'Helvetica'; font-weight: 500; font-style: normal; font-size: 17px; color: #008fd1; margin: 15px 38px 0 0;">
                        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                        <?php if ($breadcrumb ['href']==('')){ ?>
                        <li><?php echo $breadcrumb['text']; ?></li>
                        <?php }else{ ?>
                        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                        <?php } ?>
                        <?php } ?>

                    </ul>
                </div>
                <div id="content" class="prem2  col-sm-9 col-md-9 col-lg-9  margin_prem2"
                     style="width: 100%;"><?php echo $content_top; ?>
                    <div class="row headergall border_headergall">
                        <div class="col-sm-4 text_span text_span_1 block_headergall"><span>Наши работы</span></div>
                        <div class="col-sm-8">
                            <div class="hidden-xs col-sm-9 borderb"></div>
                            <div class=" hidden-xs col-sm-3 bordery border_style"></div>

                        </div>
                    </div>
                    <?php foreach ($banners as $banner) { ?>
                    <div class="col-xs-4 col-sm-3 col-md-3 col-lg-3 no-margin no-padding container_spanprod">

                        <a title="<?php echo $banner['title']; ?>" class="fancybox-button" rel="fancybox-button" href="<?php echo $banner['full_img']; ?>"><img src="<?php echo $banner['image']; ?>"
                                                                      alt="<?php echo $banner['title']; ?>"
                                                                      class="img-responsive"/></a>
                    <span class="product_span spanprod"><?php echo  $banner['title']; ?></span>
                    </div>
                    <?php } ?>

                    <?php echo $content_bottom; ?></div>
                <?php echo $column_right; ?></div>
        </div>
    </div>
    <div class="row hidden-xs col-sm-12 col-md-12 col-lg-12" style="height: 100px; width: 100%; ">

    </div>
</div>
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
<?php echo $footer; ?>

