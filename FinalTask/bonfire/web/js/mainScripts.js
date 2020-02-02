define([
    'jquery',
    'select2',
    'domReady!'
    ], function ($) {

    //hide header wellcome message
    $('.panel.wrapper').find('.panel.header').prepend('<span class="hide-header-panel"></span>');
    $('.hide-header-panel').click(function () {
        $('.panel.wrapper').hide();
    });

    //add product qty arrows
    $('.field.qty .control input').parent().append('<span class="button-add"></span><span class="button-sub"></span>');

    $('.button-sub').click(function () {
        var $input = $(this).parent().find('input');
        var count = parseInt($input.val()) - 1;
        count = count < 1 ? 1 : count;
        $input.val(count);
        $input.change();
        return false;
    });

    $('.button-add').click(function () {
        var $input = $(this).parent().find('input');
        $input.val(parseInt($input.val()) + 1);
        $input.change();
        return false;
    });

    //select plugin
    $('.select-city, .select-phone').select2({
        scrollAfterSelect: false,
        minimumResultsForSearch: Infinity
    });

});
