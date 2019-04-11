<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TeamController extends Controller
{
    public function view(){
    	return view('admin.Team.team');
    }
}
