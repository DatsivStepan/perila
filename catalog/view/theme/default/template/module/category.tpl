<div class="listcat">
    <!--<div class="menuname text-center"><span><?= $heading_title; ?></span></div>-->
    <div class="menuname text-center category-name-padding category-name-div-padding">
        <span class="category-name-style">КАТАЛОГ ПРОДУКЦИИ</span>
    </div>
    <div class="imgborder text-center"><img src="/image/catalog/linecat.png" class="img-responsive category-img-style"></div>
    <ul class="customdrop ul-category-style">
                <?php foreach ($categories as $category) { ?>
                    <?php
                        $category_href = 'href="'. $category['href']. '"'; 
                        $classes = '';
                        $display = 'display:none;';
                        $icon = ' CategoryName ';
                        if ($category['category_id'] == $category_id) {
                            $classes .= 'active';
                            $display = '';
                            $icon = ' CategoryNameActive ';
                            $category_href = '';
                        }
                    ?>

                    <li class='<?= $classes; ?> li-category-style'>
                        <a <?php echo $category_href;?> class='clickParentMenu category-a-display-block'  title="<?php echo $category['name'];?>">
                            <div data-href="<?= $category_href; ?>" class="<?= $icon; ?> a-category-style a-category-style-1">
                                <?php echo $category['name']; ?>
                            </div>
                        </a>
                        <div class="category-clear-both"></div>
                        <?php if($category['children']) { ?>
                            <ul class="dropDownSubMenu" style='<?= $display; ?>'>
                                <?php
                                    foreach ($category['children'] as $child)
                                    {
                                ?>
                                <li class="li-category-child-style">
                                    <?php if ($child['category_id'] == $child_id) { ?>
                                        <a  tabindex="-1" title="<?php echo $child['name'];?>" class="active "><?php echo $child['name'];?></a>
                                    <?php } else { ?>
                                        <a href="<?php echo $child['href'];?>" class="a-category-child-style" tabindex="-1" title="<?php echo $child['name'];?>"><?php echo $child['name'];?></a>
                                    <?php } ?>
                                </li>
                                <?php } ?>
                             </ul>
                        <?php }  ?>
                        <div class="category-clear-both"></div>
                    </li>
                <?php } ?>
     </ul>
</div>