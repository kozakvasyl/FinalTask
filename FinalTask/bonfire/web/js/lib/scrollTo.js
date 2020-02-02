define([
    'jquery',
    'jquery/ui'
], function($) {
    'use strict';

    $.widget('bonfire.scrollTo', {

        _create: function() {
            var mainWrapper = $(this.element),
                btn = mainWrapper.find(this.options.btn),
                elementToScroll = this.options.elementToScroll;

            btn.off('click').on('click', function () {
                scroll(elementToScroll);
            });

            var scroll = function(element) {
                $(element).addClass('show-element').prepend('<span class="hide-element"></span>');
        
                $('html, body').animate({
                    scrollTop: $(element).offset().top
                }, 1000);
        
                $('.hide-element').click(function() {
                    $(element).removeClass('show-element');
                    $('html, body').animate({
                        scrollTop: $('.header.content').offset().top
                    }, 1000);
                    $('.hide-element').remove();
                });
            };
        }

    });
    return $.bonfire.scrollTo;
});