<?php
defined('BASEPATH') or exit('No direct script access allowed');

$route['default_controller'] = 'home';
$route['404_override'] = 'home/notfound';
$route['translate_uri_dashes'] = FALSE;
$route['404'] = 'home/notfound';
$route['subscribe-email'] = 'home/subscribe_email';
$route['unsubscribe-email'] = 'home/unsubscribe_email';
$route['login/admin'] = 'home/login';
$route['login/penjual'] = 'home/login_penjual';
$route['snap'] = 'snap';
$route['transaction'] = 'transaction';
$route['notification'] = 'notification';
$route['c/(:any)'] = 'categories/index/$1';
$route['promo'] = 'promo/index';
$route['p/(:any)'] = 'products/detail_product/$1';
$route['products'] = 'products/index';
$route['products/getgrosir'] = 'products/getgrosir';
$route['testimoni'] = 'testimoni/index';
$route['cart'] = 'cart/index';
$route['payment'] = 'payment/index';
$route['register'] = 'auth/register';

$route['login'] = 'auth/login';
$route['logout'] = 'home/logout';
$route['profile'] = 'profile';
$route['search'] = 'page/search';
$route['transaction'] = 'transaction';
$route['reset-password'] = 'auth/reset_password';
$route['reset'] = 'auth/reset';
$route['new-password'] = 'auth/new_password';
$route['profile/transaction/(:num)'] = 'profile/detail_order/$1';
$route['profile/edit-profile'] = 'profile/edit_profile';
$route['profile/change-password'] = 'profile/change_password';
$route['administrator'] = 'administrator/index';
$route['administrator/order/(:num)'] = 'administrator/detail_order/$1';
$route['administrator/order/(:num)/process'] = 'administrator/process_order/$1';
$route['administrator/order/(:num)/sending'] = 'administrator/sending_order/$1';
$route['administrator/order/(:num)/delete'] = 'administrator/delete_order/$1';
$route['administrator/products/search'] = 'administrator/search_products';
$route['administrator/product/add'] = 'administrator/add_product';
$route['administrator/product/add-img/(:num)'] = 'administrator/add_img_product/$1';
$route['administrator/product/grosir/(:num)'] = 'administrator/add_grosir_product/$1';
$route['administrator/product/(:num)/edit'] = 'administrator/edit_product/$1';
$route['administrator/email/send'] = 'administrator/send_mail';
$route['administrator/email/(:num)'] = 'administrator/detail_email/$1';
$route['administrator/page/add'] = 'administrator/add_page';
$route['administrator/page/(:num)/edit'] = 'administrator/edit_page/$1';
$route['administrator/setting/general'] = 'administrator/general_setting';
$route['administrator/setting/navmenu'] = 'administrator/navmenu_setting';
$route['administrator/setting/navmenu/add'] = 'administrator/add_navmenu_setting';
$route['administrator/setting/navmenu/(:num)'] = 'administrator/edit_navmenu_setting/$1';
$route['administrator/setting/banner'] = 'administrator/banner_setting';
$route['administrator/setting/banner/add'] = 'administrator/add_banner_setting';
$route['administrator/setting/description'] = 'administrator/description_setting';
$route['administrator/setting/rekening'] = 'administrator/rekening_setting';
$route['administrator/setting/rekening/add'] = 'administrator/add_rekening_setting';
$route['administrator/setting/rekening/(:num)'] = 'administrator/edit_rekening_setting/$1';
$route['administrator/setting/sosmed'] = 'administrator/sosmed_setting';
$route['administrator/setting/sosmed/add'] = 'administrator/add_sosmed_setting';
$route['administrator/setting/sosmed/(:num)'] = 'administrator/edit_sosmed_setting/$1';
$route['administrator/setting/address'] = 'administrator/address_setting';
$route['administrator/setting/delivery'] = 'administrator/delivery_setting';
$route['administrator/setting/delivery/add'] = 'administrator/add_delivery_setting';
$route['administrator/setting/delivery/(:num)'] = 'administrator/edit_delivery_setting/$1';
$route['administrator/setting/cod'] = 'administrator/cod_setting';
$route['administrator/setting/cod/add'] = 'administrator/add_cod_setting';
$route['administrator/setting/footer'] = 'administrator/footer_setting';
$route['(:any)'] = 'page/index/$1';
