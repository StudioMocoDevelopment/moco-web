<div class="swiper-slide">
    <div class="testimonial-content">
       <?=apply_filters('the_content', paragraf_add_class(the_content()))?>
    </div>
    <div class="testimonial-author-info">
        <div class="testimonial-author bold"><?=get_post_meta(get_the_ID(),'customer_name',true)?></div>
        <div class="testimonial-author-position"><?=the_title()?></div>
    </div>
</div>