<div class="notifications {{$notification->unread() ? 'unread' : '' }}">
    <?php echo  $notification->unread() ? "【未读】" : "【已读】" ?>
        <a href="/notifications/{{$notification->id}}">{{ getUser($notification->notifiable_id)->first_name }}回复了你的评论</a>
</div>