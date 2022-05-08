# ServerPHP
PHP Server For The GRND Restaurant Website That Acts As A REST API.

If Connecting to this API fails while hosting it using XAMPP you might have to add these lines to your httpd.conf configuration file: 

Header set Access-Control-Allow-Origin "*"
Header set Access-Control-Allow-Methods "GET, POST, PUT, DELETE, OPTIONS"
Header set Access-Control-Allow-Headers "X-Requested-With, Content-Type, X-Token-Auth, Authorization"

