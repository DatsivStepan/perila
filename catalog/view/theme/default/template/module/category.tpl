<div class="listcat">
<div class="menuname text-center"><span><?= $heading_title; ?></span></div>
<div class="imgborder text-center"><img src="/image/catalog/linecat.png" class="img-responsive"></div>
<ul class="customdrop">
            <?php foreach ($categories as $category) { ?>
                <?php
                    $classes = '';
                    $display = 'display:none;';
                    $icon = ' fa-angle-down ';
                    if ($category['category_id'] == $category_id) {
                        $classes .= 'active';
                        $display = '';
                        $icon = ' fa-angle-up ';
                    }
                ?>
    
                <li class='<?= $classes; ?>'>
                    <a   class='clickParentMenu'  title="<?php echo $category['name'];?>">
                       <i class='fa <?= $icon; ?> pull-left' style='cursor:pointer;font-size:18px;'></i>
                       <a href="<?php echo $category['href'];?>"  class='clickParentMenu'  title="<?php echo $category['name'];?>">
                        <span data-href="<?= $category['href']; ?>" style="cursor:pointer;" class="clickCategoryName">
                            <?php echo $category['name']; ?>
                        </span> </a>
                        
                    </a>
                    <?php if($category['children']) { ?>
                        <ul class="dropDownSubMenu" style='<?= $display; ?>'>
                                <?php
                                    foreach ($category['children'] as $child)
                                    {
                                ?>
                                <li>
                                     <?php if ($child['category_id'] == $child_id) { ?>
  <a href="<?php echo $child['href'];?>" tabindex="-1" title="<?php echo $child['name'];?>" class="active"><?php echo $child['name'];?></a>
  <?php } else { ?>
  <a href="<?php echo $child['href'];?>" tabindex="-1" title="<?php echo $child['name'];?>"><?php echo $child['name'];?></a>
  <?php } ?>
                                    
                                        </li>
                                <?php } ?>
                        </ul>
                    <?php }  ?>
                </li>
           
            <?php } ?>
        </ul>
</div>


        
   




