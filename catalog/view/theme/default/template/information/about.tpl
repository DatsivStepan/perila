<?php echo $header; ?>
<div class="container">
    <div class="text_body">
        <div class="rows">
            <div class="hidden-sm hidden-xs">
                <?php echo $column_left; ?>
                <?php if ($column_left && $column_right) { ?>
                <?php $class = 'col-sm-6'; ?>
                <?php } elseif ($column_left || $column_right) { ?>
                <?php $class = 'col-sm-9'; ?>
                <?php } else { ?>
                <?php $class = 'col-sm-12'; ?>
                <?php } ?>
            </div>
            <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
                <div class="col-lg-12 col-md-12 hidden-sm hidden-xs about-content-div-margin">
                    <a>
                        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                        <a class="about-a-style-new" href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
                        <?php } ?>
                        <a class="about-a-style-new-1">/ О компании</a>
                    </a>
                </div>
                <div class="row about-title-sty-new" style="">
                    <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1"></div>
                    <div class="col-lg-3 col-md-3 col-sm-4 col-xs-8 no-padding"style="">
                        <h1>О КОМПАНИИ</h1>
                    </div>
                    <div class="hidden-lg col-md-1 col-sm-1 col-xs-1"></div>
                    <div class="col-lg-7 col-md-7 col-sm-6 col-xs-2 no-padding" style="">
                        <div class="col-lg-8 col-md-8 col-sm-8 hidden-xs about-div-border-1" style=""></div>
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 about-div-border-2" style=""></div>
                    </div>
                </div>
                <div class="col-lg-12 col-md-12 no-margin" style="">
                    <div class="сol-xs-12" >
                        <p class="text"><span class="bolte">Наша производственная компания Dekorperila</span> специализируется на изготовлении лестниц и лестничных ограждений,
                            перил, навесов и козырьков а также других изделий из нержавеющей стали по индивидуальным проектам, осуществляя
                            монтаж по всей территории Москвы и восточного Подмосковья.<br><br>
                        </p>
                        <p class="text_light">
                            Мы уделяем постоянное внимание к нашим заказчикам, четко и профессионально выполняем
                            взятые обязательства.<br><br>
                        </p>
                        <p class="hidden-xs text_opus_about">
                            В работе с клиентами мы используем комплексный подход, который помогает экономить время и силы наших заказчиков, а
                            также значительно сократить срок выполнения имеющихся задач с учетом всех предъявленных к изделиям требований (как
                            во время разработки дизайн-проекта, так и во время изготовления и монтажа на объекте).<br><br>
                        <p class="hidden-xs text_opus_about">
                            Кроме того, мы проектируем и самостоятельно разрабатываем конструкторскую и технологическую документацию.
                            Конструкторская документация является наиважнейшей частью производства изделий из нержавеющей стали. Наши
                            опытные сотрудники самостоятельно подготовят всю необходимую конструкторскую документацию Ваше будущее изделие,
                            на основе прототипа или технического задания. В комплект конструкторских документов включаются сборные чертежи,
                            деталировка и спецификация.<br><br>
                        </p>
                        <p class="text">
                            В работе с клиентами мы используем комплексный подход, который помогает экономить время и силы наших заказчиков, а
                            также значительно сократить срок выполнения имеющихся задач с учетом всех предъявленных к изделиям требований (как
                            во время разработки дизайн-проекта, так и во время изготовления и монтажа на объекте).<br><br>
                        </p>
                    </div>
                </div>
            </div>
            <div class="row about-section-div-padding" style="">
                <div class="col-lg-1 col-md-1 col-sm-1"></div>
                <div class="col-lg-3 col-md-3 col-sm-4 col-xs-9">
                    <h2 class="сol">НАШИ ОТДЕЛЫ</h2>
                </div>
                <div class="col-lg-8 col-md-8 col-sm-7 col-xs-3 no-padding" style="">
                    <div class="col-lg-5 col-md-5 col-sm-5 hidden-xs about-section-div-border-1"></div>
                    <div class="col-lg-7 col-md-7 col-sm-7 col-xs-12 about-section-div-border-2"></div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <img src="../../../catalog/view/theme/default/image/1.png"style="width: 100%;" >
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 border">
                    <p class="col-sm-12 col-xs-12 zal" >ДЕМОКСТРАЦИОННЫЙ ЗАЛ</p>
                    <p class="hidden-xs hidden-sm hidden-md text-zal about-text-zal-style">В работе с клиентами мы используем комплексный подход, который помогает экон
                        время и силы наших заказчиков, а также значительно сократить срок выполнения
                        имеющихся задач с учетом всех предъявленных а также значительно сократить
                        а также значительно сократить срок.
                    </p>
                    <p class="hidden-lg col-md-12 col-sm-12 col-xs-12  text-zal about-text-zal-style-1">
                        В работе с клиентами мы используем комплексный
                        подход, который помогает время и силы
                        наших заказчиков.
                    </p>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <div  class="col-lg-12 col-md-12 col-sm-12 col-xs-12 no-padding">
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 gol" style="float: left;width: 50%;margin: 0% 0% 0% 2.3%;height: 100%;padding: 5% 0% 0% 1%;">
                        <div class="col-lg-12 col-md-12 hidden-sm hidden-xs">
                            <h3 class="text-h3">ОТДЕЛ ПРОДАЖ</h3>
                        </div>
                        <div class="hidden-lg hidden-md col-sm-12 col-xs-12 text_h3">
                            <p style="margin: -7% 0 0 0;">ОТДЕЛ <p>ПРОДАЖ</p></p>
                        </div>
                        <p class="hidden-sm hidden-xs text-od">
                            В работе с клиентами используем
                            комплексный подход, который на
                            помогает экономить время и силы
                            время и силы и силы.
                        </p>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6" style="padding: 0;float: right;">
                        <img src="../../../catalog/view/theme/default/image/3.png"style="width: 100%;" >
                    </div>
                </div>
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="padding: 0;">
                    <div  class="col-lg-6 col-md-6 col-sm-6 col-xs-6 ged" style="float: right;width: 50%;height: 100%;margin: 0% 0% 0% 47.87%;padding: 5% 0% 0% 6%;" >
                        <div class="col-lg-12 col-md-12 hidden-sm hidden-xs">
                            <h3 class="text-h3">ОТДЕЛ ПРОЕКТИРОВАНИЯ</h3>
                        </div>
                        <div class="hidden-lg hidden-md col-sm-12 col-xs-12 text_h3">
                            <p style="margin: -7% 0 0 0;">ПРОЕКТНИЙ <p>ОТДЕЛ</p></p>
                        </div>
                        <p class="hidden-sm hidden-xs text-od">
                            В работе с клиентами используем
                            комплексный подход, который на
                            помогает экономить время и силы
                            время и силы и силы.
                        </p>
                    </div>
                    <div  class="col-lg-6 col-md-6 col-sm-6 col-xs-6" style="padding: 0;float: left;">
                        <img src="../../../catalog/view/theme/default/image/4.png"style="width: 100%;" >
                    </div>
                </div>
                <div  class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="padding: 0;">
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 gol" style="float: left;width: 50%;margin: 0% 0% 0% 2.3%;height: 100%;padding: 5% 0% 0% 0%;">
                        <div class="col-lg-12 col-md-12 hidden-sm hidden-xs">
                            <h3 class="text-h3">ОТДЕЛ ПРОИЗВОДСТВА</h3>
                        </div>
                        <div class="hidden-lg hidden-md col-sm-12 col-xs-12 text_h3">
                            <p style="margin: -7% 0 0 0;">ОТДЕЛ <p style="margin: 0px 0px 0px -25px;">ПРОИЗВОДСТВА</p></p>
                        </div>
                        <p class="hidden-sm hidden-xs text-od">
                            В работе с клиентами используем
                            комплексный подход, который на
                            помогает экономить время и силы
                            время и силы и силы.
                        </p>
                    </div>
                    <div  class="col-lg-6 col-md-6 col-sm-6 col-xs-6" style="padding: 0;float: right;">
                        <img src="../../../catalog/view/theme/default/image/5.png"style="width: 100%;" >
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-12 col-md-12 hidden-sm hidden-xs text-end">
            <div class="row" style="padding-bottom: 3%;">
                <div class="col-lg-1 col-md-1 col-sm-1"></div>
                <div class="col-lg-5 col-md-6 col-sm-7 col-xs-8">
                    <h1 class="text-fut">
                        ЕЩЕ ИНФОРМАЦИЯ О КОМПАНИИ</br></br>
                    </h1>
                </div>
                <div class="col-lg-6 col-md-5 col-sm-4 col-xs-4" style="padding: 0;">
                    <div class="col-lg-3 col-md-3 col-sm-4 hidden-xs" style="min-height: 129px;border-bottom: 1px solid #999999;"></div>
                    <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12" style="min-height: 129px;border-bottom: 1px solid #f8c828;"></div>
                </div>
            </div>
            <p>
                Специализируется на изготовлении лестниц и лестничных ограждений, перил, навесов и козырьков а также других изделий из нержавеющей стали по индивидуальным про
                осуществляя монтаж по всей территории Москвы и восточного Подмосковья.</br></br>
            </p>
            <p>
                В работе с клиентами мы используем комплексный подход, который помогает экономить время и силы наших заказчиков, а также значительно сократить срок выполнения
                имеющихся задач с учетом всех предъявленных к изделиям требований (как во время разработки дизайн-проекта, так и во время изготовления и монтажа на объекте).</br></br>
            </p>
            <p style="margin: 0px 0 121px 0px;">
                Кроме того, мы проектируем и самостоятельно разрабатываем конструкторскую и технологическую документацию. Конструкторская документация является наиважнейшей
                частью производства изделий из нержавеющей стали. Наши опытные сотрудники самостоятельно подготовят всю необходимую конструкторскую документацию Ваше
                будущее изделие, на основе прототипа или технического задания. В комплект конструкторских документов включаются сборные чертежи, деталировка и спецификация.
            </p>

        </div>
    </div>
</div>
<!--<div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>-->


<?php echo $footer; ?>