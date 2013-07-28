<?php

    class StandardController extends BaseController
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

        public function videos($standard_id)
        {

            $standard = DB::select('select * from standards where id = ?', array($standard_id));
            $standard = $standard[0];

            $videos = DB::select(
                'select * from videos
                 where standard_id = ?'
                , array($standard_id));

            return View::make('videos',
                array(
                     'standard' => $standard,
                     'videos'   => $videos
                )
            );

        }

    }
