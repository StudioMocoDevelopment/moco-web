<main class="case-study-page padding-top-lg-main">
    <section class="">
        <div class="container-lg">
            <h1 class="tag none ff-secondary"><?=the_title()?></h1>
            <p class="max-w-710 mb-60 h1"><?=get_post_meta(get_the_ID(),'motto',true)?></p>
        </div>
    </section>
    <section class="container-lg featured-image w-full">
        <div class="img-wrapper w-full"><img src="<?=wp_get_attachment_image_url( get_post_meta(get_the_ID(),'case_studio_image_1',true), 'full')?>" alt="" class="full-img"></div>
    </section>
    <section class="case-study-details">
        <div class="container-lg">
            <div class="flex space-between align-start gap-40 wrap details-row-container">
                <div class="flex details-row wrap">
                    <div>
                        <span class="uppercase block bold mb-12 fs-300">Services</span>
                        <span class="block"><?=get_post_meta(get_the_ID(),'services',true)?></span>
                    </div>
                    <div>
                        <span class="uppercase block bold mb-12 fs-300">Sector</span>
                        <span class="block"><?=get_post_meta(get_the_ID(),'sector',true)?></span>
                    </div>
                    <div>
                        <span class="uppercase block bold mb-12 fs-300">Year</span>
                        <span class="block"><?=get_post_meta(get_the_ID(),'year',true)?></span>
                    </div>
                    <div>
                        <span class="uppercase block bold mb-12 fs-300">Timeline</span>
                        <span class="block"><?=get_post_meta(get_the_ID(),'timeline',true)?></span>
                    </div>
                </div>

                <a href="<?=get_post_meta(get_the_ID(),'project_url',true)?>" target="_blank" rel="noreferrer noopener"
                   class="button">Webseite
                    besuchen</a>

            </div>

        </div>
    </section>

    <section>
        <div class="container-lg">
            <h2 class="max-w-610 mb-40 h1">Kunde &amp; Anforderungen:</h2>
            <p class="max-w-610">
                <?=get_post_meta(get_the_ID(),'customer_and_requirements',true)?>
            </p>
        </div>
    </section>
    <section class="case-study-images-section">
        <div class="container-lg">
            <div class="img-wrapper w-full first-image mb-60"><img src="<?=wp_get_attachment_image_url( get_post_meta(get_the_ID(),'customer_and_requirements_image',true), 'full')?>" alt=""
                                                                   class="full-img">
            </div>
        </div>
        <div class="result-section">
            <div class="container-lg">
                <h2 class="h1 max-w-460 mb-40">Ergebnisse &amp; Vorteile:</h2>
                <div class="split">
                    <p>
                        <?=get_post_meta(get_the_ID(),'results_and_benefits_1',true)?>
                    </p>
                    <p>
                        <?=get_post_meta(get_the_ID(),'results_and_benefits_2',true)?>
                    </p>
                </div>
            </div>
        </div>
        <div class="container-lg">
            <div class="img-wrapper w-full first-image mb-40 mx-auto"><img src="<?=wp_get_attachment_image_url( get_post_meta(get_the_ID(),'results_and_benefits_image',true), 'full')?>"
                                                                           alt="" class="full-img">
            </div>
            <!--                <div class="split gap-20 mb-40">
            <div class="img-wrapper w-full third-image"><img src="assets/images/mockup-context.jpeg" alt=""
                    class="full-img">
            </div>
            <div class="img-wrapper w-full fourth-image"><img src="assets/images/mockup-context.jpeg" alt=""
                    class="full-img">
            </div>
        </div>
        -->
        </div>
    </section>

    <section class="next-case">
        <div class="container-lg">
            <div class="next-case-inner">
                <div class="flex">
                    <div class="flex-col-33">
                        <div class="tag">Nächste Fallstudie</div>
                        <h2>
                            Söldner Consult
                        </h2>
                        <a href="" class="button first-button">Fall ansehen</a>
                    </div>
                    <div class="flex-col-66">
                        <div class="img-wrapper w-full"><img src="assets/images/mockup-soeldner.jpeg" alt=""
                                                             class="full-img"></div>
                        <a href="" class="button second-button">Fall ansehen</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div id="circle-cursor" class="place-center">
        <span class="card-hover uppercase">View Case</span>
        <span class="email-marquee uppercase">Sagen Sie uns Hallo</span>
    </div>
</main>