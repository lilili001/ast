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
                                <h2>My Address</h2>
                            </div>
                            <div>
                                <div class="row none-margin">
                                    <button type="button" class="btn btn-primary btn-sm pull-right" data-toggle="modal"
                                            data-target=".bs-address-modal-lg">新增
                                    </button>
                                </div>
                                <table class="table border  addressbook clearfix mar-t20" width="100%" cellspacing="0"
                                       cellpadding="0"
                                       border="0">
                                    <thead>
                                    <tr class="ress_tit">
                                        <th width="76" valign="middle" align="center" height="31">First Name</th>
                                        <th width="72" valign="middle" align="center" height="31">Last Name</th>
                                        <th width="100" valign="middle" align="center">Email Address</th>
                                        <th width="67" valign="middle" align="center">Country</th>
                                        <th width="79" valign="middle" align="center">State</th>
                                        <th width="79" valign="middle" align="center">City</th>
                                        <th width="79" valign="middle" align="center">Street</th>
                                        <th width="81" valign="middle" align="center"> Zip Code</th>
                                        <th width="101" valign="middle" align="center">Telephone</th>
                                        <th class="th3" width="71" valign="middle" align="center">Operation</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($data as $item)
                                        <tr>
                                            <td>{{$item['first_name']}}</td>
                                            <td>{{$item['last_name']}}</td>
                                            <td>{{$item['email']}}</td>
                                            <td>{{$item['country']}}</td>
                                            <td>{{$item['state']}}</td>
                                            <td>{{$item['city']}}</td>
                                            <td>{{$item['street']}}</td>
                                            <td>{{$item['zip']}}</td>
                                            <td>{{$item['telephone']}}</td>
                                            <td><a href="javascript:;" data-address_id="{{$item['address_id']}}"
                                                   class="edit">编辑</a> | <a href="javascript:;" class="delete">删除</a>
                                            </td>
                                        </tr>
                                    @endforeach
                                    </tbody>
                                </table>

                                <!-- 地址新增弹窗 -->
                                <div class="modal fade bs-address-modal-lg" tabindex="-1" role="dialog"
                                     aria-labelledby="myLargeModalLabel">
                                    <div class="modal-dialog  " role="document">
                                        <div class="modal-content">
                                            <form class="form-horizontal" method="POST"
                                                  action="{{route('address.store')}}">
                                                {{csrf_field()}}
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal"
                                                            aria-label="Close"><span aria-hidden="true">×</span>
                                                    </button>
                                                    <h4 class="modal-title" id="myLargeModalLabel">新增收货地址</h4>
                                                </div>

                                                <div class="modal-body">
                                                    <div class="form-group {{ $errors->has('email') ? ' has-error' : '' }}">
                                                        <label for="inputEmail3"
                                                               class="col-sm-2 control-label">Email</label>
                                                        <div class="col-sm-10">
                                                            <input name="email" type="email" class="form-control"
                                                                   id="inputEmail3"
                                                                   placeholder="Email" value="{{ old('email')}}">
                                                            {!! $errors->first('email', '<span class="help-block">:message</span>') !!}
                                                        </div>
                                                    </div>

                                                    <div class="form-group {{ $errors->has('first_name') ? ' has-error' : '' }}  ">
                                                        <label for="inputEmail3" class="col-sm-2 control-label">FirstName</label>
                                                        <div class="col-sm-10">
                                                            <input name="first_name" type="text" class="form-control"
                                                                   id="first_name"
                                                                   placeholder="first_name"
                                                                   value="{{ old('first_name')}}">
                                                        </div>
                                                    </div>

                                                    <div class="form-group {{ $errors->has('last_name') ? ' has-error' : '' }}  ">
                                                        <label for="inputEmail3"
                                                               class="col-sm-2 control-label">LastName</label>
                                                        <div class="col-sm-10">
                                                            <input name="last_name" type="text" class="form-control"
                                                                   id="last_name"
                                                                   placeholder="last_name"
                                                                   value="{{ old('last_name')}}">
                                                        </div>
                                                    </div>
                                                    <div class="form-group {{ $errors->has('country') ? ' has-error' : '' }}  ">
                                                        <label for="inputEmail3"
                                                               class="col-sm-2 control-label">Country</label>
                                                        <div class="col-sm-10">
                                                            <input name="country" type="text" class="form-control"
                                                                   id="country"
                                                                   placeholder="country" value="{{ old('country')}}">
                                                            {!! $errors->first('country', '<span class="help-block">:message</span>') !!}
                                                        </div>
                                                    </div>

                                                    <div class="form-group {{ $errors->has('state') ? ' has-error' : '' }}  ">
                                                        <label for="inputEmail3"
                                                               class="col-sm-2 control-label">State</label>
                                                        <div class="col-sm-10">
                                                            <input name="state" type="text" class="form-control"
                                                                   id="state"
                                                                   placeholder="state" value="{{ old('state')}}">
                                                            {!! $errors->first('state', '<span class="help-block">:message</span>') !!}
                                                        </div>
                                                    </div>

                                                    <div class="form-group {{ $errors->has('city') ? ' has-error' : '' }}  ">
                                                        <label for="inputEmail3"
                                                               class="col-sm-2 control-label">City</label>
                                                        <div class="col-sm-10">
                                                            <input name="city" type="text" class="form-control"
                                                                   id="city"
                                                                   placeholder="city" value="{{ old('city')}}">
                                                            {!! $errors->first('city', '<span class="help-block">:message</span>') !!}
                                                        </div>
                                                    </div>

                                                    <div class="form-group {{ $errors->has('street') ? ' has-error' : '' }}  ">
                                                        <label for="inputEmail3"
                                                               class="col-sm-2 control-label">Street</label>
                                                        <div class="col-sm-10">
                                                            <input name="street" type="text" class="form-control"
                                                                   id="street"
                                                                   placeholder="street" value="{{ old('street')}}">
                                                            {!! $errors->first('street', '<span class="help-block">:message</span>') !!}
                                                        </div>
                                                    </div>

                                                    <div class="form-group {{ $errors->has('zip') ? ' has-error' : '' }}  ">
                                                        <label for="inputEmail3"
                                                               class="col-sm-2 control-label">ZipCode</label>
                                                        <div class="col-sm-10">
                                                            <input name="zip" type="text" class="form-control" id="zip"
                                                                   placeholder="zip" value="{{ old('zip')}}">
                                                        </div>
                                                    </div>

                                                    <div class="form-group {{ $errors->has('telephone') ? ' has-error' : '' }}">
                                                        <label for="inputEmail3"
                                                               class="col-sm-2 control-label">Phone</label>
                                                        <div class="col-sm-10">
                                                            <input name="telephone" type="text" class="form-control"
                                                                   id="telephone"
                                                                   placeholder="telephone"
                                                                   value="{{ old('telephone')}}">
                                                            {!! $errors->first('telephone', '<span class="help-block">:message</span>') !!}
                                                        </div>
                                                    </div>


                                                    <div class="form-group {{ $errors->has('is_default') ? ' has-error' : '' }}  ">
                                                        <div class="col-sm-offset-2 col-sm-10">
                                                            <div class="checkbox">
                                                                <label>
                                                                    <input id="is_default" name="is_default"
                                                                           type="checkbox"
                                                                           {{  !empty( old('is_default') ) &&  old('is_default') == 1 ? 'checked' : '' }} value="{{ !empty( old('is_default') )  &&  old('is_default')  ? old('is_default')  : 0  }}">
                                                                    Is Default
                                                                    {!! $errors->first('is_default', '<span class="help-block">:message</span>') !!}
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    @if(count($errors)>0)
                                                        @foreach($errors->all() as $value  )
                                                            {{$value}}
                                                        @endforeach
                                                    @endif

                                                </div>

                                                <div class="modal-footer">
                                                    <button class="btn btn-default btn-sm" data-dismiss="modal">取消
                                                    </button>
                                                    <button class="btn btn-primary  btn-sm" type="submit" id="confirm">
                                                        确定
                                                    </button>
                                                </div>
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
            $('#is_default').change(function () {
                if ($(this).prop('checked')) {
                    this.value = 1
                } else {
                    this.value = 0;
                }
            });

            $('.edit').click(function () {
                var addressId = $(this).data('address_id');
                $.get('/address/' + addressId + '/edit').then((res) => {
                    var data = res[0];
                    $.each(data, function (key, value) {
                        $('form [name="' + key + '"]').val(value);
                    });

                    if ($('form [name="is_default"]').val() == 1) {
                        $('[name="is_default"]').attr('checked', true);
                    }

                    $('.bs-address-modal-lg').modal('show');

                    $('#confirm').click(function () {

                        $.ajax({
                            url: '/address/' + addressId,
                            type: 'PATCH',
                            success:function(res){

                            }
                        });

                        return false;
                    })

                });
            })

            $('.bs-address-modal-lg').on('hidden.bs.modal', function (e) {
                $('.modal-body input').val('');
            })

        })
    </script>
@stop