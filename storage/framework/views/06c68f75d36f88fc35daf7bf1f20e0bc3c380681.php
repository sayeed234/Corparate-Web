<?php $__env->startSection('content'); ?>
         
<div class="page-content fade-in-up">


<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog"
aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
<div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLongTitle">Add Testimonial</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <form enctype="multipart/form-data" method="post">
            <div class="modal-body">
                <div class="row">

                    <div class="col-sm-12 form-group">
                        <label for="Max Value">Name</label>
                        <input class="form-control" placeholder="" type="text" name="name">
                    </div>
                    <div class="col-sm-6 form-group">
                        <label for="Max Value">Designation</label>
                        <input class="form-control" placeholder="" type="text" name="designation">
                    </div>
                    <div class="col-sm-6 form-group">
                        <label for="Max Value">Workplace</label>
                        <input class="form-control" placeholder="" type="text" name="workplace">
                    </div>
                    <div class="col-sm-12 form-group">
                        <label for="Max Value">Description</label>
                        <textarea class="form-control" placeholder="" type="text" name="discription"></textarea> 
                    </div>               
                     <div class="col-sm-12 form-group">
                     	
                  <label>Formal Photo <p style="font-size: 10px;">(Size 480X480)</p></label>
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



<div class="modal fade" id="exampleModalCente" tabindex="-1" role="dialog"
aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
<div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLongTitle">Update Feature</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <form enctype="multipart/form-data"  method="post">
            <div class="modal-body">
                <div class="row">
<div class="col-sm-12 form-group">
                        <label for="Max Value">Name</label>
                        <input class="form-control" placeholder="" type="text" name="name">
                    </div>
                    <div class="col-sm-6 form-group">
                        <label for="Max Value">Designation</label>
                        <input class="form-control" placeholder="" type="text" name="designation">
                    </div>
                    <div class="col-sm-6 form-group">
                        <label for="Max Value">Workplace</label>
                        <input class="form-control" placeholder="" type="text" name="workplace">
                    </div>
                    <div class="col-sm-12 form-group">
                        <label for="Max Value">Description</label>
                        <textarea class="form-control" placeholder="" type="text" name="discription"></textarea> 
                    </div>               
                     <div class="col-sm-12 form-group">
                        
                  <label>Formal Photo <p style="font-size: 10px;">(Size 480X480)</p></label>
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



    <div class="ibox">
            <div class="ibox-head">
                    <div class="ibox-title">Feature List</div>
                 <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter"
                            style="margin-right: 60px;">
                    Add Testimoinal
                    </button>
                </div>
            <div class="ibox-body">
 <table class="table table-striped table-bordered table-hover table-responsive-sm" id="example-table" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th>SL</th>
                                <th>Title</th>
                                <th>Description</th>
                                <th>Image</th>
                                <th class="text-center">Action</th>
                            </tr>
                        </thead>
                         <td>1</td>
                         <td>2</td>
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
<?php $__env->stopSection(); ?>
<?php echo $__env->make('admin.master', \Illuminate\Support\Arr::except(get_defined_vars(), array('__data', '__path')))->render(); ?>