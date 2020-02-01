define([
    'jquery',
    'select2',
    'domReady!'
    ], function ($) {

    //hide header panel
    $('.panel.wrapper').find('.panel.header').prepend('<span class="hide-header-panel"></span>');
    $('.hide-header-panel').click(function () {
        $('.panel.wrapper').hide();
    });




    //scroll page to reviews
    /* $('.product-reviews-summary').find('.action.view').click(function() {
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
    }); */

    var scrollTo = function(element) {
        element.addClass('show-element').prepend('<span class="hide-element"></span>');

        $('html, body').animate({
            scrollTop: element.offset().top
        }, 1000);

        $('.hide-element').click(function() {
            element.removeClass('show-element');
            $('html, body').animate({
                scrollTop: $('.header.content').offset().top
            }, 1000);
            $('.hide-element').remove();
        });
    };

    var reviews = $('.block.review-list');
    $('.product-reviews-summary').find('.action.view').off('click').on('click', function () {
        scrollTo(reviews);
    });
    var formAddReviews = $('.review-form');
    $('.product-reviews-summary').find('.add-review-buton').off('click').on('click', function () {
        scrollTo(formAddReviews);
    });





    //select plugin
    $('.select-city, .select-phone').select2({
        scrollAfterSelect: false,
        minimumResultsForSearch: Infinity
    });

});
