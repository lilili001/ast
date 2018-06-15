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
                                <h2>评论订单：{{$order}} </h2>
                            </div>

                            @if (Session::has('order_complete'))
                                <div class="alert alert-success">
                                    {{Session::get('order_complete')}}
                                </div>
                            @endif
                        {{--********************************review start**********************--}}

                            <form role="form" method="POST" action="{{route('frontend.order.review_save',['order'=>$order])}}" enctype="multipart/form-data">

                                <input type="hidden" name="_token" value="{{csrf_token()}}">

                                @if( !empty($products) )
                                    <?php $k = 0; ?>
                                    @foreach(  ($products) as $product )

                                        @if($loop->first)
                                        @else
                                            <hr>
                                        @endif

                                        <input type="hidden" name="review[{{$k}}][goods_id]" value="{{$product->item_id}}">
                                        <input type="hidden" name="review[{{$k}}][goods_options]" value="{{$product->options}}">

                                      <div class="box-body product">

                                            <div class="media form-group">
                                              <div class="media-left">
                                                <a href="{{$product->slug}}">
                                                  <img class="media-object" src="{{ $product->pic_path  }}" alt="...">
                                                </a>
                                              </div>
                                              <div class="media-body">
                                                <h4 class="media-heading">{{$product->title}}</h4>
                                                  <div>
                                                      <?php
                                                          $i = 0;
                                                          $options = json_decode( $product->options );
                                                      ?>
                                                      @foreach(  $options->selectedItemLocale as  $key=>$option )

                                                              @if($loop->first)
                                                              @else
                                                                   |
                                                               @endif

                                                          <span>{{ $key .':'. $option  }}</span>

                                                      @endforeach
                                                  </div>
                                              </div>
                                            </div>
                                          <div class="form-group">
                                              <input type="hidden" name="review[{{$k}}][goods_score]" value="5">
                                               <div ><label for="">Rating: </label><span id="star-service" data-score="5"></span></div>
                                          </div>

                                          <div class="form-group">
                                                <label for="exampleInputEmail1">Review Content:</label>
                                                <textarea name="review[{{$k}}][content]" class="form-control w100f" id="" cols="30"  rows="4"></textarea>
                                          </div>

                                          <div class="form-group">
                                              <label for="exampleInputFile">File input</label>
                                              <input name="appraise_img_path[{{$k}}][]" multiple type="file" >
                                          </div>

                                      </div>
                                        <?php $k++; ?>
                                    @endforeach
                                  @endif
                                  <!-- /.box-body -->

                                  <div class="box-footer">
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                  </div>
                            </form>
                            {{--********************************review end**************************--}}

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="clear"></div>
    </div>
@stop
@push('js-stack')
    <script src="{{mix('js/lib.js')}}"></script>
    <script>
       $(function(){
           $('#star-service , #star-shipping , .quanlity').raty({
               score: function() {
                   return $(this).attr('data-score');
               },
               click: function(score, evt) {
                   $(this).parents('.product').find('[name="review[$k][\'goods_score\']"]').val(score);
                   //alert('ID: ' + $(this).attr('id') + "\nscore: " + score + "\nevent: " + evt);
               },

               starOff:'{{Theme::url('images/star-off.png')}}',
               starOn:'{{Theme::url('images/star-on.png')}}',
               starHalf:'{{Theme::url('images/star-half.png')}}',
           });
       });
    </script>
@endpush