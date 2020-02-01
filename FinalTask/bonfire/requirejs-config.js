var config = {
    map: {
        '*': {
            select2: 'js/lib/select2.full'
        }
    },
    deps: [
        'js/mainScripts'
    ],
    shim: {
        'select2.full': {
            deps: ['jquery']
        }
    }
};