@extends('layouts.master')

@section('content')
    <div class="main container two-columns-left">
        <div class="row">
            <div class="col-md-2">
                @include('usercenter.partials.sidebar')
            </div>
            <div class="col-md-10">
                <div class="col-main account_center">
                    <div class="std">
                        <div style="margin:4px 0 0">
                            <div class="page-title">
                                <div class="row">
                                    <div class="col-md-6">
                                        <h2 class="">My Address</h2>
                                    </div>
                                    <div class="col-md-6">
                                        <button type="button" class="btn btn-primary btn-sm pull-right" data-toggle="modal"
                                                data-target="#createModal">新增
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <table class=" data-table table table-bordered table-hover mar-t10" width="100%" cellspacing="0"
                                       cellpadding="0"
                                       border="0">
                                    <thead>
                                    <tr class="ress_tit">
                                        <th width="76" valign="middle" align="center" height="31">First Name</th>
                                        <th width="72" valign="middle" align="center" height="31">Last Name</th>
                                        <th width="100" valign="middle" align="center">Email Address</th>
                                        <th width="79" valign="middle" align="center">Street</th>
                                        <th width="81" valign="middle" align="center"> Zip Code</th>
                                        <th width="101" valign="middle" align="center">Telephone</th>
                                        <th width="80" valign="middle" align="center">Is Default</th>
                                        <th class="th3" width="100" valign="middle" align="center">Operation</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($data as $item)
                                        <tr>
                                            <td>{{$item['first_name']}}</td>
                                            <td>{{$item['last_name']}}</td>
                                            <td>{{$item['email']}}</td>
                                            <td>{{$item['street']}}</td>
                                            <td>{{$item['zip']}}</td>
                                            <td>{{$item['telephone']}}</td>
                                            <td>{{$item['is_default']  ? 'yes' : 'no' }}</td>
                                            <td data-address_id="{{$item['id']}}">
                                                <a href="javascript:;" class="edit">编辑</a> |
                                                <a href="javascript:;" class="delete">删除</a> |
                                                <a href="javascript:;" class="setDefault">设为默认</a>
                                            </td>
                                        </tr>
                                    @endforeach
                                    </tbody>
                                </table>

                                <!-- 地址新增弹窗 -->
                                <div id="createModal" class="modal fade bs-address-modal-lg" tabindex="-1" role="dialog"
                                     aria-labelledby="myLargeModalLabel">
                                    <div class="modal-dialog  " role="document">
                                        <div class="modal-content">
                                            <form class="form-horizontal" method="POST"
                                                  action="{{route('address.store')}}">
                                                @include('usercenter.partials.addressform')
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <!-- 地址编辑弹窗 -->
                                <div id="editModal" class="modal fade bs-address-modal-lg" tabindex="-1" role="dialog"
                                     aria-labelledby="myLargeModalLabel">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <form class="form-horizontal" method="POST">
                                                <input name="_method" type="hidden" value="PUT"/>
                                                @include('usercenter.partials.addressform')
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="clear"></div>
    </div>
@stop

@section('scripts')
    <script>
        var errors = "{{ count($errors) }}";
        if (Number(errors) > 0) {
            $('.bs-address-modal-lg').modal('show')
        }
        $(function () {
            $('.is_default').change(function () {
                if ($(this).prop('checked')) {
                    this.value = 1
                } else {
                    this.value = 0;
                }
            });
            $('.edit').click(function () {
                var addressId = $(this).parent('td').data('address_id');
                $('#editModal form').attr('action',route('address.update',{'address':addressId}) );
                $.get('/address/' + addressId + '/edit').then((res) => {
                    var data = res[0];
                    $.each(data, function (key, value) {
                        $('form [name="' + key + '"]').val(value);
                    });
                    if ($('form [name="is_default"]').val() == 1) {
                        $('[name="is_default"]').attr('checked', true);
                    }
                    $('#editModal').modal('show');
                });
            });
            $('.delete').click(function(){
                var addressId = $(this).parent('td').data('address_id');
                $.ajax({
                    type:'post',
                    url:route('address.destroy',{address:addressId}),
                    data:{
                        _method:'DELETE',
                        _token:"{{csrf_token()}}"
                    },
                    success:function(res){
                       if(res.code == 0) location.reload()
                    }
                })
            });

            $('.setDefault').click(function(){
                var addressId = $(this).parent('td').data('address_id');
                if($(this).parent('td').prev().text() == 'yes'){
                    alert('已经是默认');
                    return;
                }
                $.ajax({
                    type:'post',
                    url:route('address.setDefault',{address:addressId}),
                    data:{
                        _token:"{{csrf_token()}}"
                    },
                    success:function(res){
                       if(res.code == 0) location.reload()
                    }
                })
            });

            $('.modal').on('hidden.bs.modal', function (e) {
                $('.modal-body input[type!="hidden"]').val('');
            })
        })
    </script>
@stop