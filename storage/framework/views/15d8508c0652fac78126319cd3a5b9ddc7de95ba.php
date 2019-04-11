<?php $__env->startSection('content'); ?>
<style>
        @media  print{
            .header{
                display: none;
            }
            .page-footer{
                display: none;
            }
            .page-sidebar{
                display: none;
            }
            .page-content{
                margin: 0px;
                padding: 0px;
            }
            .content-wrapper{
                margin: 0px;
                padding: 0px;
            }
        }
    </style>

<div class="page-content fade-in-up">
                <div class="container text-center">
                    <?php $__currentLoopData = $companydetails; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <h4><?php echo e($item->company_name); ?></h4>
                <h6>Adress: <?php echo e($item->company_address); ?></h6>
                <h6>Phone:<?php echo e($item->company_mobile); ?> &nbsp Email:<?php echo e($item->company_email); ?></h6>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                <br>
                                <br>
                                <h5><u> Voucher Report </u> </h5>
                                
                                
                </div>
                <table class="table table-striped no-margin no-border table-invoice">

                                <tbody>
                                    <tr>
                                        <td>
                                            <div><p><strong>Transection Voucher Number</strong>  &nbsp <?php echo e($tradetails->t_voucher); ?></p></div>
                                        </td>
                                        <td>
                                        <div><p><strong>Date</strong>  &nbsp <?php echo e($tradetails->t_date); ?></p></div>
                                        </td>
                                       
                                        
                                    </tr>
                                    
                                    <tr>           
                                        
                                                
                                                <td>
                                                        <?php $__currentLoopData = $acheaddetail; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $it): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                    <?php if($tradetails->t_debit_head==$it->id): ?>
                                                    
                                                    <div><p><strong>Debit Head</strong>  &nbsp <?php echo e($it->ac_head_name); ?></p></div>
                                                    <?php endif; ?>
                                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                </td>
                                                <td>
                                                        <?php $__currentLoopData = $acheaddetail; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $it): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                    <?php if($tradetails->t_credit_head==$it->id): ?>
                                                    
                                                    <div><p><strong>Credit Head</strong>  &nbsp <?php echo e($it->ac_head_name); ?></p></div>
                                                    <?php endif; ?>
                                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                </td>
                                               
                                                

                                                
                                                
                                                

                                               
                                                
                                   </tr>
                                    
                                   <tr>
                                                <td>
                                                    <div><p><strong>Transeciton Description</strong>  &nbsp <?php echo e($tradetails->t_des); ?></p></div>
                                                </td>
                                                <td>
                                                        <div><p><strong>Transeciton Amount</strong>  &nbsp <?php echo e($tradetails->t_amount); ?></p></div>
                                                    </td>
                                 
                                              
                                               
                                                
                                   </tr>
                                   <tr>
                                                <td>
                                                                <div><p><strong>Enter User</strong>  &nbsp <?php echo e($tradetails->user_id); ?></p></div>
                                                                </td>
                                              
                                               
                                                
                                   </tr>
                                </tbody>
                            </table>
                            <br>
                            <div class="text-right">
                                <a class="btn btn-info printPage" type="button"  style="margin-bottom: 50px;"><i
                                            class="fa fa-print" ></i> Print
                                </a>
                            </div>
                    <div>Printing Date and Time:<?php date_default_timezone_set("Asia/Dhaka"); echo date('d-m-Y h:i:s A');?>
                    </div>              

</div>
<script>
        $(document).ready(function () {
            $('.printPage').on('click',function () {
                $(this).hide();
                window.print();
                window.history.back();
            });
        });
</script>
    
<?php $__env->stopSection(); ?>

<?php echo $__env->make('admin.master', \Illuminate\Support\Arr::except(get_defined_vars(), array('__data', '__path')))->render(); ?>