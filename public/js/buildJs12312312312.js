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
    jQuery('.categories-sub-cont').click(function(){
        jQuery('body').find('.categories-sub-cont').each(function(){
            jQuery(this).removeClass('checked');
        });
        jQuery(this).addClass('checked');
        jQuery('#add-category').val(jQuery(this).attr('id'));
    });
});

