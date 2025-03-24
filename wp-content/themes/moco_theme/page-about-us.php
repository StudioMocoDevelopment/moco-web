<?php
/*
* Template Name: AboutUs
 *Template Post Type : page
*/
get_header();
?>
<main class="about-page">
    <section class="hero-section relative">
        <div class="container-lg relative grid align-center hero-grid gap-60">
            <div class="context">
                <h1 class="uppercase mb-16 tag ff-secondary"><?=get_post_meta(get_the_ID(),'about_us_section_1_title',true)?></h1>
                <div class="usp">
                    <?=get_post_meta(get_the_ID(),'about_us_section_1_sub_title',true)?>
                </div>
                <p class="fs-200-force">
                    <?=get_post_meta(get_the_ID(),'about_us_section_1_description',true)?>
                </p>
            </div>
            <div class="img-wrapper image-hero"><img src="<?=wp_get_attachment_image_url( get_post_meta(get_the_ID(),'about_us_section_1_image',true), 'full')?>" alt=""
                                                     class="full-img">
            </div>

            <button class="down-button place-center absolute aspect-square scroll-to-contact">
                <div class="svg-wrapper">
                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="35" viewBox="0 0 25 35"
                         fill="none">
                        <path
                            d="M12.5005 1.01074L12.5005 33.9845M23.3037 24.4337L12.5005 33.9891L1.69721 24.4337"
                            stroke="#201C26" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                    </svg>
                </div>
            </button>
        </div>

    </section>
    <section class="two-columns-section">
        <div class="container-lg">
            <div class="split align-center image-text-row flex-col-mobile col-reverse-mobile">
                <div class="w-full">
                    <div class="img-wrapper about-us-img-aussengebaeude w-full img-animate-parallax">
                        <div class="img-wrapper-animation">
                            <img src="<?=wp_get_attachment_image_url( get_post_meta(get_the_ID(),'about_us_section_2_image',true), 'full')?>" alt="" class="full-img">
                        </div>
                    </div>
                </div>
                <div class="padding-inline-mobile">
                    <h2 class="mb-24"><?=get_post_meta(get_the_ID(),'about_us_section_2_title',true)?>
                    </h2>
                    <p class="font-18-16">   <?=get_post_meta(get_the_ID(),'about_us_section_2_description',true)?></p>
                </div>
            </div>
            <h2 class="h2-between-sections max-w-610 padding-inline-mobile">
                <?=get_post_meta(get_the_ID(),'about_us_section_3_title',true)?>
            </h2>
            <div class="split align-start image-text-row flex-col-mobile mb-60">
                <div class="w-full">
                    <div class="img-wrapper aspect-square w-full img-animate-parallax">
                        <div class="img-wrapper-animation">
                            <img src="<?=wp_get_attachment_image_url( get_post_meta(get_the_ID(),'about_us_section_3_image',true), 'full')?>" alt="" class="full-img">
                        </div>
                    </div>
                </div>
                <div class="padding-inline-mobile">
                    <div class="tag"> <?=get_post_meta(get_the_ID(),'about_us_section_3_right_title',true)?></div>
                    <h2 class="mb-24"><?=get_post_meta(get_the_ID(),'about_us_section_3_right_sub_title',true)?>
                    </h2>
                    <p class="font-18-16"><?=get_post_meta(get_the_ID(),'about_us_section_3_righr_description',true)?></p>
                    <!--
                <a href="case-studies.html" class="button">Alle Services anzeigen</a>
                -->
                </div>
            </div>
            <div class="split align-start image-text-row flex-col-mobile mb-60">
                <div class="w-full">
                    <div class="img-wrapper aspect-square w-full img-animate-parallax">
                        <div class="img-wrapper-animation">
                            <img src="<?=wp_get_attachment_image_url( get_post_meta(get_the_ID(),'about_ust_section_4_image',true), 'full')?>" alt="" class="full-img">
                        </div>
                    </div>
                </div>
                <div class="padding-inline-mobile">
                    <div class="tag"><?=get_post_meta(get_the_ID(),'about_ust_section_4_title',true)?></div>
                    <h2 class="mb-24"><?=get_post_meta(get_the_ID(),'about_ust_section_4_sub_title',true)?>
                    </h2>
                    <p class="font-18-16"><?=get_post_meta(get_the_ID(),'about_ust_section_4_description',true)?></p>
                    <!--
                <a href="case-studies.html" class="button">Alle Services anzeigen</a>
                -->
                </div>
            </div>
            <div class="split align-start image-text-row flex-col-mobile">
                <div class="w-full">
                    <div class="img-wrapper aspect-square w-full img-animate-parallax">
                        <div class="img-wrapper-animation">
                            <img src="<?=wp_get_attachment_image_url( get_post_meta(get_the_ID(),'about_us_section_5_image',true), 'full')?>" alt="" class="full-img">
                        </div>
                    </div>
                </div>
                <div class="padding-inline-mobile">
                    <div class="tag"><?=get_post_meta(get_the_ID(),'about_us_section_5_title',true)?></div>
                    <h2 class="mb-24"><?=get_post_meta(get_the_ID(),'about_us_section_5_sub_title',true)?>
                    </h2>
                    <p class="font-18-16"><?=get_post_meta(get_the_ID(),'about_us_section_5_description',true)?></p>
                    <!--
                <a href="case-studies.html" class="button">Alle Services anzeigen</a>
                -->
                </div>
            </div>
            <h2 class="h2-between-sections max-w-870 padding-inline-mobile">
                Melde dich bei uns und lass uns gemeinsam etwas richtig Großes auf die Beine stellen.
            </h2>
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
    <section class="contact-section" id="contact">
        <div class="container-lg overflow-x-hidden">
                    <span class="block hidden big-contact-header uppercase ff-primary relative">
                        Kontaktbereich
                    </span>
            <h2 class="h1"><?=get_post_meta(get_the_ID(),'about_us_section_6_title',true)?></h2>
            <div class="split">
                <div class="first-col">
                    <p>
                        <?=get_post_meta(get_the_ID(),'about_us_section_6_description',true)?>
                    </p>
                </div>
                <div class="form-container hidden">
                    <form action="">
                        <input type="text" name="" id="" placeholder="Name">
                        <input type="phone" name="" id="" placeholder="Phone">
                        <input type="email" name="" id="" placeholder="Email Address" class="mb-40">
                        <span class="bold mb-12 block">Budget</span>
                        <div class="flex wrap radio-buttons">
                            <input type="radio" name="radio" id="budget1" class="visually-hidden" />
                            <label for="budget1" class="button">&lt; 10.000€</label>
                            <input type="radio" name="radio" id="budget2" class="visually-hidden" />
                            <label for="budget2" class="button">10.000€ - 20.000€</label>
                            <input type="radio" name="radio" id="budget3" class="visually-hidden" />
                            <label for="budget3" class="button">&gt; 20.000€</label>
                        </div>
                        <textarea name="" id="" placeholder="Comment" rows="5"></textarea>
                        <div class="flex button-submit-area space-between wrap gap-40 align-center">
                            <button type="submit" class="button">Formular abschicken</button>
                            <p>
                                By submitting data, you agree to the <a href="">Data Processing Policy</a>
                            </p>
                        </div>

                    </form>

                </div>
                <?php
                $option = get_option('contact_settings_options');
                ?>
                <div class="flex">
                    <div class="ml-auto contact-details flex wrap">
                        <div class="fit-content">
                            <span class="label block ff-primary">Telefon</span>
                            <a class="link-with-animation" href="tel:<?=str_replace(' ','',$option['contact_phone_1'])?>"><?=$option['contact_phone_1']?></a>
                        </div>
                        <div class="fit-content">
                            <span class="label block ff-primary">Büro</span>
                            <div>
                                <?php
                                $adress = explode(' ',$option['contact_adress_1']);
                                ?>
                                <?=$adress[0]." ".$adress[1]?><br><?=$adress[2]." ".$adress[3]?>
                            </div>
                        </div>
                        <div class="fit-content mail-contact hidden">
                            <span class="label block ff-primary">Contact Us</span>
                            <a class="link-with-animation" href="mailto:hey@studiomoco.de"><?=$option['contact_mail_1']?></a>
                        </div>
                    </div>



                </div>
            </div>

        </div>
        <div class="container-lg marquee-email-container">
            <a href="mailto:hey@studiomoco.de" class="marquee-email">
                <div class="grid">
                    <span><?=get_post_meta(get_the_ID(),'home_page_section_8_motto',true)?></span>
                    <span><?=$option['contact_mail_1']?></span>
                </div>
                <div class="grid">
                    <span><?=get_post_meta(get_the_ID(),'home_page_section_8_motto',true)?></span>
                    <span><?=$option['contact_mail_1']?></span>
                </div>
                <div class="grid">
                    <span><?=get_post_meta(get_the_ID(),'home_page_section_8_motto',true)?></span>
                    <span><?=$option['contact_mail_1']?></span>
                </div>
            </a>
        </div>


    </section>
    <div id="circle-cursor" class="place-center">
        <span class="card-hover uppercase">View Case</span>
        <span class="email-marquee uppercase">Sag Hey!</span>
    </div>
</main>

<?php
get_footer();
?>

