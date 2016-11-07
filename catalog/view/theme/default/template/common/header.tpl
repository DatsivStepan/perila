<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title><?php echo $title; ?></title>
  <base href="<?php echo $base; ?>" />
  <?php if ($description) { ?>
  <meta name="description" content="<?php echo $description; ?>" />
  <?php } ?>
  <?php if ($keywords) { ?>
  <meta name="keywords" content= "<?php echo $keywords; ?>" />
  <?php } ?>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <?php if ($icon) { ?>
  <link href="<?php echo $icon; ?>" rel="icon" />
  <?php } ?>
  <?php foreach ($links as $link) { ?>
  <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
  <?php } ?>
  <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
  <link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
  <script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
  <link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
  <link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
  <link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
  <link href="catalog/view/theme/default/stylesheet/Nazar.css" rel="stylesheet">
  <link href="catalog/view/theme/default/stylesheet/mystels.css" rel="stylesheet">
  <link href="catalog/view/theme/default/stylesheet/styless.css" rel="stylesheet">
  <?php foreach ($styles as $style) { ?>
  <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
  <?php } ?>
  <script src="catalog/view/javascript/common.js" type="text/javascript"></script>
  <?php foreach ($scripts as $script) { ?>
  <script src="<?php echo $script; ?>" type="text/javascript"></script>
  <?php } ?>
  <?php echo $google_analytics; ?>
</head>

