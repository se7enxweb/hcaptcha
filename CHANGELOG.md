# v1.8 2026/11/14
Pull request #3 (Marco-JAC) merged: Mailhide (`hcaptchalib::recaptcha_mailhide_html()`) escapes with `htmlentities( ..., ENT_QUOTES | ENT_SUBSTITUTE | ENT_HTML401 )`, the default of PHP 8.1 and later, so it escapes the same on PHP 8.0 (which used `ENT_COMPAT | ENT_HTML401`: a single quote stayed as it is inside the single-quoted `href` and `onclick`, invalid UTF-8 gave an empty string). The output on PHP 8.1 and later does not change. No escaping call without flags is left in the extension; `php -l` passes on PHP 8.0 and 8.5.

# v1.7 2026/10/29
Updated: One copyright notice, Exponential Foundation and 7x.

# v1.6 2026/10/20
Updated Polish and Dutch translations.

# v1.5 2026/10/19
Translations in Croatian, Czech, Danish, Dutch, Italian, Norwegian, Polish, Brazilian Portuguese, Swedish and Turkish.

# v1.4 2026/10/17
The feedback and request form templates run without inline code (a Content Security Policy without 'unsafe-inline'): the Send button's script is design/standard/javascript/hcaptcha_form.js, and an empty onclick attribute is removed. The template autoload file prints nothing when it is included.

# v1.2 2026/10/02
The about page and the upgrade checks show the version, license and website: added extension.xml, and the website in ezinfo.php.

# v1.1
See the GitHub release notes.

# v1.0 2024/08/10
Initial version
