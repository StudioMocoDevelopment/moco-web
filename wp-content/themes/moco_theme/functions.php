<?php
/**
 * moco_theme functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package moco_theme
 */

if ( ! defined( '_S_VERSION' ) ) {
	// Replace the version number of the theme on each release.
	define( '_S_VERSION', '1.0.0' );
}

/**
 * Sets up theme defaults and registers support for various WordPress features.
 *
 * Note that this function is hooked into the after_setup_theme hook, which
 * runs before the init hook. The init hook is too late for some features, such
 * as indicating support for post thumbnails.
 */
function moco_theme_setup() {
	/*
		* Make theme available for translation.
		* Translations can be filed in the /languages/ directory.
		* If you're building a theme based on moco_theme, use a find and replace
		* to change 'moco_theme' to the name of your theme in all the template files.
		*/
	load_theme_textdomain( 'moco_theme', get_template_directory() . '/languages' );

	// Add default posts and comments RSS feed links to head.
	add_theme_support( 'automatic-feed-links' );

	/*
		* Let WordPress manage the document title.
		* By adding theme support, we declare that this theme does not use a
		* hard-coded <title> tag in the document head, and expect WordPress to
		* provide it for us.
		*/
	add_theme_support( 'title-tag' );

	/*
		* Enable support for Post Thumbnails on posts and pages.
		*
		* @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
		*/
	add_theme_support( 'post-thumbnails' );

	// This theme uses wp_nav_menu() in one location.
	register_nav_menus(
		array(
			'menu-1' => esc_html__( 'Primary', 'moco_theme' ),
            'menu-3' => esc_html__( 'Footer', 'moco_theme' )
		)
	);

	/*
		* Switch default core markup for search form, comment form, and comments
		* to output valid HTML5.
		*/
	add_theme_support(
		'html5',
		array(
			'search-form',
			'comment-form',
			'comment-list',
			'gallery',
			'caption',
			'style',
			'script',
		)
	);

	// Set up the WordPress core custom background feature.
	add_theme_support(
		'custom-background',
		apply_filters(
			'moco_theme_custom_background_args',
			array(
				'default-color' => 'ffffff',
				'default-image' => '',
			)
		)
	);

	// Add theme support for selective refresh for widgets.
	add_theme_support( 'customize-selective-refresh-widgets' );

	/**
	 * Add support for core custom logo.
	 *
	 * @link https://codex.wordpress.org/Theme_Logo
	 */
	add_theme_support(
		'custom-logo',
		array(
			'height'      => 250,
			'width'       => 250,
			'flex-width'  => true,
			'flex-height' => true,
		)
	);
}
add_action( 'after_setup_theme', 'moco_theme_setup' );

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function moco_theme_content_width() {
	$GLOBALS['content_width'] = apply_filters( 'moco_theme_content_width', 640 );
}
add_action( 'after_setup_theme', 'moco_theme_content_width', 0 );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function moco_theme_widgets_init() {
	register_sidebar(
		array(
			'name'          => esc_html__( 'Sidebar', 'moco_theme' ),
			'id'            => 'sidebar-1',
			'description'   => esc_html__( 'Add widgets here.', 'moco_theme' ),
			'before_widget' => '<section id="%1$s" class="widget %2$s">',
			'after_widget'  => '</section>',
			'before_title'  => '<h2 class="widget-title">',
			'after_title'   => '</h2>',
		)
	);
}
add_action( 'widgets_init', 'moco_theme_widgets_init' );

/**
 * Enqueue scripts and styles.
 */
function moco_theme_scripts() {
	wp_enqueue_style( 'moco_theme-style', get_stylesheet_uri(), array(), _S_VERSION );
	wp_style_add_data( 'moco_theme-style', 'rtl', 'replace' );
    wp_enqueue_style( 'swiper-bundle', get_template_directory_uri() . '/css/swiper-bundle.min.css', array(), _S_VERSION );


    wp_enqueue_script( 'customizer', get_template_directory_uri() . '/js/customizer.js', array('jquery'), _S_VERSION, true );
    wp_enqueue_script( 'gsap', get_template_directory_uri() . '/js/gsap.min.js', array(), _S_VERSION, true );
    wp_enqueue_script( 'lazysizes', get_template_directory_uri() . '/js/lazysizes.min.js', array(), _S_VERSION, true );
    wp_enqueue_script( 'lenis', get_template_directory_uri() . '/js/lenis.min.js', array(), _S_VERSION, true );

    wp_enqueue_script( 'scrollTo', get_template_directory_uri() . '/js/scrollTo.min.js', array(), _S_VERSION, true );
    wp_enqueue_script( 'scrolltrigger', get_template_directory_uri() . '/js/scrolltrigger.min.js', array(), _S_VERSION, true );
    wp_enqueue_script( 'swiper-bundle', get_template_directory_uri() . '/js/swiper-bundle.min.js', array(), _S_VERSION, true );
    wp_enqueue_script( 'swup', get_template_directory_uri() . '/js/swup.min.js', array(), _S_VERSION, true );
    wp_enqueue_script( 'script', get_template_directory_uri() . '/js/script.js', array(), _S_VERSION, true );

	wp_enqueue_script( 'moco_theme-navigation', get_template_directory_uri() . '/js/navigation.js', array(), _S_VERSION, true );

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'moco_theme_scripts' );
function hack_esc_html( $safe, $unsafe  ){
    return wp_kses( $unsafe,
        array(
            'sup'=>array('class'=>true),
            'span'=>array('class'=>true),
            'a'=>array('href'=>true,'target'=>true,'class'=>true),
            'br'=>array(),
            'em'=>array(),
            'strong'=>array(),
            'p'=>array()


        )

    );
}
add_filter('esc_html','hack_esc_html',999,2);

function my_acf_load_value( $value, $post_id, $field ) {

    $content = apply_filters('the_content',$value);
    $content = force_balance_tags( $content );
    $content = preg_replace( '#<p>\s*+(<br\s*/*>)?\s*</p>#i', '', $content );
    $content = preg_replace( '~\s?<p>(\s| )+</p>\s?~', '', $content );

    return $content;
}

add_filter('acf/load_value/type=wysiwyg', 'my_acf_load_value', 10, 3);
function paragraf_add_class($content){
    return preg_replace('/<p([^>]+)?>/', '<p$1 class="intro">',strip_tags($content), 1);
}


/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Functions which enhance the theme by hooking into WordPress.
 */
require get_template_directory() . '/inc/template-functions.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';

/**
 * Load Jetpack compatibility file.
 */
if ( defined( 'JETPACK__VERSION' ) ) {
	require get_template_directory() . '/inc/jetpack.php';
}

require get_template_directory() . '/inc/contact-settings.php';

// Filter & Function to rename the WordPress logout URL
add_filter( 'logout_url', 'my_logout_page', 10, 2 );
function my_logout_page( $logout_url) {
    return home_url( '/moco-anmeldung.php');   // The name of your new login file
}
// Filter & Function to rename Lost Password URL
add_filter( 'lostpassword_url', 'my_lost_password_page', 10, 2 );
function my_lost_password_page( $lostpassword_url ) {
    return home_url( '/moco-anmeldung.php?action=lostpassword');   // The name of your new login file
}