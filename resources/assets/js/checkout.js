require('./bootstrap-front');

import 'babel-polyfill';
import Vue from 'vue';
import VueI18n from 'vue-i18n';
import VueRouter from 'vue-router';
import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';

import locale from 'element-ui/lib/locale/lang/en';

import store from './vuex/store';

Vue.use(ElementUI, { locale });
Vue.use(VueI18n);
Vue.use(VueRouter);

require('./mixins');

Vue.component('checkout', require('./components/checkout.vue'));

const currentLocale = $('meta[name="current-locale"]').attr("content");

function makeBaseUrl() {
    return `${currentLocale}/`;
}

const router = new VueRouter({
    mode: 'history',
    base: makeBaseUrl(),
    routes: [

    ],
});

const messages = {
    [currentLocale]: window.trans,
};

const i18n = new VueI18n({
    locale: currentLocale,
    messages,
});

const app = new Vue({
    el: '#app',
    router,
    store,
    i18n,
});

window.axios.interceptors.response.use(null, (error) => {
    if (error.response === undefined) {
        console.log(error);
        return;
    }
    if (error.response.status === 403) {
        app.$notify.error({
            title: app.$t('core.unauthorized'),
            message: app.$t('core.unauthorized-access'),
        });
        window.location = route('dashboard.index');
    }
    if (error.response.status === 401) {
        app.$notify.error({
            title: app.$t('core.unauthenticated'),
            message: app.$t('core.unauthenticated-message'),
        });
        window.location = route('login');
    }
    return Promise.reject(error);
});
window._ = require('underscore')
