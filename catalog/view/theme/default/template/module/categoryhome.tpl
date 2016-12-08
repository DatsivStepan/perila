<div class="row prodctcathome hidden-xs">   
            <?php foreach ($categories as $category) { ?>
             <a href="<?php echo $category['href'];?>" tabindex="-1" title="<?php echo $category['name'];?>" >
    <div class="product col-sm-6 col-md-6 col-lg-4">
    <div class="cat-thumb cat-thumb-style">
		<div class="menunamecat text-center">
			<span class="menunamecat-span-style"><?= $category['name'];?></span>
		</div>
		<div class="productimg">
		<img src="<?= $category['thumb'];?>" alt="<?= $category['name'];?>" class="img-responsive">
		</div>
	</div>
                 </div>     </a>
            <?php } ?>
        
</div>