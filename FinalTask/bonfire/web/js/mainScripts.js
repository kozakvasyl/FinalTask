define([
    'jquery',
    'select2',
    'domReady!'
    ], function ($) {

    //hide header wellcome message
    function hideWelcomeMessage () {
        $('.panel.wrapper').find('.panel.header').prepend('<span class="hide-header-panel"></span>');
        $('.hide-header-panel').click(function () {
            $('.panel.wrapper').hide();
        });
    };
    hideWelcomeMessage();

    //add product qty arrows
    function addQtyArrows () {
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
    };
    addQtyArrows();

    //clear selection
    function clearSelection () {
        $('.product-options-wrapper').find('a').on('click',function(){
            $('#attribute93')[0].selectedIndex = 0;
            $('#attribute135')[0].selectedIndex = 0;
            $('#qty').val(1);
        });
    };
    clearSelection();

    //select2
    var cselectColor = $('.super-attribute-select').first();
    cselectColor.select2({
        placeholder: "Select Color",
        scrollAfterSelect: false,
        minimumResultsForSearch: Infinity
    });

    var cselectSize = $('.super-attribute-select').last();
    cselectSize.select2({
        placeholder: "Select Size",
        scrollAfterSelect: false,
        minimumResultsForSearch: Infinity
    });
    

});
