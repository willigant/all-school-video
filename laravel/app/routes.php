<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/

Route::get('/', 'bucket@index');
Route::get('/bucket/standards/{bucket_id}', 'BucketController@standards');
Route::get('/standard/videos/{standard_id}', 'standard@videos');
Route::get('/video/upvote/{video_id}', 'video@upvote');
Route::get('/video/downvote/{video_id}', 'video@downvote');