<body class="<?php echo $class; ?>">
<nav id="top" class="col-md-12 header-nav-style">
  <!--Mobile header begin-->
  <div class="row hidden-md hidden-lg hidden-xl hidden-sm div-email-style" style="margin: 0;">
    <div class="col-xs-6 mobile-email-padding">
      <span class="email-color text-left mobile-email-style"><?php echo $email; ?></span>
    </div>
    <div class="col-xs-6 mobile-phone-padding">
      <span style="" class="text-right mobile-phone-style"><?php echo $telephone; ?></span>
    </div>
  </div>
  <div class="row" style="margin: 0">
    <div class="hidden-lg hidden-md hidden-xl hidden-sm navbar navbar-default no-margin" style=" border-top-width: 0px !important;">
      <div class="container ">
        <div class="navbar-header col-xs-12 mobile-navbar-height" style="margin: 0">
          <div class="col-xs-9 no-margin mobile-logo-padding">
            <?php if ($logo) { ?>
            <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
            <?php } else { ?>
            <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
            <?php } ?>
          </div>
          <div class="xs-3">
            <button type="button" style="border-color: transparent"  class="navbar-toggle no-margin mobile-btn-padding" data-toggle="collapse" data-target=".navbar-collapse">
              <span class="icon-bar span-width"></span>
              <span class="icon-bar span-width"></span>
              <span class="icon-bar span-width"></span>
            </button>
          </div>
        </div>
        <div class="collapse navbar-collapse col-xs-12 col-sm-12 dropdown-position no-padding no-margin">
            <ul class="nav navbar-nav" style="line-height: 30px">
              <a href="index.php?route=common/home"><li class="li-text-style">Главная</li></a>
                <a href="index.php?route=information/about"><li class="li-text-style">О компании</li></a>
                <a href="index.php?route=newsblog/category&newsblog_category_id=1"><li class="li-text-style">Новости</li></a>
              <a href="index.php?route=information/gallery"><li class="li-text-style">Наши работы</li></a>
              <a href="index.php?route=information/delivery"><li class="li-text-style">Доставка и оплата</li></a>
              <a href="index.php?route=information/contact"><li class="li-text-style">Контакты</li></a>
            </ul>
        <!--  <?php if ($categories) { ?>
          <ul class="nav navbar-nav no-margin">
            <?php foreach ($categories as $category) { ?>
            <?php if ($category['children']) { ?>
            <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a>
              <div class="dropdown-menu">
                <div class="dropdown-inner">
                  <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                  <ul class="list-unstyled">
                    <?php foreach ($children as $child) { ?>
                    <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                    <?php } ?>
                  </ul>
                  <?php } ?>
                </div>
                <a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a></div>
            </li>
            <?php } else { ?>
            <li><a class="a-color dropdown-no-padding" href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
            <?php } ?>
            <?php } ?>
          </ul>-->
        </div>
      </div>
    </div>
    <div class="hidden-lg hidden-md hidden-xl hidden-sm  col-sm-12 col-xs-12 no-padding mobile-background-image" >
      <div class="container">
        <div class="">
        <div class="col-xs-8 banner-text-padding" >
          <span class=" banner-text-style" style="display: block">Это опора вашего<br> успеха</br></span>
        </div>
        <div class="col-xs-3 div-banner-border" >
        </div>
        </div>
        <div class="col-xs-12 mobile-text-div">
          <span class="mobile-text-style">Проектирование</span><br>
          <span class="mobile-text-style">и изготовление перил</span><br>
          <span class="mobile-text-style">и лестничных ограждений</span>
        </div>
        <div class="no-margin mobile-btn-div">
          <button type="button" class="btn nav-bar mobile-btn mobile-btn-style-2 ">Оформить заказ</button>
        </div>
        <div class="no-margin mobile-btn-div">
          <button type="button" class="btn nav-bar mobile-btn btn-xs mobile-btn-style-1 "><span>Вызвать замерщика</span></button>
        </div>
      </div>
    </div>
  </div>
  <!--Mobile header end-->

  <div class=" hidden-xs col-sm-12 col-md-12 col-lg-12 col-xl-12 no-padding no-margin top-header-style" style="">
    <div class="container" >
      <div class="row no-margin">
        <div class="col-sm-6 col-md-6 col-lg-6 col-xl-6">
          <div id="logo" class="col-sm-6 col-md-6 col-lg-6 col-xl-6 hidden-xs  logo-padding no-margin">
            <?php if ($logo) { ?>
            <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
            <?php } else { ?>
            <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
            <?php } ?>
          </div>
          <div class="col-sm-6 col-md-6 col-lg-6 col-xl-6 btn-padding no-margin btn-header:hover">
            <button type="button" class="btn nav-bar btn-xs btn-color width-btn">Вызвать замерщика</button>
          </div>
        </div>
        <div class="col-sm-6 col-md-6 col-lg-6 col-xl-6" style="padding-left: 0">
          <div class="col-sm-4 col-md-4 col-lg-4 col-xl-4 search-padding">
            <?php echo $search; ?>
          </div>
          <div class="col-sm-8 col-md-8 col-lg-8 col-xl-8 " style="padding-right: 0">
            <div class="col-sm-6 col-md-6 col-lg-6 no-padding style-display-none">
              <div class="col-sm-4 col-md-4 col-lg-4 graph-icon-padding">
                <img src="../../../admin/view/image/graphic.png">
              </div>
              <div class="col-sm-6 col-md-6 col-lg-6 no-padding text-center graph-padding graph-style " style="">
                <?php echo $open; ?>
              </div>
            </div>
            <div class="col-sm-6 col-md-6 col-lg-6 col-xl-6 no-margin phone-padding div-media-width">
              <div style="position: relative">
                <div class="col-sm-3 col-md-3 col-lg-3 col-xl-3 phone-icon-padding" style="color: #008fd1">
                  <ul class="list-inline">
                    <li><a href="<?php echo $contact; ?>"><img src="../../../admin/view/image/phoneIcon.png"></a>
                </div>
                <div class="col-sm-9 col-md-9 col-lg-9 col-xl-9 phone-padding" >
                      <span style="" class="phone-style"><?php echo $telephone; ?></span></li>
                  </ul>
                </div>
              </div>
              <div class="row email-position">
                <div class="col-sm-3 col-md-3 col-lg-3 email-icon-padding" >
                  <img src="../../../admin/view/image/Email-logo.png">
                </div>
                <div class="col-sm-9 col-md-8 col-lg-9 email-padding email-style">
                  <?php echo $email; ?>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
    <div class="row no-margin hidden-xs" >
      <div class="col-md-12 no-padding">
        <?php echo $slider; ?>
      </div>
    </div>

    <div class="row no-margin hidden-xs" style="background-color: #ffffff; padding-top: 10px">
      <div class="container">
        <nav class="navbar" style="margin: 0; border-radius:0; border: 0;">
          <div class="navbar-default">
            <ul class="nav navbar-nav ul-position menu-style" >
              <div class="col-sm-2 col-md-2 col-lg-2 col-xl-2 div-li-border-right div-li-position">
                <a href="index.php?route=common/home"><li class="li-text-style">Главная</li></a>
              </div>
              <div class="col-sm-2 col-md-2 col-lg-2 col-xl-2 div-li-border-right div-li-position">
                <a href="index.php?route=information/about"><li class="li-text-style">О компании</li></a>
              </div>
              <div class="col-sm-2 col-md-2 col-lg-2 col-xl-2 div-li-border-right div-li-position">
                  <a href=""><li class="li-text-style">Новости</li></a>
              </div>
              <div class="col-sm-2 col-md-2 col-lg-2 col-xl-2 div-li-border-right div-li-position">
                <a href="index.php?route=information/gallery"><li class="li-text-style">Наши работы</li></a>
              </div>
              <div class="col-sm-2 col-md-2 col-lg-2 col-xl-2 div-li-border-right div-li-position">
                <li class="li-text-style"><a href=""></a>Доставка и оплата</li>
              </div>
              <div class="col-sm-2 col-md-2 col-lg-2 col-xl-2 div-li-position">
                <a href="index.php?route=information/contact"><li class="li-text-style">Контакты</li></a>
              </div>
            </ul>
          </div>
        </nav>
         <!-- <?php if ($categories) { ?>
          <nav class="navbar" style="margin: 0; border-radius:0; border: 0;">
            <div class="navbar-default">
                <ul class="nav navbar-nav ul-position" >
                  <?php $counter=0; ?>
                  <?php foreach ($categories as $category) { $counter++;  ?>
                  <?php if ($category['children']) { ?>
                  <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a>
                    <div class="dropdown-menu">
                      <div class="dropdown-inner">
                        <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                        <ul class="list-unstyled">
                          <?php foreach ($children as $child) { ?>
                          <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                          <?php } ?>
                        </ul>
                        <?php } ?>
                      </div>
                      <a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a> </div>
                  </li>
                  <?php } else if($counter != count($categories)){ ?>
                  <div class="col-sm-2 col-md-2 col-lg-2 col-xl-2 div-li-border-right div-li-position">
                    <li class="li-text-style"><a class="a-color" href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                  </div>
                  <?php }else{  ?>
                    <div class="col-sm-2 col-md-2 col-lg-2 col-xl-2 div-li-position">
                      <li class="li-text-style"><a class="a-color " href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                    </div>
                  <?php } ?>
                  <?php } ?>
                </ul>
            </div>
          </nav>-->
      </div>
    </div>
    <?php } ?>
  </div>
</nav>


