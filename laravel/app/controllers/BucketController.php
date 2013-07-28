<?php

    class BucketController extends BaseController {

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

        public function index()
        {

            $buckets = DB::select('select * from buckets ');


            return View::make('buckets',
                array('buckets' => $buckets)
            );

        }


        public function standards($bucket_id)
        {

            $standards = DB::select('select * from standards where bucket_id = ?', array($bucket_id));


            return View::make('standards',
                array('standards' => $standards)
            );

        }

    }