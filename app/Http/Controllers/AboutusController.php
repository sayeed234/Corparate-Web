<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AboutusController extends Controller
{
    public function view(){
    	return view('admin.mastersetup.about');
    }
}
