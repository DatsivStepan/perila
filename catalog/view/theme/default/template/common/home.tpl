<?php echo $header; ?>
<div class="container">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
	<?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>">
	<?php echo $content_top; ?>
	<?php echo $categoryhome; ?>
	<?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
    
    <?php echo $homesection1; ?>
    <?php echo $homesection2; ?>
    <?php echo $homesection3; ?>
    <?php echo $homesection4; ?>
</div>

<?php echo $footer; ?>