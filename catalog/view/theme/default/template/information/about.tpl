<?php echo $header; ?>
<div class="container">
    <div class="rows">
        <div class="col-lg-2 col-md-3 col-sm-3 hidden-xs" ></div>
        <div class="col-lg-10 col-md-9 col-sm-9 col-xs-12" >
            <a class="hidden-xs" >
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                <a style="color: #3e9fd6" href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
                <?php } ?>
                <a style="color: #8a8a8a">/ О компании</a>
            </a>
            <div class="col-xs-12">
                <h1>О КОМПАНИИ</h1>
            </div>
            <div class="сol-xs-12">
                <p class="text"><span class="bolt">Наша производственная компания Dekorperila</span> специализируется на изготовлении лестниц и лестничных ограждений,
                        перил, навесов и козырьков а также других изделий из нержавеющей стали по индивидуальным проектам, осуществляя
                        монтаж по всей территории Москвы и восточного Подмосковья.<br><br>
                </p>
                <p class="light">
                    Мы уделяем постоянное внимание к нашим заказчикам, четко и профессионально выполняем
                    взятые обязательства.<br><br>
                </p>
                <p class="hidden-xs">
                    В работе с клиентами мы используем комплексный подход, который помогает экономить время и силы наших заказчиков, а
                    также значительно сократить срок выполнения имеющихся задач с учетом всех предъявленных к изделиям требований (как
                    во время разработки дизайн-проекта, так и во время изготовления и монтажа на объекте).<br><br>
                <p class="hidden-xs">
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
    <div class="сol-xs-12">
        <h2>НАШИ ОТДЕЛЫ</h2>
    </div>
    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" style="padding: 0;">
        <img src="../../../catalog/view/theme/default/image/1.png"style="width: 100%;" >
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 border" style="background-image: url(/../catalog/view/theme/default/image/2.png);">
            <p class="col-xs-12 zal">Демонстрационный зал</p>
            <p class="hidden-xs text-zal">В работе с клиентами мы используем комплексный подход, который помогает экон
                время и силы наших заказчиков, а также значительно сократить срок выполнения
                имеющихся задач с учетом всех предъявленных а также значительно сократить
                а также значительно сократить срок.
            </p>
        </div>
    </div>
    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" style="padding: 0;">
        <div  class="col-lg-6 col-md-6 col-sm-6 col-xs-12" style="padding: 0;">
            <div>
                <h3>ОТДЕЛ ПРОДАЖ</h3>
                <p class="hidden-xs text-od">
                    В работе с клиентами используем
                    комплексный подход, который на
                    помогает экономить время и силы
                    время и силы и силы.
                </p>
            </div>
        </div>
        <div  class="col-lg-6 col-md-6 col-sm-6 col-xs-12" style="padding: 0;">
            <img src="../../../catalog/view/theme/default/image/3.png"style="width: 100%;" >
        </div>
        <div  class="col-lg-6 col-md-6 col-sm-6 col-xs-12" style="padding: 0;">
            <img src="../../../catalog/view/theme/default/image/4.png"style="width: 100%;" >
        </div>
        <div  class="col-lg-6 col-md-6 col-sm-6 col-xs-12" style="padding: 0;">
            <h3>ОТДЕЛ ПРОЕКТИРОВАНИЯ</h3>
            <p class="hidden-xs text-od">
                В работе с клиентами используем
                комплексный подход, который на
                помогает экономить время и силы
                время и силы и силы.
            </p>
        </div>
        <div  class="col-lg-6 col-md-6 col-sm-6 col-xs-12" style="padding: 0;">
            <h3>ОТДЕЛ ПРОИЗВОДСТВА</h3>
            <p class="hidden-xs text-od">
                В работе с клиентами используем
                комплексный подход, который на
                помогает экономить время и силы
                время и силы и силы.
            </p>
        </div>
        <div  class="col-lg-6 col-md-6 col-sm-6 col-xs-12" style="padding: 0;">
            <img src="../../../catalog/view/theme/default/image/5.png"style="width: 100%;" >
        </div>

    </div>
        <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
        <?php echo $column_right; ?></div>
<div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
</div>

<?php echo $footer; ?>