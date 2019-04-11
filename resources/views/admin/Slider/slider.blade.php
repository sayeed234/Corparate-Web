@extends('admin.master')
@section('content')
         
<div class="page-content fade-in-up">
{{-- Add Sliders Modal --}}

<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog"
aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
<div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLongTitle">Add Slider</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <form enctype="multipart/form-data" action="{{url('/slider/add')}}" method="post">
             @csrf
            <div class="modal-body">
                <div class="row">

                    <div class="col-sm-12 form-group">
                        <label for="Max Value">Title</label>
                        <input class="form-control" placeholder="maximum 100 word" type="text" name="title">
                    </div>
                    <div class="col-sm-12 form-group">
                        <label for="Max Value">Driscription</label>
                        <textarea class="form-control" placeholder="maximum 200 word" type="text" name="discription"></textarea> 
                    </div>
                   
                     <div class="col-sm-12 form-group">
                     	
                  <label>Slider Photo(Size 480X1400)</label>
                  <input class="form-control" type="file"  name="image">
              </div>
            


                </div>
            </div>

            <div class="modal-footer">
                <button type="reset" class="btn btn-default" >Clear</button>
                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
        </form>
    </div>
</div>
</div>

{{-- Edit slider Modal --}}

<div class="modal fade" id="exampleModalCente" tabindex="-1" role="dialog"
aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
<div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLongTitle">Update Slider</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <form enctype="multipart/form-data"  method="post">
            <div class="modal-body">
                <div class="row">

                    <div class="col-sm-12 form-group">
                        <label for="Max Value">Title</label>
                        <input class="form-control" placeholder="maximum 100 word" type="text" name="title">
                    </div>
                    <div class="col-sm-12 form-group">
                        <label for="Max Value">Driscription</label>
                        <textarea class="form-control" placeholder="maximum 200 word" type="text" name="discription"></textarea> 
                    </div>
                   
                     <div class="col-sm-12 form-group">
                     	
                  <label>Slider Photo(Size 480X1400)</label>
                  <input class="form-control" type="file"  name="image">
              </div>
                </div>
            </div>

            <div class="modal-footer">
                <button type="reset" class="btn btn-default" >Clear</button>
                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Update</button>
            </div>
        </form>
    </div>
</div>
</div>


{{--Table Start--}}
    <div class="ibox">
            <div class="ibox-head">
                    <div class="ibox-title">Slider List</div>
                    @foreach($errors->all() as $error)
                         <div class="alert alert-warning alert-dismissible fade show" role="alert">
					  <strong>{{$error}}</strong>Atlest Image Added.
					  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
					    <span aria-hidden="true">&times;</span>
					  </button>
					</div>
                     	@endforeach
                     	@if (session('status'))
			            <div class="alert alert-dismissible alert-success">
			              <button type="button" class="close" data-dismiss="alert">×</button>
			              <strong>Slider Delete successfully</strong>
			            </div>
			        @endif

                     	@if (session('success'))
			            <div class="alert alert-dismissible alert-success">
			              <button type="button" class="close" data-dismiss="alert">×</button>
			              <strong>Slider Add successfully</strong>
			            </div>
			        @endif
                   <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter"
                            style="margin-right: 60px;">
                    Add Sliders
                    </button>
                </div>
            <div class="ibox-body">
                    <table class="table table-striped table-bordered table-hover table-responsive-sm" id="example-table" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th>SL</th>
                                <th>Title</th>
                                <th>Discription</th>
                                <th>Image</th>
                                <th class="text-center">Action</th>
                            </tr>
                            <?php $id=1;?>
                            @foreach ($slider as $slider)
                        </thead>
                         <td>{{$id++}}</td>
                         <td>{{$slider->title}}</td>
                         <td>{{$slider->discription}}</td>
                         <td><img src="{{asset($slider->image)}}" height="80px" width="150px"></td>
                           <td class="text-center">
                                    
                                 <button  data-toggle="modal" id="editslider" data-target="modal-title"title="Delete" class="btn btn-danger" ><a href="{{ url('/slider/delete/'.$slider->id) }}" onclick="return confirm('Are you sure to delete this');"><i class="fa fa-trash font-14"></i></a></button>  

                                 <button data-toggle="modal" id="deleteslider" data-target="#exampleModalCente"title="Edit" class="btn btn-success" ><a href="{{ url('/slider/delete/'.$slider->id) }}" onclick="return confirm('Are you sure to delete this');"></a><i class="fa fa-pencil font-14"></i></button>  
						                                   
						          </td>
                            </tr>
        
                 
        
                        </tbody>
                        @endforeach
                    </table>
                </div>
        </div>
        
</div>   
@endsection
