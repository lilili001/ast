@extends('layouts.master')

@section('content-header')
    <h1>
        {{ trans('product::products.title.edit product') }}
    </h1>
    <ol class="breadcrumb">
        <li><a href="{{ route('dashboard.index') }}"><i class="fa fa-dashboard"></i> {{ trans('core::core.breadcrumb.home') }}</a></li>
        <li><a href="{{ route('admin.product.product.index') }}">{{ trans('product::products.title.products') }}</a></li>
        <li class="active">{{ trans('product::products.title.edit product') }}</li>
    </ol>
@stop

@section('content')
    <ul id="myTab" class="nav nav-tabs">
        <li class="active">
            <a href="#base" data-toggle="tab">
                基础信息
            </a>
        </li>
        <li><a href="#sku" data-toggle="tab">sku</a></li>
        <li><a href="#images" data-toggle="tab">images</a></li>
    </ul>

    <div id="myTabContent" class="tab-content">
        <div class="tab-pane fade in active" id="base">
            <div class="col-md-10" style="margin-top: 20px;">
                    {{--main content start--}}
                    {!! Form::open(['route' => ['admin.product.product.update', $product->id], 'method' => 'put']) !!}
                    <div class="row">
                        <div class="col-md-12">
                            <div class="nav-tabs-custom">
                                @include('partials.form-tab-headers')
                                <div class="tab-content">
                                    <?php $i = 0; ?>
                                    @foreach (LaravelLocalization::getSupportedLocales() as $locale => $language)
                                        <?php $i++; ?>
                                        <div class="tab-pane {{ locale() == $locale ? 'active' : '' }}" id="tab_{{ $i }}">
                                            @include('product::admin.products.partials.edit-fields', ['lang' => $locale])
                                        </div>
                                    @endforeach
                                        {{--@mediaSingle('profile_image', $product)--}}

                                    <div class="box-footer">
                                        <button type="submit" class="btn btn-primary btn-flat">{{ trans('core::core.button.update') }}</button>
                                        <a class="btn btn-danger pull-right btn-flat" href="{{ route('admin.product.product.index')}}"><i class="fa fa-times"></i> {{ trans('core::core.button.cancel') }}</a>
                                    </div>
                                </div>
                            </div> {{-- end nav-tabs-custom --}}
                        </div>
                    </div>

                    {!! Form::close() !!}
                    {{--main content end--}}
            </div>
        </div>
        <div class="tab-pane fade" id="sku">
             @include('product::admin.products.partials.sku')
        </div>
        <div class="tab-pane fade" id="images">
            <p>jMeter 是一款开源的测试软件。它是 100% 纯 Java 应用程序，用于负载和性能测试。</p>
        </div>
    </div>
@stop

@section('footer')
    <a data-toggle="modal" data-target="#keyboardShortcutsModal"><i class="fa fa-keyboard-o"></i></a> &nbsp;
@stop
@section('shortcuts')
    <dl class="dl-horizontal">
        <dt><code>b</code></dt>
        <dd>{{ trans('core::core.back to index') }}</dd>
    </dl>
@stop

@push('js-stack')

    <script type="text/javascript">
        $( document ).ready(function() {
            $(document).keypressAction({
                actions: [
                    { key: 'b', route: "<?= route('admin.product.product.index') ?>" }
                ]
            });
        });
    </script>
    <script>
        $( document ).ready(function() {
            $('input[type="checkbox"].flat-blue, input[type="radio"].flat-blue').iCheck({
                checkboxClass: 'icheckbox_flat-blue',
                radioClass: 'iradio_flat-blue'
            });
        });
    </script>
@endpush
