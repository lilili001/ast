<div class="modal fade" id="refund_apply_myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">退款申请</h4>
            </div>
            <div class="modal-body">

                <form class="form-horizontal"  enctype ="multipart/form-data" method="post" action="" id="refund_apply_form" autocomplete="off" novalidate="novalidate">
                    <div class="box-body">

                        <div class="form-group mar-b0">
                            <label for="inputPassword3" class="col-sm-3 control-label">订单金额:</label>
                            <div class="col-sm-9 padding-l0 pad-t7 order_amount"></div>
                        </div>

                        <div class="form-group mar-b0 is-required">
                            <label for="inputPassword3" class="col-sm-3 control-label">我愿意支付卖家：</label>
                            <div class="col-sm-9 padding-l0  pad-t7">
                                <input  type="text" name="like_to_pay_seller" required class="form-control input-sm like-to-pay-seller" placeholder="">
                            </div>
                        </div>

                        <div class="form-group mar-b0 is-required">
                            <label for="inputPassword3" class="col-sm-3 control-label">退款金额：</label>
                            <input type="hidden" name="refund_amount" required>
                            <div class="col-sm-9 padding-l0 refund_amount"> </div>
                        </div>

                        <div class="form-group mar-b0">
                            <label for="inputPassword3" class="col-sm-3 control-label">退款原因：</label>
                            <div class="col-sm-9 padding-l0">
                                <textarea name="refund_reason" class="form-control input-sm" id="" cols="30" rows="2"></textarea>
                            </div>
                        </div>

                        <div class="form-group  mar-t10">
                            <label for="inputPassword3" class="col-sm-3 control-label">上传附件：</label>
                            <div class="col-sm-9 padding-l0">
                                <div class="file_input_wrap">
                                    <div class="upload">点击上传</div>
                                    <input type="file" multiple name="orderfile[]" class="file_input">
                                    <span  class="filenames"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.box-footer -->
                    <!-- /.box-body -->
                    <div class="box-footer modal-footer">
                        <button type="submit" class="btn btn-default ">Cancel</button>
                        <button type="submit" class="btn btn-info pull-right">Save</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>