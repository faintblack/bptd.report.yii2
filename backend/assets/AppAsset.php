<?php

namespace backend\assets;

use yii\web\AssetBundle;

/**
 * Main backend application asset bundle.
 */
class AppAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
        'ubold/assets/css/bootstrap.min.css',
        'ubold/assets/css/core.css',
        'ubold/assets/css/components.css',
        'ubold/assets/css/icons.css',
        'ubold/assets/css/pages.css',
        'ubold/assets/css/responsive.css',
        'ubold/assets/plugins/morris/morris.css',
    ];
    public $js = [
        'ubold/assets/js/modernizr.min.js',
        // 'ubold/assets/js/jquery.min.js',
        'ubold/assets/js/bootstrap.min.js',
        'ubold/assets/js/detect.js',
        'ubold/assets/js/fastclick.js',
        'ubold/assets/js/jquery.slimscroll.js',
        'ubold/assets/js/jquery.blockUI.js',
        'ubold/assets/js/waves.js',
        'ubold/assets/js/wow.min.js',
        'ubold/assets/js/jquery.nicescroll.js',
        'ubold/assets/js/jquery.scrollTo.min.js',
        'ubold/assets/js/jquery.core.js',
        'ubold/assets/js/jquery.app.js',
        'ubold/assets/plugins/morris/morris.min.js',
        'ubold/assets/plugins/raphael/raphael-min.js',
        'ubold/assets/pages/jquery.dashboard_2.js',
    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapAsset',
    ];
}
