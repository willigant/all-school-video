<?php

    class VideoController extends BaseController
    {

        /*
        |--------------------------------------------------------------------------
        | Default Home Controller
        |--------------------------------------------------------------------------
        |
        | You may wish to use controllers instead of, or in addition to, Closure
        | based routes. That's great! Here is an example controller method to
        | get you started. To route to this controller, just add the route:
        |
        |	Route::get('/', 'HomeController@showWelcome');
        |
        */

        public function upvote($video_id)
        {

            $result = DB::select('
                select standard_id from videos where id = ?
            ', array($video_id));

            DB::insert('insert into votes (video_id, value) values (?, ?)', array($video_id, 1));
            return Redirect::to('/standard/videos/'.$result[0]->standard_id);

        }

        public function downvote($video_id)
        {

            $result = DB::select('
                select standard_id from videos where id = ?
            ', array($video_id));

            DB::insert('insert into votes (video_id, value) values (?, ?)', array($video_id, -1));
            return Redirect::to('/standard/videos/'.$result[0]->standard_id);

        }

    }