<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\slider;

//add slider.........................................................
class SliderController extends Controller
{
      public function slider(){
      	   $slider=slider::all();
           return view('admin.slider.slider',['slider'=>$slider]);
      }


public function add(Request $request){

	
	 	$request->validate([
     'image'=>'required',
	]);
    $image=$request->file('image');
    $name=$image->getClientOriginalName();
    $uploadPath='public/image/';
    $image->move($uploadPath,$name);
    $imageUrl=$uploadPath.$name;
    $this->img($request,$imageUrl);
  
    return redirect('/slider')->with('success',' Slider Delete successfully');
}
      public function img($request,$imageUrl){
      	     $slider=new slider();
              $slider->title=$request->title;
              $slider->discription=$request->discription;
              $slider->image=$imageUrl;
              $slider->save();
           

      }
      //Edit slider...................................................................






      //delete....................................................................
       public function delete($id){
		$slider=slider::find($id);
		$slider->delete();
		 return redirect('/slider')->with('status',' Slider Delete successfully');
	
	}
}
