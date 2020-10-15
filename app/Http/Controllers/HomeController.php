<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use Illuminate\Http\Request;

use App\Booking;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $positions = array(
            array(533, 68), // Number 1: Amministrazione - A
            array(712, 57), // Number 2: Amministrazione - B
            array(712, 148), // Number 3: Amministrazione - C
            array(589, 451), // Number 4: Amministrazione - Sala stampante
            array(230, 319), // Number 5: Stanza Valentina La Paglia
            array(715, 221), // Number 6: Sala Briefing
        );

        return view('home', compact('positions'));
    }

    /**
     * //!
     */
    public function show()
    {
        $date = Input::get('time_from', '');

        $daily_bookings = DB::table('bookings')
                                ->join('rooms', 'bookings.room_id', '=', 'rooms.id')
                                ->select(DB::raw('*'))
                                ->where('time_from', '=', $date)
                                ->get();

        //!
        $positions = array(
            array(533, 68), // Number 1: Amministrazione - A
            array(712, 57), // Number 2: Amministrazione - B
            array(712, 148), // Number 3: Amministrazione - C
            array(589, 451), // Number 4: Amministrazione - Sala stampante
            array(230, 319), // Number 5: Stanza Valentina La Paglia
            array(715, 221), // Number 6: Sala Briefing
        );
        $checks = array(
            "Amministrazione - A" => array(574, 82, false), // Number 1 - Symbol
            "Amministrazione - B" => array(630, 79, false), // Number 2 - Symbol
            "Amministrazione - C" => array(622, 172, false), // Number 3 - Symbol
            "Amministrazione - Sala stampante" => array(577, 543, false), // Number 4 - Symbol
            "Stanza Valentina La Paglia" => array(294, 321, false), // Number 5 - Symbol
            "Sala Briefing" => array(730, 250, false), // Number 6 - Symbol
        );

        foreach($daily_bookings as $booking) {
            $key = $booking->room_number;

            $checks[$key][2] = true;
        }

        //dd($checks);

        return view('home', compact('positions', 'checks'));
    }
}
