<footer style="padding-top: 0; border: 0">
  <div class="hidden-xs footer-img">
    <div class="container hidden-xs">
      <div class="col-sm-3 col-md-3 col-lg-3 col-xl-3 footer-padding" style="line-height: 20px">
          <spaan class="footer-text-style footer-tex-color-1">ЗАКАЖИТЕ ОБРАТНЫЙ ЗВОНОК</spaan><br>
          <spaan class="footer-text-style footer-tex-color-2">И НАШИ СПЕЦИАЛИСТЫ <span class="footer-tex-color-3">ВАМ</span> ПЕРЕЗВОНЯТ</spaan>
      </div>
      <div class="col-sm-9 col-md-9 col-lg-9 col-xl-9 footer-form-div">
        <form action="" id="contactForm" method="post">
          <ul id="errorMasege" style="padding-left: 15px">
            <code style="display: none" class="userName error-style">Некоректно заполнено Имя</code>
            <code style="display: none" class="userPhone error-style">Некоректно заполнен номер</code>
          </ul>
          <div class="col-sm-4 col-md-4 col-lg-4 col-xl-4">
            <span class="form-text-style">Ваше имя:</span>
            <input type="text" id="userName" name="userName" class="form-control input-style contactItem">
          </div>
          <div class="col-sm-4 col-md-4 col-lg-4 col-xl-4">
            <span class="form-text-style">Ваш телефон:</span>
            <input type="text" id="userPhone" name="userPhone" class="form-control input-style contactItem">
          </div>
          <div class="col-sm-4 col-md-4 col-lg-4 col-xl-4 footer-btn-div">
            <button type="button" id="btn-contact" class=" btn btn-primary footer-btn-style"><span class="footer-btn-text-style">ЗАКАЗАТЬ ЗВОНОК</span></button>
          </div>
        </form>
      </div>
    </div>
  </div>
  <div class="hidden-xs" style="width: 100%; background-color: #ffffff">
    <div class="container footer-div-middle">
      <div class="col-sm-3 col-md-3 col-lg-3 col-xl-3 footer-div-border" style="padding-bottom: 22px; padding-left: 0">
        <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 footer-div-logo ">
          <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
        </div>
        <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 footer-icon-padding">
            <a href="<?php echo $skype; ?>" class="footer-a-padding"><img class="icon-footer-padding" src="../../../catalog/view/theme/default/image/skype.png"></a>
            <a href="<?php echo $vkontakte; ?>" class="footer-a-padding"><img class="icon-footer-padding" src="../../../catalog/view/theme/default/image/vk.png"></a>
            <a href="<?php echo $google; ?>" class="footer-a-padding"><img class="icon-footer-padding" src="../../../catalog/view/theme/default/image/google.png"></a>
            <a href="<?php echo $facebook; ?>" class="footer-a-padding"><img class="icon-footer-padding" src="../../../catalog/view/theme/default/image/fc.png"></a>
            <a href="<?php echo $twitter; ?>"><img class="icon-footer-padding" src="../../../catalog/view/theme/default/image/tw.png"></a>
        </div>
      </div>
      <div class="col-sm-5 col-md-3 col-lg-3 col-xl-3 footer-div-border">
        <div class="col-sm-12 hidden-md col-lg-12 col-xl-12 sm-footer-middle-padding">
          <div class="col-sm-2 col-md-2 col-lg-2 col-xl-2 no-padding">
            <img src="../../../catalog/view/theme/default/image/phone.png" style="padding-bottom: 5px">
          </div>
          <div class="col-sm-10 col-md-10 col-lg-10 col-xl-10 no-padding footer-phone-style">
            <span>Телефон: </span><span><?php echo $telephone; ?></span>
          </div>
        </div>
        <!--md footer telephone begin-->
        <div class="hidden-sm col-md-12 hidden-lg hidden-xl " style="padding-bottom: 5px;">
          <div class="col-md-2 md-footer-padding">
            <img src="../../../catalog/view/theme/default/image/phone.png" style="padding-bottom: 5px">
          </div>
          <div class=" col-md-10 no-padding footer-phone-style">
            <span>Телефон:</span><br><span><?php echo $telephone; ?></span>
          </div>
        </div>
        <!--md footer telephone end-->
        <div class="col-sm-12 hidden-md col-lg-12 col-xl-12 sm-footer-middle-padding">
          <div class="col-sm-2 col-md-2 col-lg-2 col-xl-2 no-padding">
            <img src="../../../catalog/view/theme/default/image/email.png">
          </div>
          <div class="col-sm-10 col-md-10 col-lg-10 col-xl-10 no-padding footer-email-style">
            <span class="">Email: </span><span><?php echo $email; ?></span>
          </div>
        </div>
        <!--md footer email begin-->
        <div class="hidden-sm col-md-12 hidden-lg hidden-xl">
          <div class="col-md-2 md-footer-padding">
            <img src="../../../catalog/view/theme/default/image/email.png">
          </div>
          <div class="col-md-10 no-padding footer-email-style">
            <span class="footer-address-style">Email:</span><br><span><?php echo $email; ?></span>
          </div>
        </div>
        <!--md footer email end-->
      </div>
      <div class="hidden-sm col-md-3 col-lg-3 col-xl-3 footer-div-border footer-div-address">
        <div class="col-sm-2 col-md-2 col-lg-2 col-xl-2 no-padding">
          <img src="../../../catalog/view/theme/default/image/address.png">
        </div>
        <div class="col-sm-10 col-md-10 col-lg-10 col-xl-10 footer-address-style">
          <span>Адресс: </span><span><?php echo $address;?></span>
        </div>
      </div>
      <div class="hidden-sm col-md-3 col-lg-3 col-xl-3 footer-div-address">
        <div class="col-sm-2 col-md-2 col-lg-2 col-xl-2 no-padding">
          <img src="../../../catalog/view/theme/default/image/grafic.png">
        </div>
        <div class="col-sm-10 col-md-10 col-lg-10 col-xl-10 footer-address-style">
          <span>Адресс: </span><span><?php echo $open;?></span>
        </div>
      </div>
      <!--footer sm address and graphic begin-->
      <div class="col-sm-4 hidden-md hidden-lg hidden-xl footer-div-border footer-div-address" style="padding-bottom: 14px">
        <div class="col-sm-2 col-md-2 col-lg-2 col-xl-2 footer-right-icon-padding">
          <img src="../../../catalog/view/theme/default/image/address.png">
        </div>
        <div class="col-sm-10 col-md-10 col-lg-10 col-xl-10 footer-address-style">
          <span>Адресс: </span><span><?php echo $address;?></span>
        </div>
        <div class="col-sm-2 col-md-2 col-lg-2 col-xl-2 footer-right-icon-padding">
          <img src="../../../catalog/view/theme/default/image/grafic.png">
        </div>
        <div class="col-sm-10 col-md-10 col-lg-10 col-xl-10 footer-grafic-style">
          <span>Адресс: </span><span><?php echo $open;?></span>
        </div>
      </div>
      <!--footer sm address and graphic end-->
    </div>
  </div>
  <div class="hidden-xs footer-img-bottom">
    <div class="container" style="padding-top: 35px; padding-bottom: 35px">
      <div class="col-sm-8 col-md-8 col-lg-8 col-xl-8">
        <ul class="nav navbar-nav menu-style" style="line-height: 30px">
          <li class="li-text-style"><a class="footer-menu-style footer-a-style" href="">Категории</a></li>
          <li class="li-text-style"><a class="footer-menu-style footer-a-style" href="">Главная</a></li>
          <li class="li-text-style"><a class="footer-menu-style footer-a-style" href="">О компании</a></li>
          <li class="li-text-style"><a class="footer-menu-style footer-a-style" href="">Новости</a></li>
          <li class="li-text-style"><a class="footer-menu-style footer-a-style" href="">Наши работы</a></li>
          <li class="li-text-style"><a class="footer-menu-style footer-a-style" href="">Доставка и оплата</a></li>
          <li class="li-text-style"><a class="footer-menu-style footer-a-style" href="">Контакты</a></li>
        </ul>
      </div>
      <div class="col-sm-4 col-md-4 col-lg-4 col-xl-4" style="padding-left: 0">
        <div class="col-sm-4 col-md-4 col-lg-4 col-xl-4 footer-text-reklama">
          <span style="font-size: 12px">Сделано в:</span>
        </div>
        <div class="col-sm-6 col-md-6 col-lg-6 col-xl-6 footer-reklama-logo">
          <img src="../../../catalog/view/theme/default/image/logo-reklama.png">
        </div>
      </div>
      <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12" style="padding-top: 10px; font-size: 10px">
        <span>&#169; 2016. Все права защищены.</span>
      </div>
    </div>
  </div>
  <!--Mobile footer begin-->
  <div class="hidden-md hidden-lg hidden-xl hidden-sm footer-mobile-img">
    <div class="footer-mobile-padding">
      <div class=" footer-padding " style="line-height: 20px">
        <spaan class="footer-mobile-text-style footer-tex-color-2">ЗАКАЖИТЕ ОБРАТНЫЙ ЗВОНОК</spaan><br>
        <spaan class="footer-mobile-text-style footer-tex-color-2"><span class="footer-tex-color-3">ВАМ</span> ПЕРЕЗВОНЯТ</spaan>
      </div>
      <div class=" footer-mobile-form-div">
        <form action="" id="contactForm-1" method="post">
          <ul id="errorMasege" style="padding-left: 15px" >
            <code style="display: none" class="error error-style">Некоректно заполненна информация</code>
          </ul>
          <div class="input-footer-padding">
            <span class="form-mobile-text-style">Ваше имя:</span>
            <input type="text" id="userName" name="userName" class="form-control input-style contactItem">
          </div>
          <div class="input-footer-padding">
            <span class="form-mobile-text-style">Ваш телефон:</span>
            <input type="text" id="userPhone" name="userPhone" class="form-control input-style contactItem">
          </div>
          <div class="footer-btn-mobile-div">
            <button type="button" id="btn-contact-1" class="btn btn-primary footer-btn-mobile"><span class="footer-btn-text-style">ЗАКАЗАТЬ ЗВОНОК</span></button>
          </div>
        </form>
      </div>
    </div>
  </div>
  <div class="footer-bottom-div">
    <div class="hidden-md hidden-lg hidden-xl hidden-sm footer-icon-padding mobile-footer-icon-position">
      <a href="<?php echo $skype; ?>" class="footer-a-padding"><img class="footer-mobile-icon-style" src="../../../catalog/view/theme/default/image/mobile-skype.png"></a>
      <a href="<?php echo $instagram; ?>" class="footer-a-padding"><img class="footer-mobile-icon-style" src="../../../catalog/view/theme/default/image/mobile-instagram.png"></a>
      <a href="<?php echo $vkontakte; ?>" class="footer-a-padding"><img class="footer-mobile-icon-style" src="../../../catalog/view/theme/default/image/mobile-vk.png"></a>
      <a href="<?php echo $pinterest; ?>" class="footer-a-padding"><img class="footer-mobile-icon-style" src="../../../catalog/view/theme/default/image/mobile-rekl.png"></a>
      <a href="<?php echo $twitter; ?>"><img class="footer-mobile-icon-style" src="../../../catalog/view/theme/default/image/mobile-twiter.png"></a>
    </div>
    <div class="hidden-md hidden-lg hidden-xl hidden-sm mobile-footer-and-text">
      <span>&#169; 2016. Все права защищены.</span>
    </div>
  </div>
  <!--Mobile footer end-->

  <!--<div class="container">
    <div class="row">
      <?php if ($informations) { ?>
      <div class="col-sm-3">
        <h5><?php echo $text_information; ?></h5>
        <ul class="list-unstyled">
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
        </ul>
      </div>
      <?php } ?>
      <div class="col-sm-3">
        <h5><?php echo $text_service; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
          <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-3">
        <h5><?php echo $text_extra; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
          <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
          <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
          <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-3">
        <h5><?php echo $text_account; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
        </ul>
      </div>
    </div>
    <hr>
    <p><?php echo $powered; ?></p> 
  </div>-->
</footer>

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//--> 

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->

</body></html>