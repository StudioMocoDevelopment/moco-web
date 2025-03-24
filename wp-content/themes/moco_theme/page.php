<?php
/**
 * The template for displaying all pages
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site may use a
 * different template.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package moco_theme
 */

get_header();
?>

	<main class="padding-top-lg-main info-page">
		<section class="mb-60">
			<div class="container-lg">
				<div class="content flow-content" style="--space:24px;">
					<?php
					while ( have_posts() ) :
						the_post();

						get_template_part( 'template-parts/content', 'page' );

					endwhile; // End of the loop.
					?>
				</div>
			</div>
		</section>
		<div id="circle-cursor" class="place-center">
			<span class="card-hover uppercase">View Case</span>
			<span class="email-marquee uppercase">Sag Hey!</span>
		</div>
	</main>




<?php

get_footer();
