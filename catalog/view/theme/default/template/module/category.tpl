<div class="listcat">
    <!--<div class="menuname text-center"><span><?= $heading_title; ?></span></div>-->
    <div class="menuname text-center category-name-padding" style="padding-top: 30px !important;padding-bottom: 20px !important;">
        <span class="category-name-style" style="font-size:18px !important;line-height: 0">КАТАЛОГ ПРОДУКЦИИ</span>
    </div>
    <div class="imgborder text-center"><img src="/image/catalog/linecat.png" class="img-responsive category-img-style"></div>
    <ul class="customdrop ul-category-style">
                <?php foreach ($categories as $category) { ?>
                    <?php
                        $classes = '';
                        $display = 'display:none;';
                        $icon = ' CategoryName ';
                        if ($category['category_id'] == $category_id) {
                            $classes .= 'active';
                            $display = '';
                            $icon = ' CategoryNameActive ';
                        }
                    ?>

                    <li class='<?= $classes; ?> li-category-style' style="line-height: 19px;margin-bottom:5px;color: #8a8a8a !important;margin-bottom: 8px;">
                        <a href="<?php echo $category['href'];?>"   class='clickParentMenu '  title="<?php echo $category['name'];?>" style="display:block;">
                            <div data-href="<?= $category['href']; ?>" style="float:left;font-family: 'Helvetica';font-weight: 600;float: left;color: #666666;font-size: 14px;" class="<?= $icon; ?> a-category-style">
                                <?php echo $category['name']; ?>
                            </div>
                        </a>
                        <div style="clear:both;"></div>
                        <?php if($category['children']) { ?>
                            <ul class="dropDownSubMenu" style='<?= $display; ?>'>
                                <?php
                                    foreach ($category['children'] as $child)
                                    {
                                ?>
                                <li class="li-category-child-style" style="margin-top:7px;">
                                    <?php if ($child['category_id'] == $child_id) { ?>
                                        <a href="<?php echo $child['href'];?>" tabindex="-1" title="<?php echo $child['name'];?>" class="active "><?php echo $child['name'];?></a>
                                    <?php } else { ?>
                                        <a href="<?php echo $child['href'];?>" class="a-category-child-style" tabindex="-1" title="<?php echo $child['name'];?>"><?php echo $child['name'];?></a>
                                    <?php } ?>
                                </li>
                                <?php } ?>
                             </ul>
                        <?php }  ?>
                        <div style="clear:both;"></div>
                    </li>
                <?php } ?>
     </ul>
</div>