<?php
/*
* Template Name: CaseStudies
 *Template Post Type : page
*/
get_header();
?>

<?php
$all_blog = new WP_Query(array(
	'order'=>'DESC',
	'post_status '=>'publish',
	'post_type' => 'case-study'
));
$total_posts = $all_blog->found_posts;
?>
<main class="case-studies-page padding-top-lg-main">
    <section class="case-studies-header">
        <div class="container-lg">
            <h1 class="tag ff-secondary">Case Studies</h1>
            <p class="max-w-710 h1">Neugierig auf unsere Projekte? Hier ein paar Beispiele:</p>
        </div>
    </section>
    <section class="case-studies-grid">
        <div class="container-lg case-study-filters">
            <div class="flex space-between align-center">
                <ul class="flex align-center gap-20">
                    <li>
                        <button href="" class="button active">Alle (<?php echo $total_posts; ?>)</button>
                    </li>
                    <li><a href="" class="button">UX Beratung (2)</a></li>
                    <li><a href="" class="button">UX / UI Design (1)</a></li>
                    <li><a href="" class="button">Webentwicklung (4)</a></li>
                </ul>
                <div class="flex toggle-grid-buttons gap-32">
                    <button class="button-two-col-grid active flex align-center flow">
                        <div class="rect aspect-square">

                        </div>
                        <div class="rect aspect-square">

                        </div>
                    </button>
                    <button class="button-three-col-grid flex align-center flow">
                        <div class="rect aspect-square">

                        </div>
                        <div class="rect aspect-square">

                        </div>
                        <div class="rect aspect-square">

                        </div>


                    </button>
                </div>
            </div>

        </div>
        <div class="container-lg">
            <div class="grid case-study-grid two-column-grid">
                <?php

                if($all_blog->have_posts())
                {

                    $i =1;
                    while($all_blog->have_posts())
                    {
                        $all_blog->the_post();
                        get_template_part( 'template-parts/content-block-page', get_post_type() );
                        $i++;
                    }
                }
                wp_reset_postdata();
                ?>

            </div>
        </div>
    </section>
    <section class="testimonials-section">
        <div class="container-lg">
            <div class="testimonial-container">
                <div class="mb-40">
                    <div class="tag">Testimonials</div>
                    <h2 class="h1">Our Customers Rock!</h2>
                </div>
                <div class="swiper-testimonials relative">
                    <div class=" swiper-wrapper relative">


                        <?php
                        $all_blog = new WP_Query(array(
                            'order'=>'DESC',
                            'posts_per_page'=>5,
                            'post_status '=>'publish',
                            'post_type' => 'testimonials'

                        ));
                        if($all_blog->have_posts())
                        {

                            $i =1;
                            while($all_blog->have_posts())
                            {
                                $all_blog->the_post();
                                get_template_part( 'template-parts/content-block', get_post_type() );
                                $i++;
                            }
                        }
                        wp_reset_postdata();
                        ?>



                    </div>
                    <div class="testimonials-controls flex align-center">
                        <button class="prev-testimonial">
                            <svg xmlns="http://www.w3.org/2000/svg" width="10" height="9" viewBox="0 0 10 9"
                                 fill="none">
                                <path
                                    d="M5.08367 6.11389e-08L5.32086e-08 4.49999C1.27511 5.62553 3.80853 7.87446 5.08365 9L5.72527 8.44134C4.57821 7.4291 3.06102 6.08029 1.72244 4.89723L10 4.89725L10 4.10275L1.72243 4.10275L5.72525 0.564839L5.08367 6.11389e-08Z"
                                    fill="black" />
                            </svg>
                        </button>
                        <span>
                                    <span class="actual-index-swiper">1</span>/<span>3</span>
                                </span>
                        <button class="next-testimonial">
                            <svg xmlns="http://www.w3.org/2000/svg" width="10" height="9" viewBox="0 0 10 9"
                                 fill="none">
                                <path
                                    d="M4.91633 9L10 4.50001C8.72489 3.37447 6.19147 1.12554 4.91635 -2.24107e-07L4.27473 0.558658C5.42179 1.5709 6.93898 2.91971 8.27756 4.10277L-1.77821e-07 4.10275L-2.12257e-07 4.89725L8.27757 4.89725L4.27475 8.43516L4.91633 9Z"
                                    fill="black" />
                            </svg>
                        </button>
                    </div>
                </div>
            </div>


        </div>
    </section>
    <section class="logo-section">
        <div class="container-lg overflow-x-hidden">
            <div class="marquee-container">
                <ul class="grid">
                    <?php
                    $all_blog = new WP_Query(array(
                        'order'=>'DESC',
                        'post_status '=>'publish',
                        'post_type' => 'customer-logo'

                    ));
                    if($all_blog->have_posts())
                    {

                        $i =1;
                        while($all_blog->have_posts())
                        {
                            $all_blog->the_post();
                            get_template_part( 'template-parts/content-block', get_post_type() );
                            $i++;
                        }
                    }
                    wp_reset_postdata();
                    ?>
                </ul>
                <ul class="grid">
                    <?php
                    $all_blog = new WP_Query(array(
                        'order'=>'DESC',
                        'post_status '=>'publish',
                        'post_type' => 'customer-logo'

                    ));
                    if($all_blog->have_posts())
                    {

                        $i =1;
                        while($all_blog->have_posts())
                        {
                            $all_blog->the_post();
                            get_template_part( 'template-parts/content-block', get_post_type() );
                            $i++;
                        }
                    }
                    wp_reset_postdata();
                    ?>
                </ul>
            </div>

        </div>

    </section>
    <div id="circle-cursor" class="place-center">
        <span class="card-hover uppercase">View Case</span>
        <span class="email-marquee uppercase">Sagen Sie uns Hallo</span>
    </div>
</main>
<?php
get_footer();
?>
