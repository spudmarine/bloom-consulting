/* JS fallback for HTML5 placeholder
 * requires jQuery and Modernizr (to detect support)
 * by Jon Raasch - @jonraasch - http://jonraasch.com/
 * modified script from Nico Hagenburger: http://bit.ly/LgrkT0
*/
 
if(!Modernizr.input.placeholder){
    $('[placeholder]').focus(function() {
        var input = $(this);
        if (input.val() == input.attr('placeholder')) {
            input.val('');
            input.removeClass('placeholder');
        }
    }).blur(function() {
        var input = $(this);
        if (input.val() == '' || input.val() == input.attr('placeholder')) {
            // if password input have to clone it as a text input and then remove this later (otherwise it will show up as ******)
            if ( input.attr('type') == 'password' ) {
                var newInput = input.clone();
                newInput.attr('type', 'text');
                newInput.val(input.attr('placeholder'));
                newInput.addClass('placeholder clone');
                newInput.insertAfter(input);
                
                input.hide();
                
                // add focus state to remove this input and show / focus the original
                newInput.focus(function() {
                    $(this).remove();
                    input.show().focus();
                });
            }
            else {
                input.addClass('placeholder');
                input.val(input.attr('placeholder'));
            }
        }
    }).blur();
    
    $('[placeholder]').parents('form').submit(function() {
        $(this).find('[placeholder]').each(function() {
            var input = $(this);
            if ( input.hasClass('clone') ) {
                input.remove();
                return;
            }
 
            if (input.val() == input.attr('placeholder')) {
                  input.val('');
            }
        })
    });
}