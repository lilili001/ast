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

    <div class="form-group {{ $errors->has('city_label') ? ' has-error' : '' }}  ">
        <label for="inputEmail3"
               class="col-sm-2 control-label">City</label>
        <div class="col-sm-10">
            <input name="city_label" type="text" class="form-control"
                   id="city"
                   placeholder="city" value="{{ old('city')}}">
            {!! $errors->first('city_label', '<span class="help-block">:message</span>') !!}
        </div>
    </div>

    <div class="form-group {{ $errors->has('state_label') ? ' has-error' : '' }}  ">
        <label for="inputEmail3"
               class="col-sm-2 control-label">State</label>
        <div class="col-sm-10">
            <input type="text" name="state_label" id="state" class="form-control" value="{{ old('state') }}" placeholder="state">
            {!! $errors->first('state_label', '<span class="help-block">:message</span>') !!}
        </div>
    </div>

    <div class="form-group {{ $errors->has('country') ? ' has-error' : '' }}  ">
        <label for="inputEmail3"
               class="col-sm-2 control-label">Country</label>
        <div class="col-sm-10">
            <select class="form-control"  placeholder="country" name="country" value="{{ old('country')}}" id="country">
                @foreach( $all_countries as $country )
                <option data-val="{{ $country['name_en']  }}" value="{{$country['id']}}"> {{ $country['name_en']  }} </option>
                @endforeach
            </select>
            {!! $errors->first('country', '<span class="help-block">:message</span>') !!}
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
                    <input class="is_default" name="is_default"
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