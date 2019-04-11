<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CompanyController extends Controller
{
    public function view(){
    	return view('admin.mastersetup.company');
    }
}
