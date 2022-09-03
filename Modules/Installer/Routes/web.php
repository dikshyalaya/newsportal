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


Route::group(['middleware' => ['IsNotInstalledCheck', 'XSS']], function () {

    Route::get('install/', 'InstallerController@index')->name('install'); 

});

Route::group(['middleware' => ['XSS']], function () {

   Route::post('install', 'InstallerController@do_install')->name('install');
   Route::get('final',  'InstallerController@finish')->name('final');

 }); 

