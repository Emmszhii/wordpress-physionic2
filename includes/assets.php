<?php

function Physionic2__Assets(){
    wp_enqueue_style('Physionic2-css', get_template_directory_uri() . '/css/main.css', microtime());
}

add_action('wp_enqueue_scripts', 'Physionic2__Assets');