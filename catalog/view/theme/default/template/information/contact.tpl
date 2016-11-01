<?php echo $header; ?>
<div class="container">

    <div class="row"><?php echo $column_left; ?>
        <div class="container_contact">
            <?php if ($column_left && $column_right) { ?>
            <?php $class = 'col-xs-12 col-sm-6 col-md-6 col-lg-6'; ?>
            <?php } elseif ($column_left || $column_right) { ?>
            <?php $class = 'col-xs-12 col-sm-9 col-md-9 col-lg-9'; ?>
            <?php } else { ?>
            <?php $class = 'col-xs-12 col-sm-12 col-md-12 col-lg-12'; ?>
            <?php } ?>

            <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
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
                <div class="row col-xs-12 col-sm-12 col-md-12 col-lg-12" style="padding: 11px 0px 14px 45px;">
                    <div class="col-xs-6 col-sm-2 col-md-2 col-lg-2">
                        <h1 class="bold"><?php echo $heading_title; ?></h1>
                    </div>
                    <div class="hidden-xs col-sm-6 col-md-6 col-lg-6 border01">
                    </div>
                    <div class="col-xs-6 col-sm-4 col-md-4 col-lg-4 border02">
                    </div>
                </div>
                <p class="light2 hidden-xs col-sm-12 col-md-12 col-lg-12"><?php echo $text_location; ?></p>
                <h3 class="light col-xs-12 col-sm-10 col-md-12 col-lg-12"><?php echo $text_location2; ?></h3>
                <div class="row col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
                    <div class="row col-xs-12 col-sm-12 col-md-7 col-lg-7">
                        <div class="dani">
                            <div class="row col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <div class="col-xs-5 col-sm-2 col-md-2 col-lg-2 str1">
                                    <p class="str1"><?php echo $text_store; ?></p>
                                </div>
                                <div class="col-xs-7 col-sm-10 col-md-10 col-lg-10 border1">
                                </div>
                            </div>
                            <br/>
                            <p class="texs1 col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
                                <?php echo $address; ?>
                            </p>
                        </div>
                        <div class="dani">
                            <div class="row col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 str2">
                                    <p class="str2"><?php echo $text_grafick; ?></p>
                                </div>
                                <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 border2">
                                </div>
                            </div>
                            <p class="texs2 col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <?php echo $config_open; ?>
                            </p>
                        </div>
                        <div class="dani">
                            <div class="row col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 str3">
                                    <p class="str3"><?php echo $text_telephone; ?></p>
                                </div>
                                <div class="col-xs-6 col-sm-6 col-md-9 col-lg-9 border3">
                                </div>
                            </div>
                            <p class="texs3 col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <?php echo $telephone; ?>
                            <p>
                        </div>
                        <div class="dani">
                            <div class="row col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <div class="col-xs-6 col-sm-6 col-md-4 col-lg-4 str4">
                                    <p class="str4"><?php echo $text_email; ?></p>
                                </div>
                                <div class="col-xs-6 col-sm-6 col-md-8 col-lg-8 border4">
                                </div>
                            </div>
                            <p class="texs4 col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <?php echo $config_email; ?>
                            </p>
                        </div>
                    </div>

                    <div class="form col-xs-12 col-sm-12 col-md-5 col-lg-5">
                        <form action="<?=$action?>" method="post" class="email_adminy">
                            <p class="vopros"><?php echo $text_contact; ?></p>
                            <div class="form-group required">
                                <label class="col-xs-12 col-sm-12 col-md-12 col-lg-12 email"
                                       for="input-email"><?php echo $entry_email; ?></label>
                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                    <input type="text" name="email" value="<?php echo $email; ?>" id="input-email"
                                           class="form-control text"/>
                                    <?php if ($error_email) { ?>
                                    <div class="text-danger"><?php echo $error_email; ?></div>
                                    <?php } ?>
                                </div>
                            </div>
                            <div class="form-group required">
                                <label class="col-xs-12 col-sm-12 col-md-12 col-lg-12 enquiry"
                                       for="input-enquiry"><?php echo $entry_enquiry; ?></label>
                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <textarea name="enquiry" rows="10" id="input-enquiry"
                                          class="form-control text"><?php echo $enquiry; ?></textarea>
                                    <?php if ($error_enquiry) { ?>
                                    <div class="text-danger"><?php echo $error_enquiry; ?></div>
                                    <?php } ?>
                                </div>
                            </div>
                            <div class="buttons">
                                <div class="center-block">
                                    <input class="btn otpravutu" type="submit" value="<?php echo $button_submit; ?>"/>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <?php echo $column_right; ?></div>
    <div class="mapa">

    </div>
</div>

<?php echo $footer; ?>
