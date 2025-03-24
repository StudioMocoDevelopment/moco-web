<?php
global $i;
?>
<div class="case-study-item">
    <div class="img-wrapper"><img src="<?=get_the_post_thumbnail_url(get_the_ID(),'full')?>" alt=""
                                  class="full-img">
    </div>
    <div class="flex"><span class="h6">0<?=$i;?></span>
        <div>
			<h3 class="h2"><a href="<?=the_permalink()?>" class="full-link"><?=the_title()?></a></h3>
            <p>      <?=get_post_meta(get_the_ID(),'services',true)?></p>
        </div>
    </div>
</div>
