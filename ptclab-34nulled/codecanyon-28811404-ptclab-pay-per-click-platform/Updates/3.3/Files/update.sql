ALTER TABLE `ptc_views` CHANGE `view_date` `view_date` DATE NULL DEFAULT NULL;

UPDATE `extensions` SET `script` = '\n<script src=\"https://www.google.com/recaptcha/api.js\"></script>\n<div class=\"g-recaptcha\" data-sitekey=\"{{site_key}}\" data-callback=\"verifyCaptcha\"></div>\n<div id=\"g-recaptcha-error\"></div>' WHERE `extensions`.`id` = 2;

UPDATE `extensions` SET `shortcode` = '{\"site_key\":{\"title\":\"Site Key\",\"value\":\"----------------\"},\"secret_key\":{\"title\":\"Secret Key\",\"value\":\"---------------\"}}' WHERE `extensions`.`id` = 2;