/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
jQuery(document).ready(function () {
    jQuery('#language-div').click(function () {
        jQuery(this).slideToggle();
    });
    jQuery('.table-spot').click(function () {
        jQuery('#modal-title-div').html('Criar pedido para mesa : ' + jQuery(this).attr('data-index'));
    });
    jQuery('.categories-sub-cont').click(function () {
        jQuery('body').find('.categories-sub-cont').each(function () {
            jQuery(this).removeClass('checked');
        });
        jQuery(this).addClass('checked');
        jQuery('#add-category').val(jQuery(this).attr('id'));
    });
    /**
     * Adiciona produtos ao prato
     */
    jQuery('.products-item-add').click(function () {
        if (jQuery(this).attr('data-class') === '1') {
            jQuery('#drinks-list')
                    .append('<li class="list-group-item" data-id=' + jQuery(this).attr('data-class') + '>' + jQuery(this).attr('data-text') + '<i class="fas fa-trash remove-line" style="float:right"></i></li>');
        } else {
            jQuery('#plate-composition-list')
                    .append('<li class="list-group-item" data-id=' + jQuery(this).attr('data-class') + '>' + jQuery(this).attr('data-text') + '<i class="fas fa-trash remove-line" style="float:right"></i></li>');
        }
    });
    /**
     * Define o evento de remover linhas do prato
     */
    jQuery('body').delegate('.remove-line', 'click', function () {
        jQuery(this).parent().remove();
    });
    /**
     * Adiciona o prato ao pedido
     */
    jQuery('#add-to-plate-request').click(function () {
        var clone = jQuery('#plate-composition-list').clone();
        console.log(clone);
        clone.attr('id', 'new-req-item');
        jQuery('#request-food').after(clone);
        jQuery('#plate-composition-list').children().each(function () {
            jQuery(this).remove();
        });
    });
    console.log($(window).width());

    if ($(window).width() < 430) {
        jQuery('#uname1, #pwd1').focus(function (e) {
            jQuery('#login-img').fadeOut(200);
        });
        jQuery('#uname1, #pwd1').focusout(function (e) {
            jQuery('#login-img').fadeIn(200);
        });
    }
    $(window).resize(function () {
        if ($(window).width() < 430) {
            jQuery('#uname1, #pwd1').focus(function (e) {
                jQuery('#login-img').fadeOut(200);
            });
            jQuery('#uname1, #pwd1').focusout(function (e) {
                jQuery('#login-img').fadeIn(200);
            });
        }
    });
});

