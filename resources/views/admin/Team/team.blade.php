
@extends('admin.master')
@section('content')
         
<div class="page-content fade-in-up">
{{-- Team heading Modal --}}
<div class="modal fade" id="exampleModalCent" tabindex="-1" role="dialog"
aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
<div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLongTitle">Add Team Heading</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <form enctype="multipart/form-data" method="post">
            <div class="modal-body">
                <div class="row">
                    <div class="col-sm-12 form-group">
                        <label for="Max Value">Write Heading </label>
                        <textarea class="form-control" placeholder="" type="text" name="heading"></textarea> 
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
{{-- Team heading edit Modal --}}
<div class="modal fade" id="exampleModalCen" tabindex="-1" role="dialog"
aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
<div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLongTitle">Edit Team Heading</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <form enctype="multipart/form-data" method="post">
            <div class="modal-body">
                <div class="row">
                    <div class="col-sm-12 form-group">
                        <label for="Max Value">rewrite Heading</label>
                        <textarea class="form-control" placeholder="" type="text" name="heading"></textarea> 
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
{{-- Add Team info  Modal --}}

<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog"
aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
<div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLongTitle">Add Team Info</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <form enctype="multipart/form-data" method="post">
            <div class="modal-body">
                <div class="row">

                    <div class="col-sm-12 form-group">
                        <label for="Max Value">Name</label>
                        <input class="form-control" placeholder="" type="text" name="title">
                    </div>
                    <div class="col-sm-12 form-group">
                        <label for="Max Value">Designation</label>
                        <input class="form-control" placeholder="" type="text" name="designation">
                    </div>
                    <div class="col-sm-12 form-group">
                        <label for="Max Value">Description</label>
                        <textarea class="form-control" placeholder="" type="text" name="discription"></textarea> 
                    </div>
                   
                     <div class="col-sm-12 form-group">
                     	
                  <label> Formal Image<p style="font-size: 10px;">(Size 600X600)</p></label>
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

{{-- Edit Service Modal --}}

<div class="modal fade" id="exampleModalCente" tabindex="-1" role="dialog"
aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
<div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLongTitle">Update Service</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <form enctype="multipart/form-data"  method="post">
            <div class="modal-body">
                <div class="row">
                  <div class="col-sm-12 form-group">
                        <label for="Max Value">Name</label>
                        <input class="form-control" placeholder="" type="text" name="title">
                    </div>
                    <div class="col-sm-12 form-group">
                        <label for="Max Value">Designation</label>
                        <input class="form-control" placeholder="" type="text" name="designation">
                    </div>
                    <div class="col-sm-12 form-group">
                        <label for="Max Value">Description</label>
                        <textarea class="form-control" placeholder="" type="text" name="discription"></textarea> 
                    </div>
                   
                     <div class="col-sm-12 form-group">
                        
                  <label> Formal Image<p style="font-size: 10px;">(Size 600X600)</p></label>
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
                    
                    <button type="button" class="btn btn-warning " data-toggle="modal" data-target="#exampleModalCent"
                            style="margin-right: 60px;">
                    Add Team Heading
                    </button>
                    <div class="ibox-title">Team Member List</div>
                 <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter"
                            style="margin-right: 60px;">
                    Add Team Info
                    </button>    
                </div>
               
                    <br>
            <div class="ibox-body">
                 <div>
                     <table border="1px solid red;">
                        <thead>
                            <tr>
                                <td width="1050px;" height="50px;">Heading</td>

                                <td width="80px;" height="50px;" class="text-center"> 
                                 <button data-toggle="modal" id="deleteslider" data-target="#exampleModalCen"title="Edit" class="btn btn-success" ><a onclick="return confirm('Are you sure to delete this');"></a><i class="fa fa-pencil font-14"></i></button></td>
                             
                            </tr>
                        </thead>
                         
                    </div>
                 <table class="table table-striped table-bordered table-hover table-responsive-sm" id="example-table" cellspacing="0" width="100%">
                    <br>
                        <thead>
                            <tr>
                                <th>SL</th>
                                <th>Name</th>
                                <th>Designation</th>
                                <th>Description</th>
                                <th>Image</th>
                                <th class="text-center">Action</th>
                            </tr>
                        </thead>
                         <td>1</td>
                         <td>2</td>
                         <th>d</th>
                         <td>3</td>
                         <td>4</td>
                           <td class="text-center">
                                    
                                 <button  data-toggle="modal" id="editslider" data-target="modal-title"title="Delete" class="btn btn-danger" ><a  onclick="return confirm('Are you sure to delete this');"></a><i class="fa fa-trash font-14"></i></button>  

                                 <button data-toggle="modal" id="deleteslider" data-target="#exampleModalCente"title="Edit" class="btn btn-success" ><a onclick="return confirm('Are you sure to delete this');"></a><i class="fa fa-pencil font-14"></i></button>  
						                                   
						          </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
        </div>
        
</div>   
@endsection
