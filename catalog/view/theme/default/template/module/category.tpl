<div class="listcat">
<!--<div class="menuname text-center"><span><?= $heading_title; ?></span></div>-->
<div class="menuname text-center category-name-padding"><span class="category-name-style">КАТАЛОГ ПРОДУКЦИИ</span></div>
<div class="imgborder text-center"><img src="/image/catalog/linecat.png" class="img-responsive category-img-style"></div>
<ul class="customdrop ul-category-style">
            <?php foreach ($categories as $category) { ?>
                <?php
                    $classes = '';
                    $display = 'display:none;';
                    $icon = ' category-icon-style_1 ';
                    if ($category['category_id'] == $category_id) {
                        $classes .= 'active';
                        $display = '';
                        $icon = ' category-icon-style ';
                    }
                ?>
    
                <li class='<?= $classes; ?> li-category-style'>
                    <a   class='clickParentMenu '  title="<?php echo $category['name'];?>">
                     <!--  <i class='fa <?= $icon; ?>' style='cursor:pointer;font-size:18px;'></i>-->
                        <div class="<?= $icon; ?>"></div>
                     <!--  <a href="<?php echo $category['href'];?>"  class='clickParentMenu a-category-style'  title="<?php echo $category['name'];?>">-->
                        <span data-href="<?= $category['href']; ?>" style="cursor:pointer;" class="clickCategoryName a-category-style">
                            <?php echo $category['name']; ?>
                        </span>
                      <!--  </a> -->
                    </a>
                    <?php if($category['children']) { ?>
                        <ul class="dropDownSubMenu" style='<?= $display; ?>'>
                                <?php
                                    foreach ($category['children'] as $child)
                                    {
                                ?>
                                <li class="li-category-child-style">
                                     <?php if ($child['category_id'] == $child_id) { ?>
  <a href="<?php echo $child['href'];?>" tabindex="-1" title="<?php echo $child['name'];?>" class="active "><?php echo $child['name'];?></a>
  <?php } else { ?>
  <a href="<?php echo $child['href'];?>" class="a-category-child-style" tabindex="-1" title="<?php echo $child['name'];?>"><?php echo $child['name'];?></a>
  <?php } ?>
                                    
                                        </li>
                                <?php } ?>
                        
                    <?php }  ?>
                                   
                                   
                                   
                                </ul>

             <!-- left menu end -->

            <?php } ?>
             </ul>
</div>

         

                
                
                
                  
                       
                        
           
          
                
    
                       
                  
                
         



        
   




