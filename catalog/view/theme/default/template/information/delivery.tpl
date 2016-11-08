<?php echo $header; ?>
<div class="container">
    <div class="text_dost">
    <div class="rows">
        <?php echo $column_left; ?>
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-9'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-12'; ?>
        <?php } ?>
        <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
            <div class="col-lg-12 col-md-12 hidden-sm hidden-xs" style="margin: 40px 0 0 0;font-style: italic;">
                <a>
                    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                    <a style="color: #3e9fd6;font-family: 'Helvetica';font-weight: 300;font-size: 17px;" href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
                    <?php } ?>
                    <a style="color: #8a8a8a;font-family: 'Helvetica';font-weight: 300;font-size: 17px;">/ Доставка и оплата</a>
                </a>
            </div>
            <div class="row" style="padding-bottom: 3%;">
                <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1"></div>
                <div class="col-lg-2 col-md-2 col-sm-3 col-xs-5"style="padding: 0;">
                    <h1 class="dost">ДОСТАВКА</h1>
                </div>
                <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1"></div>
                <div class="col-lg-7 col-md-8 col-sm-7 col-xs-4" style="padding: 0;">
                    <div class="col-lg-8 col-md-8 col-sm-8 hidden-xs" style="min-height: 38px;border-bottom: 1px solid #999999;"></div>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" style="min-height: 38px;border-bottom: 1px solid #f8c828;"></div>
                </div>

            </div>
            <div class="сol-xs-12">
                <p class="text_car">Комплектация, доставка и монтаж стандартного заказа осуществляется в течении двух недель (14 дней) со дня оплаты
                    аванса в размере 70% от общей стоимости заказа. Срок осуществления нестандартного заказа заказа с большим объемом
                    работ согласуется отдельно. Оформление платежа производится через Р/С банка ОАО "АЛЬФА-БАНК"  г. Москва.<br>
                </p>
                <p class="text_car">
                    Доставка комплектующих по Москве (в пределах МКАД + 10 км от МКАД) — 1 000 рублей. Доставка более чем на 10 км от
                    МКАД — 3 000 рублей + 15 рублей за километр от МКАД.<br>
                </p>
                <p class="text_car">
                    Доставка готовых изделий и/или труб по Москве (в пределах МКАД + 10 км от МКАД) — 3 000 рублей. Доставка более чем
                    на 10 км от МКАД — 3 000 рублей + 15 рублей за километр от МКАД.<br>
                </p>
            </div>
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12" style="padding: 0;">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <p class="hidden-sm hidden-xs text_car">
                            При заказе монтажа, доставка по Москве (в пределах
                            МКАД + 10 км от МКАД) — бесплатно. Доставка более
                            чем на 10 км от МКАД — 3 000 рублей + 15 рублей за
                            километр от МКАД. <br>
                        </p>
                        <p class="hidden-sm hidden-xs text_car">
                            Услуга замера бесплатна при условии, что объект
                            находится в пределах 10 километров от МКАД. Замер
                            расположенных на большем удалении — 3000 рублей.<br>
                        </p>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12" style="padding: 0;">
                    <div  class="col-lg-12 col-md-12 hidden-sm hidden-xs" style="padding: 0">
                        <img src="../../../catalog/view/theme/default/image/13.png"class="car_log" style="width: 100%;" >
                    </div>
                </div>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 no-padding">
                <p class="hidden-sm hidden-xs text_car">За более подробной информацией вы всегда можете обратиться к нашим менеджерам, которые ответят на интересующие
                    вас вопросы по телефону или электронной почте, указанным в разделе "Контакты". С нетерпением ждем ваших заказов!<br>
                </p>
            </div>
            <div class="row no-padding" style="padding-bottom: 3%;">
                <div class="col-lg-8 col-md-8 hidden-sm hidden-xs" style="padding: 0;margin: 0px 0px 0px 13px;">
                    <div class="col-lg-4 col-md-4 hidden-sm hidden-xs" style="min-height: 38px;border-bottom: 1px solid #f8c828;"></div>
                    <div class="col-lg-8 col-md-8 hidden-sm hidden-xs" style="min-height: 38px;border-bottom: 1px solid #999999;"></div>
                </div>
                <div class="col-lg-1 col-md-1 hidden-sm hidden-xs"></div>
                <div class="col-lg-2 col-md-2 hidden-sm hidden-xs"style="padding: 0;">
                    <h1 class="dost">ОПЛАТА</h1>
                </div>
            </div>
            <div class="row">
                <div class="hidden-lg hidden-md col-sm-1 col-xs-1"></div>
                <div class="hidden-lg hidden-md col-sm-3 col-xs-4"style="padding: 0;">
                    <h1 class="dost">ОПЛАТА</h1>
                </div>
                <div class="hidden-lg hidden-md col-sm-1 col-xs-1"></div>
                <div class="hidden-lg hidden-md col-sm-7 col-xs-5" style="padding: 0;">
                    <div class="hidden-lg hidden-md col-sm-8 hidden-xs" style="min-height: 38px;border-bottom: 1px solid #999999;"></div>
                    <div class="hidden-lg hidden-md col-sm-4 col-xs-12" style="min-height: 38px;border-bottom: 1px solid #f8c828;"></div>
                </div>

            </div>
            <div class="row">
                <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12" style="padding: 0;">
                    <div  class="col-lg-12 col-md-12 hidden-sm hidden-xs" style="padding: 0">
                        <img src="../../../catalog/view/theme/default/image/14.png"class="money" style="" >
                    </div>
                </div>
                <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12" style="padding: 0;">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 no-padding">
                            <p class="col-sm-12 col-xs-12 text_money">
                                <span class="text_mon">Внимание:</span> мы работаем по безналичному расчету
                            </p>
                            <p class="col-sm-12 col-xs-12 text_light_money">
                                Наши реквизиты:
                            </p>
                            <p class="col-sm-12 col-xs-12 text_light_money">
                                Компания "Decorperila"
                            </p>
                            <p class="col-sm-12 col-xs-12 text_kach">
                                <span class="text_light_money">Юридический адрес:</span> 115093, г. Москва, ул.Пушкина - Гагарина д. 8, офис 16
                            </p>
                            <p class="col-sm-12 col-xs-12 text_kach">
                                <span class="text_light_money">Фактический адрес:</span> 115093, г. Москва, ул.Пушкина - Гагарина д. 8, офис 16
                            </p>
                            <p class="col-sm-12 col-xs-12 text_kach">
                                <span class="text_light_money">ИНН/КПП:</span> 6755959776 / 675501054
                            </p>
                            <p class="col-sm-12 col-xs-12 text_kach">
                                <span class="text_light_money">ОГРН:</span> 4567746673178
                            </p>
                            <p class="col-sm-12 col-xs-12 text_kach">
                                <span class="text_light_money">КодОКПО:</span> 56189043
                            </p>
                            <p class="col-sm-12 col-xs-12 text_kach">
                                <span class="text_light_money">КодОКОГУ:</span>КодОКОГУ: 460138
                            </p>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
</div>
<?php echo $footer; ?>