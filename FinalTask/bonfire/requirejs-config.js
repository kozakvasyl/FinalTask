var config = {
    map: {
        '*': {
            select2: 'js/lib/select2.full',
            slick: 'js/lib/slick',
            shorttext: 'js/lib/shorttext',
            ellipsis: 'js/lib/jquery.ellipsis.min'
        }
    },
    deps: [
        'js/mainScripts'
    ],
    shim: {
        'select2.full': {
            deps: ['jquery']
        },
        'slick': {
            deps: ['jquery']
        },
        'shorttext': {
            deps: ['jquery']
        },
        'ellipsis': {
            deps: ['jquery']
        }
    },
};