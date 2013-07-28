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

Route::get('/', 'BucketController@index');
Route::get('/bucket/standards/{bucket_id}', 'BucketController@standards');
Route::get('/standard/videos/{standard_id}', 'StandardController@videos');

    /*
     * Voting
     */
Route::get('/video/upvote/{video_id}', 'VideoController@upvote');
Route::get('/video/downvote/{video_id}', 'VideoController@downvote');
