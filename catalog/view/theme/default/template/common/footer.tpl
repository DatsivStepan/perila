<footer class="footer-style">
  <div class="hidden-xs footer-img footer-img-div-style">
    <div class="container hidden-xs">
      <div class="col-sm-3 col-md-3 col-lg-3 col-xl-3 footer-padding footer-div-text-style">
          <spaan class="footer-text-style footer-tex-color-1">ЗАКАЖИТЕ ОБРАТНЫЙ ЗВОНОК</spaan><br>
          <spaan class="footer-text-style footer-tex-color-2">И НАШИ СПЕЦИАЛИСТЫ <span class="footer-tex-color-3">ВАМ</span> ПЕРЕЗВОНЯТ</spaan>
      </div>
      <div class="col-sm-9 col-md-9 col-lg-9 col-xl-9 footer-form-div">
        <form action="" id="contactForm" method="post">
          <ul class="footer-ul-error">
            <code id="errorMasege" class="userName footer-code-error error-style">Некорректно заполнены данные</code>
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
  <div class="hidden-xs footer-middle-div-style">
    <div class="container footer-div-middle">
      <div class="col-sm-3 col-md-3 col-lg-3 col-xl-3 footer-div-border footer-logo-div-style">
        <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 footer-div-logo ">
          <?php if ($logo) { ?>
          <?php if($currentRout == ''){
                    $about_rout = '';
                 }else{
                    $about_rout = 'href="/"';
                 } ?>
          <a <?=$about_rout;?> ><img src="<?php echo $logo; ?>" title="" alt="" class="img-responsive" /></a>
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
        <div class="row hidden-md  sm-footer-middle-padding">
          <div class="col-sm-2 col-md-2 col-lg-2 col-xl-2 footer-phone-icon-style">
            <img src="../../../catalog/view/theme/default/image/phone.png" class="footer-phone-img-style">
          </div>
          <div class="col-sm-10 col-md-10 col-lg-10 col-xl-10 no-padding footer-phone-style">
            <span>Телефон: </span><span><?php echo $telephone; ?></span>
          </div>
        </div>
        <!--md footer telephone begin-->
        <div class="hidden-sm row hidden-lg hidden-xl footer-phone-div-style">
          <div class="col-md-2 md-footer-padding">
            <img src="../../../catalog/view/theme/default/image/phone.png" class="footer-phone-img-style">
          </div>
          <div class=" col-md-10 no-padding footer-phone-style">
            <span>Телефон:</span><br><span><?php echo $telephone; ?></span>
          </div>
        </div>
        <!--md footer telephone end-->
        <div class="row hidden-md  sm-footer-middle-padding">
          <div class="col-sm-2 col-md-2 col-lg-2 col-xl-2 footer-email-icon-style">
            <img src="../../../catalog/view/theme/default/image/email.png">
          </div>
          <div class="col-sm-10 col-md-10 col-lg-10 col-xl-10 no-padding footer-email-style">
            <span class="footer-email-style footer-email-span-style">E-mail: </span>
            <span>
              <a class="email-linc-style" href="mailto:<?php echo $email; ?>"><?php echo $email; ?></a>
            </span>
          </div>
        </div>
        <!--md footer email begin-->
        <div class="hidden-sm row hidden-lg hidden-xl footer-email-div-style">
          <div class="col-md-2 md-footer-padding">
            <img src="../../../catalog/view/theme/default/image/email.png">
          </div>
          <div class="col-md-10 no-padding footer-email-style">
            <span class="footer-email-style footer-email-span-style">E-mail:</span><br><span>
              <a class="email-linc-style" href="mailto:<?php echo $email; ?>"><?php echo $email; ?></a>
            </span>
          </div>
        </div>
        <!--md footer email end-->
      </div>
      <div class="hidden-sm col-md-3 col-lg-3 col-xl-3 footer-div-border footer-div-address">
        <div class="col-sm-2 col-md-2 col-lg-2 col-xl-2 no-padding">
          <img src="../../../catalog/view/theme/default/image/address.png">
        </div>
        <div class="col-sm-10 col-md-10 col-lg-10 col-xl-10 footer-address-style">
          <span>Адрес: </span><span><?php echo $address;?></span>
        </div>
      </div>
      <div class="hidden-sm col-md-3 col-lg-3 col-xl-3 footer-div-graf">
        <div class="col-sm-2 col-md-2 col-lg-2 col-xl-2 no-padding">
          <img src="../../../catalog/view/theme/default/image/grafic.png">
        </div>
        <div class="col-sm-10 col-md-10 col-lg-10 col-xl-10 footer-address-style">
          <span><?php echo $open;?></span>
        </div>
      </div>
      <!--footer sm address and graphic begin-->
      <div class="col-sm-4 hidden-md hidden-lg hidden-xl footer-div-border footer-div-address footer-adres-div-style">
        <div class="col-sm-2 col-md-2 col-lg-2 col-xl-2 footer-right-icon-padding">
          <img src="../../../catalog/view/theme/default/image/address.png">
        </div>
        <div class="col-sm-10 col-md-10 col-lg-10 col-xl-10 footer-grafic-style">
          <span>Адрес: </span><span><?php echo $address;?></span>
        </div>
        <div class="col-sm-2 col-md-2 col-lg-2 col-xl-2 footer-right-icon-padding">
          <img src="../../../catalog/view/theme/default/image/grafic.png">
        </div>
        <div class="col-sm-10 col-md-10 col-lg-10 col-xl-10 footer-grafic-style">
          <span>Адрес: </span><span><?php echo $open;?></span>
        </div>
      </div>
      <!--footer sm address and graphic end-->
    </div>
  </div>
  <div class="hidden-xs footer-img-bottom">
    <div class="container footer-li-div-style">
      <div class="col-sm-8 col-md-8 col-lg-8 col-xl-8">
        <ul class="nav navbar-nav menu-style footer-ul-menu-style">
          <li class="li-text-style li-padding-0"><a class="footer-menu-style footer-a-style" href="">Категории</a></li>
          <li class="li-text-style li-padding-0">
            <?php if($currentRout == ''){
                    $about_rout = '';
                 }else{
                    $about_rout = 'href="/"';
                 } ?>
              <a class="footer-menu-style footer-a-style" <?=$about_rout?> >Главная</a>
          </li>
          <li class="li-text-style li-padding-0">
            <?php if($currentInformation == 'information/information_10'){
                    $about_rout = '';
                 }else{
                    $about_rout = 'href="/about_info"';
                 } ?>
            <a class="footer-menu-style footer-a-style" <?=$about_rout?> >О компании</a>
          </li>
          <li class="li-text-style li-padding-0">
              <?php if($currentRout == 'newsblog/category'){
                    $about_rout = '';
                 }else{
                    $about_rout = 'href="/newsblog&newsblog_category_id=1"';
                 } ?>
              <a class="footer-menu-style footer-a-style" <?=$about_rout;?> >Новости</a>
          </li>
          <li class="li-text-style li-padding-0">
            <?php if($currentRout == 'information/gallery'){
                    $about_rout = '';
                 }else{
                    $about_rout = 'href="/gallery"';
                 } ?>
            <a class="footer-menu-style footer-a-style" <?=$about_rout?> >Наши работы</a>
          </li>
          <li class="li-text-style li-padding-0">
            <?php if($currentInformation == 'information/information_11'){
                    $about_rout = '';
                 }else{
                    $about_rout = 'href="/deliveri_info"';
                 } ?>
            <a class="footer-menu-style footer-a-style" <?=$about_rout;?> >Доставка и оплата</a>
          </li>
          <li class="li-text-style li-padding-0">
            <?php if($currentRout == 'information/contact'){
                    $about_rout = '';
                 }else{
                    $about_rout = 'href="/contact"';
                 } ?>
            <a class="footer-menu-style footer-a-style" <?=$about_rout;?> >Контакты</a>
          </li>
        </ul>
      </div>
      <div class="col-sm-4 col-md-4 col-lg-4 col-xl-4 footer-reklama-div-style">
        <div class="col-sm-4 col-md-4 col-lg-4 col-xl-4 footer-text-reklama">
          <span class="footer-reklama-span-style">Сделано в:</span>
        </div>
        <div class="col-sm-6 col-md-6 col-lg-6 col-xl-6 footer-reklama-logo">
          <img src="../../../catalog/view/theme/default/image/logo-reklama.png">
        </div>
      </div>
      <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 footer-bottom-last-text-style" >
        <span>&#169; 2016. Все права защищены.</span>
      </div>
    </div>
  </div>
  <!--Mobile footer begin-->
  <div class="hidden-md hidden-lg hidden-xl hidden-sm footer-mobile-img">
    <div class="footer-mobile-padding">
      <div class=" footer-padding mobile-footer-text-style">
        <spaan class="footer-mobile-text-style footer-tex-color-2">ЗАКАЖИТЕ ОБРАТНЫЙ ЗВОНОК</spaan><br>
        <spaan class="footer-mobile-text-style footer-tex-color-2"><span class="footer-tex-color-3">ВАМ</span> ПЕРЕЗВОНЯТ</spaan>
      </div>
      <div class=" footer-mobile-form-div">
        <form action="" id="contactForm-1" method="post">
          <ul class="mobile-footer-ul-error" >
            <code id="errorMasege_1" class="error error-style mobile-footer-code-error">Некорректно заполнена информация</code>
          </ul>
          <div class="input-footer-padding">
            <span class="form-mobile-text-style">Ваше имя:</span>
            <input type="text" id="userName_1" name="userName_1" class="form-control input-style contactItem">
          </div>
          <div class="input-footer-padding">
            <span class="form-mobile-text-style">Ваш телефон:</span>
            <input type="text" id="userPhone_1" name="userPhone_1" class="form-control input-style contactItem">
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
</footer>

<!-- Yandex.Metrika counter -->
<script type="text/javascript">
    (function (d, w, c) {
        (w[c] = w[c] || []).push(function() {
            try {
                w.yaCounter41416039 = new Ya.Metrika({
                    id:41416039,
                    clickmap:true,
                    trackLinks:true,
                    accurateTrackBounce:true,
                    webvisor:true
                });
            } catch(e) { }
        });

        var n = d.getElementsByTagName("script")[0],
            s = d.createElement("script"),
            f = function () { n.parentNode.insertBefore(s, n); };
        s.type = "text/javascript";
        s.async = true;
        s.src = "https://mc.yandex.ru/metrika/watch.js";

        if (w.opera == "[object Opera]") {
            d.addEventListener("DOMContentLoaded", f, false);
        } else { f(); }
    })(document, window, "yandex_metrika_callbacks");
</script>
<noscript><div><img src="https://mc.yandex.ru/watch/41416039" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- /Yandex.Metrika counter -->

</body></html>