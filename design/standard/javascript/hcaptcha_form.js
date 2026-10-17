/*
 * The full view of the feedback and request forms (override templates full/feedback_form.tpl and full/request_form.tpl):
 * the captcha's Send button (data-action="submit") submits its form, as the inline script of the templates did.
 * Loaded with ezscript() where that script stood, so the pages need no inline code (Content Security Policy).
 * Each button is set up once, also when the recaptcha and the hcaptcha extension both print their copy of this file.
 */
(function () {
    function setUp() {
        var buttons = document.querySelectorAll('[data-action="submit"]');
        for (var i = 0; i < buttons.length; i++) {
            if (buttons[i].hasAttribute('data-captcha-submit-ready')) {
                continue;
            }
            buttons[i].setAttribute('data-captcha-submit-ready', '1');
            buttons[i].addEventListener('click', function () {
                var form = this.closest('form');
                form.submit();
            });
        }
    }

    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', setUp);
    } else {
        setUp();
    }
})();
