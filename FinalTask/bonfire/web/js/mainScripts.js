define([
    'jquery',
    'select2',
    'domReady!'
    ], function ($) {

    //show addReview form
    $('.review_hiden').click(function () {
        $(".block-content").toggleClass("show-review-form");
    });

    //scroll page to reviews
    $('.product-reviews-summary').find('.action.view').click(function() {
        $('.block.review-list').toggleClass('show-element');
        $('.show-element').prepend('<span class="hide-element"></span>');

        $('html, body').animate({
            scrollTop: $('.block.review-list').offset().top
        }, 1000);

        $('.hide-element').click(function() {
            $('.block.review-list').removeClass('show-element');
            $('html, body').animate({
                scrollTop: $('.header.content').offset().top
            }, 1000);
            $('.hide-element').remove();
        });
    });

    //select plugin
    $('.select-city, .select-phone').select2({
        scrollAfterSelect: false,
        minimumResultsForSearch: Infinity
    });

});
