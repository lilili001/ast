<div class="text-right operator">
    <a href="javascript:;" class="reply-count reply123">Reply</a>
    @if( isset($reply_count) )
        <a href="javascript:;" class="reply-count comment-count">评论个数({{  $reply_count  }})</a>
    @endif
    <span class="thumbs" data-review_id="{{$reviewId}}" data-reply_id="{{$replyId}}" data-item_type="{{$item_type}}">
        <a href="javascript:;"><i class="up"></i></a>
        <a href="javascript:;"><i class="down"></i></a>
    </span>
</div>


<div class="reply-form padding230">
    <form action="">
        <textarea class="form-control w100f" name="review_reply" cols="30" rows="2"></textarea>
        <input type="hidden" name="review_id" value="{{$reviewId}}">
        <input type="hidden" name="to_user_id" value="{{$to_user_id}}">
        <input type="hidden" name="_token" value="{{csrf_token()}}">
        <button class="btn btn-danger pull-right btn-sm mar-t10 comment-act" >评论</button>
    </form>
    <div class="clearfix"></div>
</div>