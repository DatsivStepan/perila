<div class="listcat">
<div class="menuname text-center"><span><?= $heading_title; ?></span></div>
<div class="imgborder text-center"><img src="/image/catalog/linecat.png" class="img-responsive"></div>
  <ul class="menu-content collapse in" id="menu-content">
                         
             <?php foreach ($categories as $category) { ?>
                <?php
                    $classes = '';
                    $classess = 'collapsed';
                   
                    
                    if ($category['category_id'] == $category_id) {
                        $classes = 'in'; 
                        $classess = ' ';
                       
                       
                    }
                ?>
            
                  
                          
                                
                
                                <li class="<?php echo $classess;?>" data-target="#<?php echo $category['category_id'];?>" data-toggle="collapse">
                                  <span class="arrow"></span> <strong><?php echo $category['name'];?></strong> 
                                </li>
                                
                                <ul id="<?php echo $category['category_id'];?>" class="sub-menu collapse fade <?php echo $classes;?>">
                                        <?php if($category['children']) { ?>
                       
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
                        
                    <?php }  ?>
                                   
                                   
                                   
                                </ul>
                                
                                
                    
                                  
                           
        
             <!-- left menu end -->
            
            
        
           
            <?php } ?>
             </ul>
</div>

         

                
                
                
                  
                       
                        
           
          
                
    
                       
                  
                
         



        
   




