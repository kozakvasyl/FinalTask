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
        $('.block.review-list').toggleClass("show-element");
        $('html, body').animate({
          scrollTop: $(".block.review-list").offset().top
        }, 1000)
    });

    //scroll page to show addReview form
    $('.action.add').click(function() {
        $(".block-content").toggleClass("show-review-form");
        $('html, body').animate({
            scrollTop: $(".show-review-form").offset().top
          }, 1000)
    });

    //select plugin
    $('.select-city, .select-phone').select2({
        scrollAfterSelect: false,
        minimumResultsForSearch: Infinity
    });

});
