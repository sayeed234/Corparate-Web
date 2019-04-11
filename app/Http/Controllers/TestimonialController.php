<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TestimonialController extends Controller
{
    public function view(){
    	return view('admin.Testimonial.testimonial');
    }
}
