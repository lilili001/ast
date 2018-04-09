let mix = require('laravel-mix');
const webpack = require('webpack');
mix.webpackConfig({
    plugins: [
        // 不打包 moment.js 的语言文件以减小体积
        new webpack.IgnorePlugin(/^\.\/locale$/, /moment$/),

    ],
    devtool:false
});
/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel application. By default, we are compiling the Sass
 | file for the application as well as bundling up all the JS files.
 |
 */

mix.js('resources/assets/js/app.js', 'public/js')
    .js('resources/assets/js/cart.js', 'public/js')
    .js('resources/assets/js/checkout.js', 'public/js')
    .scripts([
        'resources/assets/js/lib/jquery.validate.min.js',
        'resources/assets/js/lib/messages_zh.js'
    ],'public/js/lib.js')

    .sass('resources/assets/sass/app.scss', 'public/css')
;
