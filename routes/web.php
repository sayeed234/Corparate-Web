<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/




//Admin singin and singup Area
Route::get('/admin-login', 'adminloginController@login_form');
Route::post('/admin-login', 'adminloginController@login_form_action');

Route::get('/admin-password-reset', 'adminloginController@admin_password_reset_page');
Route::post('/admin-password-reset', 'adminloginController@admin_password_reset');

Route::get('/admin-reset-code', 'adminloginController@admin_reset_code');
Route::post('/admin-reset-code', 'adminloginController@admin_reset_verify_code');

Route::get('/admin-update-password', 'adminloginController@admin_update_password_page');
Route::post('/admin-update-password', 'adminloginController@admin_update_password');

Route::get('/logout', 'adminloginController@logout');


///Admin Dashboard Page
Route::get('/admin-dashboard', 'HomeController@home')->name('home');

//Master Dashboad page........................................................
//company page....................................................
Route::get('/company', 'CompanyController@view')->name('company');

//About Us page...................................................
Route::get('/about', 'AboutusController@view')->name('about');

//User page.......................................................


// slider Dashboad page ..............................................................
Route::get('/slider', 'SliderController@slider')->name('slide');
Route::post('/slider/add', 'SliderController@add');
Route::get('/slider/update/{id}', 'SliderController@sliderupdate');
Route::get('/slider/delete/{id}','SliderController@delete')->name('delete');

//Feature Dashboad page...............................................................
Route::get('/feature','FeatureController@index')->name('home');


//Testimonial Dashboad Page...........................................................
Route::get('/testimonial','TestimonialController@view')->name('testimonial');


//Service Dashboad page...............................................................
Route::get('/service','ServiceController@view')->name('service');

//Team Dashboad page...............................................................
Route::get('/team','TeamController@view')->name('team');

