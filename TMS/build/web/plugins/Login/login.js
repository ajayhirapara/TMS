$(document).ready(function () {
    /* Login Validation Start */
    $('.btn_login').click(function (e) {
        var $formId = $(this).parents('form');
        var formAction = $formId.attr('action');
        var $error = $('<span class="error"></span>');
        // Prepare the form for validation - remove previous errors
        $('li', $formId).removeClass('error');
        $('span.error').remove();

        // Validate all inputs with the class "required"
        $('.required', $formId).each(function () {
            var inputVal = $(this).val();
            var $parentTag = $(this).parent();
            if (inputVal == '') {
                $parentTag.addClass('error').append($error.clone().text('Required Field'));
            }
        });
        // All validation complete - Check if any errors exist
        // If has errors
        if ($('span.error').length > 0) {

            $('span.error').each(function () {

                // Set the distance for the error animation
                var distance = 5;

                // Get the error dimensions
                var width = $(this).outerWidth();

                // Calculate starting position
                var start = width + distance;

                // Set the initial CSS
                $(this).show().css({
                    display: 'block',
                    opacity: 0,
                    right: -start + 'px'
                })
                        // Animate the error message
                        .animate({
                            right: -width + 'px',
                            opacity: 1
                        }, 'slow');

            });
        } else {
            $formId.submit();
        }
        // Prevent form submission
        e.preventDefault();
    });

    // Fade out error message when input field gains focus
    $('.required').focus(function () {
        var $parent = $(this).parent();
        $parent.removeClass('error');
        $('span.error', $parent).fadeOut();
    });
    /* Login Validation Ends */
    /* Register Validation Start */
    $('.btn_submit').click(function (e) {

        // Declare the function variables:
        // Parent form, form URL, email regex and the error HTML
        var $formId = $(this).parents('form');
        var passw = /w{6,50}$/;
        var formAction = $formId.attr('action');
        var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
        var $error = $('<span class="error"></span>');

        // Prepare the form for validation - remove previous errors
        $('li', $formId).removeClass('error');
        $('span.error').remove();

        // Validate all inputs with the class "required"
        $('.required', $formId).each(function () {
            var inputVal = $(this).val();
            var $parentTag = $(this).parent();
            if (inputVal == '') {
                $parentTag.addClass('error').append($error.clone().text('Required Field'));
            }

            // Run the email validation using the regex for those input items also having class "email"
            if ($(this).hasClass('email') == true) {
                if (!emailReg.test(inputVal)) {
                    $parentTag.addClass('error').append($error.clone().text('Enter valid email'));
                }
            }

            //Student
            if ($(this).hasClass('password') == true) {
                var password1 = $('#pass-1').val();
                var password2 = $('#pass-2').val();
                if (password1 != password2) {
                    $('#Pass-2').addClass('error').append($error.clone().text('Passwords must match'));
                }
            }

            if ($(this).hasClass('password') == true) {
                var pass = document.getElementById('pass-1').value;
                if (pass.length < 6) {
                    $('#Pass-1').addClass('error').append($error.clone().text('Password Must be Grater Than 6'));
                }
            }
        });

        // All validation complete - Check if any errors exist
        // If has errors
        if ($('span.error').length > 0) {

            $('span.error').each(function () {

                // Set the distance for the error animation
                var distance = 5;

                // Get the error dimensions
                var width = $(this).outerWidth();

                // Calculate starting position
                var start = width + distance;

                // Set the initial CSS
                $(this).show().css({
                    display: 'block',
                    opacity: 0,
                    right: -start + 'px'
                })
                        // Animate the error message
                        .animate({
                            right: -width + 'px',
                            opacity: 1
                        }, 'slow');

            });
        } else {
            $formId.submit();
        }
        // Prevent form submission
        e.preventDefault();
    });

    $('.btn_submit_mentor').click(function (e) {

        // Declare the function variables:
        // Parent form, form URL, email regex and the error HTML
        var $formId = $(this).parents('form');
        var passw = /w{6,50}$/;
        var formAction = $formId.attr('action');
        var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
        var $error = $('<span class="error"></span>');

        // Prepare the form for validation - remove previous errors
        $('li', $formId).removeClass('error');
        $('span.error').remove();

        // Validate all inputs with the class "required"
        $('.required', $formId).each(function () {
            var inputVal = $(this).val();
            var $parentTag = $(this).parent();
            if (inputVal == '') {
                $parentTag.addClass('error').append($error.clone().text('Required Field'));
            }

            // Run the email validation using the regex for those input items also having class "email"
            if ($(this).hasClass('email') == true) {
                if (!emailReg.test(inputVal)) {
                    $parentTag.addClass('error').append($error.clone().text('Enter valid email'));
                }
            }

            //Mentor
            if ($(this).hasClass('password') == true) {
                var password1 = $('#pass_mentor1').val();
                var password2 = $('#pass_mentor2').val();
                if (password1 != password2) {
                    $('#Pass_mentor_form2').addClass('error').append($error.clone().text('Passwords must match'));
                }
            }

            if ($(this).hasClass('password') == true) {
                var pass = document.getElementById('pass_mentor1').value;
                if (pass.length < 6) {
                    $('#Pass_mentor_form1').addClass('error').append($error.clone().text('Password Must be Grater Than 6'));
                }
            }

        });

        // All validation complete - Check if any errors exist
        // If has errors
        if ($('span.error').length > 0) {

            $('span.error').each(function () {

                // Set the distance for the error animation
                var distance = 5;

                // Get the error dimensions
                var width = $(this).outerWidth();

                // Calculate starting position
                var start = width + distance;

                // Set the initial CSS
                $(this).show().css({
                    display: 'block',
                    opacity: 0,
                    right: -start + 'px'
                })
                        // Animate the error message
                        .animate({
                            right: -width + 'px',
                            opacity: 1
                        }, 'slow');

            });
        } else {
            $formId.submit();
        }
        // Prevent form submission
        e.preventDefault();
    });

    $('.btn_submit_prof').click(function (e) {

        // Declare the function variables:
        // Parent form, form URL, email regex and the error HTML
        var $formId = $(this).parents('form');
        var passw = /w{6,50}$/;
        var formAction = $formId.attr('action');
        var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
        var $error = $('<span class="error"></span>');

        // Prepare the form for validation - remove previous errors
        $('li', $formId).removeClass('error');
        $('span.error').remove();

        // Validate all inputs with the class "required"
        $('.required', $formId).each(function () {
            var inputVal = $(this).val();
            var $parentTag = $(this).parent();
            if (inputVal == '') {
                $parentTag.addClass('error').append($error.clone().text('Required Field'));
            }

            // Run the email validation using the regex for those input items also having class "email"
            if ($(this).hasClass('email') == true) {
                if (!emailReg.test(inputVal)) {
                    $parentTag.addClass('error').append($error.clone().text('Enter valid email'));
                }
            }

            //Mentor
            if ($(this).hasClass('password') == true) {
                var password1 = $('#pass_prof1').val();
                var password2 = $('#pass_prof2').val();
                if (password1 != password2) {
                    $('#Pass_prof_form2').addClass('error').append($error.clone().text('Passwords must match'));
                }
            }

            if ($(this).hasClass('password') == true) {
                var pass = document.getElementById('pass_prof1').value;
                if (pass.length < 6) {
                    $('#Pass_prof_form1').addClass('error').append($error.clone().text('Password Must be Grater Than 6'));
                }
            }

        });

        // All validation complete - Check if any errors exist
        // If has errors
        if ($('span.error').length > 0) {

            $('span.error').each(function () {

                // Set the distance for the error animation
                var distance = 5;

                // Get the error dimensions
                var width = $(this).outerWidth();

                // Calculate starting position
                var start = width + distance;

                // Set the initial CSS
                $(this).show().css({
                    display: 'block',
                    opacity: 0,
                    right: -start + 'px'
                })
                        // Animate the error message
                        .animate({
                            right: -width + 'px',
                            opacity: 1
                        }, 'slow');

            });
        } else {
            $formId.submit();
        }
        // Prevent form submission
        e.preventDefault();
    });

    // Fade out error message when input field gains focus
    $('.required').focus(function () {
        var $parent = $(this).parent();
        $parent.removeClass('error');
        $('span.error', $parent).fadeOut();
    });
});
/* Register Validation Ends */