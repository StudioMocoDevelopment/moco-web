<?php
/*
* Template Name: Startseite
 *Template Post Type : page
*/
get_header();
?>
    <main class="home-page">
		<h1 class="visually-hidden">
			Studio Moco - Crafting Magical User Experiences
		</h1>
        <section class="hero-section relative">
            <div class="container-lg relative grid align-center hero-grid gap-60">

                <div class="context">

                    <div class="usp">
                        <?=get_post_meta(get_the_ID(),'home_page_section_1_title',true)?>
                    </div>
                    <p>
                        <?=get_post_meta(get_the_ID(),'home_page_section_1_desc',true)?>
                    </p>
                </div>
                <div class="img-wrapper image-hero"><img src="<?=wp_get_attachment_image_url( get_post_meta(get_the_ID(),'home_page_section_1_image',true), 'full')?>" alt="" class="full-img">
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
        <section class="what-we-do-section">
            <div class="container-lg">
                <div class="header mb-60">
                    <div class="tag"><?=get_post_meta(get_the_ID(),'home_page_section_2_title',true)?></div>
                    <h2><?=get_post_meta(get_the_ID(),'home_page_section_2_sub_title',true)?></h2>
                </div>
                <div class="ml-auto fit-content">
                    <div class="flex leistung-cards mb-60">
                        <div class="leistung-card">
                            <svg xmlns="http://www.w3.org/2000/svg" width="120" height="120" viewBox="0 0 120 120"
                                 fill="none">
                                <path d="M0 0V120H120V0H0ZM116.388 116.569H3.61305V3.79365H116.388V116.569Z"
                                      fill="#0E42B0" />
                                <path
                                    d="M112.775 7.58836H7.22503V113.138H112.775V7.58836ZM109.163 109.707H10.8381V11.382H109.163V109.707Z"
                                    fill="#0E42B0" />
                                <path
                                    d="M105.55 15.1757H14.4501V106.276H105.55V15.1757ZM101.938 102.845H18.0631V18.9704H101.938V102.845Z"
                                    fill="#0E42B0" />
                                <path
                                    d="M98.3249 22.764H21.6751V99.4138H98.3249V22.764ZM94.7129 95.9825H25.2881V26.5577H94.7129V95.9825Z"
                                    fill="#0E42B0" />
                                <path
                                    d="M91.0999 30.3524H28.9001V92.5522H91.0999V30.3524ZM87.4879 89.1208H32.5132V34.146H87.4879V89.1208Z"
                                    fill="#0E42B0" />
                                <path
                                    d="M83.8749 37.9397H36.1251V85.6894H83.8749V37.9397ZM80.2629 82.2591H39.7382V41.7344H80.2629V82.2591Z"
                                    fill="#0E42B0" />
                                <path
                                    d="M76.6498 45.528H43.3502V78.8277H76.6498V45.528ZM73.0378 75.3963H46.9632V49.3217H73.0378V75.3963Z"
                                    fill="#0E42B0" />
                                <path
                                    d="M69.4248 53.1164H50.5752V71.966H69.4248V53.1164ZM65.8128 68.5346H54.1882V56.91H65.8128V68.5346Z"
                                    fill="#0E42B0" />
                                <path d="M62.1998 60.7037H57.8002V65.1032H62.1998V60.7037Z" fill="#0E42B0" />
                            </svg>
                            <h3><?=get_post_meta(get_the_ID(),'home_page_section_2_box_1_title',true)?></h3>
                            <span class="h4"><?=get_post_meta(get_the_ID(),'home_page_section_2_box_1_sub_title',true)?></span>
                            <p><?=get_post_meta(get_the_ID(),'home_page_section_2_box_1_description',true)?></p>
                        </div>
                        <div class="leistung-card">
                            <svg xmlns="http://www.w3.org/2000/svg" width="120" height="120" viewBox="0 0 120 120"
                                 fill="none">
                                <mask id="mask0_2_96" style="mask-type:luminance" maskUnits="userSpaceOnUse" x="0"
                                      y="0" width="120" height="120">
                                    <path d="M120 0H0V120H120V0Z" fill="white" />
                                </mask>
                                <g mask="url(#mask0_2_96)">
                                    <path
                                        d="M60.0008 -26.1724C11.8447 -26.1724 -27.1943 12.8666 -27.1943 61.0228C-27.1943 109.179 11.8447 148.218 60.0008 148.218C108.157 148.218 147.196 109.179 147.196 61.0228C147.196 12.8666 108.158 -26.1724 60.0008 -26.1724ZM60.0008 143.843C14.302 143.843 -22.7436 106.798 -22.7436 61.099C-22.7436 15.4001 14.303 -21.6454 60.0008 -21.6454C105.699 -21.6454 142.745 15.4001 142.745 61.099C142.745 106.798 105.7 143.843 60.0008 143.843Z"
                                        fill="#0E42B0" />
                                    <path
                                        d="M60.0005 -17.1172C16.7611 -17.1172 -18.292 17.9359 -18.292 61.1753C-18.292 104.415 16.7611 139.468 60.0005 139.468C103.24 139.468 138.293 104.415 138.293 61.1753C138.293 17.9359 103.241 -17.1172 60.0005 -17.1172ZM60.0005 135.092C19.2195 135.092 -13.8412 102.033 -13.8412 61.2504C-13.8412 20.4683 19.2195 -12.5902 60.0005 -12.5902C100.781 -12.5902 133.842 20.4694 133.842 61.2515C133.842 102.034 100.783 135.093 60.0005 135.093V135.092Z"
                                        fill="#0E42B0" />
                                    <path
                                        d="M60.0012 -8.06348C21.6786 -8.06348 -9.38867 23.0038 -9.38867 61.3264C-9.38867 99.649 21.6786 130.716 60.0012 130.716C98.3238 130.716 129.391 99.649 129.391 61.3264C129.391 23.0038 98.3238 -8.06348 60.0012 -8.06348ZM60.0012 126.342C24.1369 126.342 -4.93681 97.2679 -4.93681 61.4037C-4.93681 25.5394 24.1369 -3.5354 60.0012 -3.5354C95.8654 -3.5354 124.939 25.5383 124.939 61.4026C124.939 97.2668 95.8654 126.341 60.0012 126.341V126.342Z"
                                        fill="#0E42B0" />
                                    <path
                                        d="M60.0009 0.991699C26.595 0.991699 -0.486328 28.0731 -0.486328 61.4789C-0.486328 94.8848 26.595 121.966 60.0009 121.966C93.4067 121.966 120.488 94.8848 120.488 61.4789C120.488 28.0731 93.4067 0.991699 60.0009 0.991699ZM60.0009 117.59C29.0534 117.59 3.96554 92.5026 3.96554 61.5551C3.96554 30.6076 29.0534 5.51977 60.0009 5.51977C90.9484 5.51977 116.036 30.6076 116.036 61.5551C116.036 92.5026 90.9484 117.59 60.0009 117.59Z"
                                        fill="#0E42B0" />
                                    <path
                                        d="M60.0006 10.0469C31.5115 10.0469 8.41602 33.1423 8.41602 61.6314C8.41602 90.1205 31.5115 113.216 60.0006 113.216C88.4897 113.216 111.585 90.1205 111.585 61.6314C111.585 33.1423 88.4897 10.0469 60.0006 10.0469ZM60.0006 108.839C33.9699 108.839 12.8679 87.7373 12.8679 61.7066C12.8679 35.6758 33.9699 14.5739 60.0006 14.5739C86.0313 14.5739 107.133 35.6758 107.133 61.7066C107.133 87.7373 86.0313 108.839 60.0006 108.839Z"
                                        fill="#0E42B0" />
                                    <path
                                        d="M60.0012 19.1021C36.4288 19.1021 17.3203 38.2116 17.3203 61.7829C17.3203 85.3541 36.4288 104.464 60.0012 104.464C83.5735 104.464 102.682 85.3541 102.682 61.7829C102.682 38.2116 83.5724 19.1021 60.0012 19.1021ZM60.0012 100.088C38.8872 100.088 21.7711 82.972 21.7711 61.858C21.7711 40.7441 38.8872 23.628 60.0012 23.628C81.1151 23.628 98.2312 40.7441 98.2312 61.858C98.2312 82.972 81.1151 100.088 60.0012 100.088Z"
                                        fill="#0E42B0" />
                                    <path
                                        d="M60.0009 28.1558C41.3453 28.1558 26.2227 43.2784 26.2227 61.934C26.2227 80.5896 41.3453 95.7122 60.0009 95.7122C78.6565 95.7122 93.7791 80.5896 93.7791 61.934C93.7791 43.2784 78.6565 28.1558 60.0009 28.1558ZM60.0009 91.3376C43.8037 91.3376 30.6734 78.2074 30.6734 62.0102C30.6734 45.813 43.8037 32.6828 60.0009 32.6828C76.1981 32.6828 89.3283 45.813 89.3283 62.0102C89.3283 78.2074 76.1981 91.3376 60.0009 91.3376Z"
                                        fill="#0E42B0" />
                                    <path
                                        d="M60.0006 37.2109C46.2617 37.2109 35.125 48.3477 35.125 62.0865C35.125 75.8253 46.2617 86.9621 60.0006 86.9621C73.7394 86.9621 84.8761 75.8253 84.8761 62.0865C84.8761 48.3477 73.7394 37.2109 60.0006 37.2109ZM60.0006 82.5864C48.7201 82.5864 39.5769 73.4421 39.5769 62.1627C39.5769 50.8834 48.7212 41.739 60.0006 41.739C71.2799 41.739 80.4243 50.8834 80.4243 62.1627C80.4243 73.4421 71.2799 82.5864 60.0006 82.5864Z"
                                        fill="#0E42B0" />
                                    <path
                                        d="M59.9993 46.2661C51.1783 46.2661 44.0264 53.417 44.0264 62.239C44.0264 71.0611 51.1772 78.212 59.9993 78.212C68.8214 78.212 75.9722 71.0611 75.9722 62.239C75.9722 53.417 68.8214 46.2661 59.9993 46.2661ZM59.9993 73.8352C53.6367 73.8352 48.4782 68.6768 48.4782 62.3142C48.4782 55.9516 53.6367 50.7931 59.9993 50.7931C66.3619 50.7931 71.5204 55.9516 71.5204 62.3142C71.5204 68.6768 66.3619 73.8352 59.9993 73.8352Z"
                                        fill="#0E42B0" />
                                    <path
                                        d="M60 55.3213C56.0957 55.3213 52.9297 58.4863 52.9297 62.3916C52.9297 66.2969 56.0947 69.4619 60 69.4619C63.9053 69.4619 67.0703 66.2969 67.0703 62.3916C67.0703 58.4863 63.9053 55.3213 60 55.3213ZM60 65.0851C58.5541 65.0851 57.3816 63.9125 57.3816 62.4667C57.3816 61.0209 58.5541 59.8483 60 59.8483C61.4458 59.8483 62.6184 61.0209 62.6184 62.4667C62.6184 63.9125 61.4458 65.0851 60 65.0851Z"
                                        fill="#0E42B0" />
                                </g>
                            </svg>
                            <h3><?=get_post_meta(get_the_ID(),'home_page_section_2_box_2_title',true)?></h3>
                            <span class="h4"><?=get_post_meta(get_the_ID(),'home_page_section_2_box_2_sub_title',true)?></span>
                            <p><?=get_post_meta(get_the_ID(),'home_page_section_2_box_2_description',true)?></p>
                        </div>


                        <div class="leistung-card">
                            <svg xmlns="http://www.w3.org/2000/svg" width="120" height="120" viewBox="0 0 120 120"
                                 fill="none">
                                <path d="M0 0V60.3821H60.3633V0H0ZM3.46894 59.4781V3.3653H59.5536V59.4781H3.46894Z"
                                      fill="#0E42B0" />
                                <path
                                    d="M58.7428 6.7306H6.9368V58.575H58.7428V6.7306ZM57.9321 57.671H10.4057V10.095H57.9331V57.6701L57.9321 57.671Z"
                                    fill="#0E42B0" />
                                <path
                                    d="M57.1224 13.4603H13.8736V56.7671H57.1224V13.4603ZM56.3127 55.864H17.3425V16.8256H56.3127V55.864Z"
                                    fill="#0E42B0" />
                                <path
                                    d="M55.5019 20.1909H20.8104V54.96H55.5019V20.1909ZM54.6922 54.056H24.2793V23.5552H54.6922V54.056Z"
                                    fill="#0E42B0" />
                                <path
                                    d="M53.8814 26.9205H27.7472V53.153H53.8814V26.9205ZM53.0717 52.249H31.2162V30.2858H53.0717V52.249Z"
                                    fill="#0E42B0" />
                                <path
                                    d="M52.261 33.6511H34.684V51.346H52.261V33.6511ZM51.4513 50.442H38.153V37.0164H51.4513V50.442Z"
                                    fill="#0E42B0" />
                                <path
                                    d="M50.6415 40.3808H41.6219V49.538H50.6415V40.3808ZM49.8308 48.6349H45.0898V43.7461H49.8308V48.6349Z"
                                    fill="#0E42B0" />
                                <path d="M49.02 47.1114H48.5576V47.731H49.02V47.1114Z" fill="#0E42B0" />
                                <path
                                    d="M59.6367 0V60.3821H120V0H59.6367ZM116.635 59.571H60.5402V3.4695H116.635V59.571Z"
                                    fill="#0E42B0" />
                                <path
                                    d="M113.271 6.939H61.4426V58.7609H113.271V6.939ZM109.907 57.9508H62.3471V10.4085H109.907V57.9508Z"
                                    fill="#0E42B0" />
                                <path
                                    d="M106.543 13.878H63.2495V57.1397H106.543V13.878ZM103.178 56.3296H64.1519V17.3475H103.178V56.3296Z"
                                    fill="#0E42B0" />
                                <path
                                    d="M99.815 20.817H65.0564V55.5195H99.815V20.817ZM96.4505 54.7085H65.9588V24.2865H96.4505V54.7085Z"
                                    fill="#0E42B0" />
                                <path
                                    d="M93.087 27.756H66.8633V53.8983H93.087V27.756ZM89.7225 53.0882H67.7657V31.2255H89.7225V53.0882Z"
                                    fill="#0E42B0" />
                                <path
                                    d="M86.359 34.695H68.6702V52.2772H86.359V34.695ZM82.9945 51.4671H69.5726V38.1645H82.9945V51.4671Z"
                                    fill="#0E42B0" />
                                <path
                                    d="M79.631 41.634H70.4761V50.6569H79.631V41.634ZM76.2665 49.8459H71.3795V45.1035H76.2665V49.8459Z"
                                    fill="#0E42B0" />
                                <path d="M72.903 48.573H72.283V49.0358H72.903V48.573Z" fill="#0E42B0" />
                                <path
                                    d="M59.6367 59.6179V120H120V59.6179H59.6367ZM116.531 116.635H60.4464V60.5219H116.531V116.635Z"
                                    fill="#0E42B0" />
                                <path
                                    d="M113.062 61.425H61.2561V113.269H113.062V61.425ZM109.594 109.904H62.0669V62.329H109.594V109.904Z"
                                    fill="#0E42B0" />
                                <path
                                    d="M106.125 63.232H62.8766V106.539H106.125V63.232ZM102.657 103.174H63.6873V64.136H102.657V103.174Z"
                                    fill="#0E42B0" />
                                <path
                                    d="M99.1885 65.04H64.497V99.8091H99.1885V65.04ZM95.7207 96.4438H65.3078V65.943H95.7207V96.4438Z"
                                    fill="#0E42B0" />
                                <path
                                    d="M92.2517 66.847H66.1175V93.0795H92.2517V66.847ZM88.7839 89.7142H66.9283V67.751H88.7839V89.7142Z"
                                    fill="#0E42B0" />
                                <path
                                    d="M85.3149 68.654H67.738V86.3489H85.3149V68.654ZM81.847 82.9836H68.5488V69.558H81.847V82.9836Z"
                                    fill="#0E42B0" />
                                <path
                                    d="M78.3781 70.4611H69.3585V79.6183H78.3781V70.4611ZM74.9092 76.2539H70.1682V71.3651H74.9092V76.2539Z"
                                    fill="#0E42B0" />
                                <path d="M71.4413 72.2681H70.9789V72.8877H71.4413V72.2681Z" fill="#0E42B0" />
                                <path
                                    d="M0 59.6179V120H60.3633V59.6179H0ZM59.4598 116.531H3.36453V60.429H59.4598V116.531Z"
                                    fill="#0E42B0" />
                                <path
                                    d="M58.5564 61.2391H6.72799V113.061H58.5564V61.2391ZM57.6529 109.591H10.0925V62.0492H57.6529V109.591Z"
                                    fill="#0E42B0" />
                                <path
                                    d="M56.7495 62.8593H13.456V106.121H56.7495V62.8593ZM16.8205 102.653V63.6704H55.8471V102.653H16.8205Z"
                                    fill="#0E42B0" />
                                <path
                                    d="M54.9426 64.4805H20.184V99.183H54.9426V64.4805ZM54.0402 95.7135H23.5485V65.2915H54.0402V95.7135Z"
                                    fill="#0E42B0" />
                                <path
                                    d="M53.1367 66.1017H26.913V92.244H53.1367V66.1017ZM52.2333 88.7745H30.2765V66.9118H52.2333V88.7745Z"
                                    fill="#0E42B0" />
                                <path
                                    d="M51.3298 67.7219H33.641V85.3041H51.3298V67.7219ZM50.4263 81.8355H37.0045V68.5329H50.4263V81.8355Z"
                                    fill="#0E42B0" />
                                <path
                                    d="M49.5229 69.3431H40.369V78.366H49.5229V69.3431ZM48.6194 74.8965H43.7324V70.1541H48.6194V74.8965Z"
                                    fill="#0E42B0" />
                                <path d="M47.717 70.9633H47.097V71.4261H47.717V70.9633Z" fill="#0E42B0" />
                            </svg>
                            <h3><?=get_post_meta(get_the_ID(),'home_page_section_2_box_3_title',true)?></h3>
                            <span class="h4"><?=get_post_meta(get_the_ID(),'home_page_section_2_box_3_sub_title',true)?></span>
                            <p><?=get_post_meta(get_the_ID(),'home_page_section_2_box_3_description',true)?></p>
                        </div>
                    </div>
                    <a href="" class="hidden">Zur Leistungsübersicht</a>
                </div>

            </div>
        </section>
        <section class="image-section">
            <div class="container-lg">
                <div class="img-wrapper img-animate-parallax">
                    <div class="img-wrapper-animation">
                        <img src="<?=wp_get_attachment_image_url( get_post_meta(get_the_ID(),'home_page_section_2_big_image',true), 'full')?>" alt="" class="full-img">
                    </div>
                </div>
            </div>
        </section>
        <section class="case-studies-section">
            <div class="container-lg">
                <div class="padding-mobile">
                    <div class="tag"><?=get_post_meta(get_the_ID(),'home_page_section_3_title',true)?></div>
                    <h2 class="mb-24">
                        <?=get_post_meta(get_the_ID(),'home_page_section_3_sub_title',true)?>
                    </h2>
                    <p><?=get_post_meta(get_the_ID(),'home_page_section_3_description',true)?></p>
                </div>
                <div class="grid case-study-grid two-column-grid">
                    <?php
                    $all_blog = new WP_Query(array(
                        'order'=>'DESC',
                        'posts_per_page'=>4,
                        'post_status '=>'publish',
                        'post_type' => 'case-study'

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

            </div>
        </section>
        <div class="about-us-section">
            <div class="container-lg">
                <div class="flex align-center gap-40">
                    <div class="img-with-text-overlay">
                        <div class="grid flex-col-75">
                            <div class="text">
                                <div class="tag"><?=get_post_meta(get_the_ID(),'home_page_section_4_title',true)?></div>
                                <h2>
                                    <?=get_post_meta(get_the_ID(),'home_page_section_4_sub_title',true)?>

                                </h2>

                            </div>
                            <div class="img-wrapper img-animate-parallax">
                                <div class="img-wrapper-animation">
                                    <img src="<?=wp_get_attachment_image_url( get_post_meta(get_the_ID(),'home_page_section_4_image_1',true), 'full')?>" alt="" class="full-img">
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="flex-col-33 flex about-us-desc">
                        <div class="img-wrapper img-animate-parallax">
                            <div class="img-wrapper-animation">
                                <img src="<?=wp_get_attachment_image_url( get_post_meta(get_the_ID(),'home_page_section_4_image_2',true), 'full')?>" alt="" class="full-img">
                            </div>
                        </div>
                        <div class="flex flex-column gap-60">
                            <p><?=get_post_meta(get_the_ID(),'home_page_section_4_description',true)?></p>
                            <a href="<?=get_post_meta(get_the_ID(),'home_page_section_4_button_url',true)?>" class="button"><?=get_post_meta(get_the_ID(),'home_page_section_4_button_text',true)?></a>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <section class="image-section ">
            <div class="container-lg">
                <div class="img-wrapper wide-image img-animate-parallax">
                    <div class="img-wrapper-animation">
                        <img src="<?=wp_get_attachment_image_url( get_post_meta(get_the_ID(),'home_page_section_4_big_image',true), 'full')?>" alt="" class="full-img">
                    </div>
                </div>
            </div>
        </section>
        <section class="testimonials-section">
            <div class="container-lg">
                <div class="testimonial-container">
                    <div class="mb-40">
                        <div class="tag"><?=get_post_meta(get_the_ID(),'home_page_section_5_title',true)?></div>
                        <h2 class="h1"><?=get_post_meta(get_the_ID(),'home_page_section_5_sub_title',true)?></h2>
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
        <section class="contact-section" id="contact">
            <div class="container-lg overflow-x-hidden">
                    <span class="block hidden big-contact-header uppercase ff-primary relative">
                        Kontaktbereich
                    </span>
                <h2 class="h1"><?=get_post_meta(get_the_ID(),'home_page_section_7_title',true)?></h2>
                <div class="split">
                    <div class="first-col">
                        <p>
                            <?=get_post_meta(get_the_ID(),'home_page_section_7_description',true)?>
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
                    <div class="grid" aria-hidden="true">
                        <span><?=get_post_meta(get_the_ID(),'home_page_section_8_motto',true)?></span>
                        <span><?=$option['contact_mail_1']?></span>
                    </div>
                    <div class="grid" aria-hidden="true">
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