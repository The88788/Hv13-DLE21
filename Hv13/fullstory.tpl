
<div class="card mb-5 ">
   <div class="card-body">
      [not-group=5]
            <div class="dropdown float-right">
               <button class="btn btn-sm btn-light dropdown-toggle" type="button" id="story-actions-{news-id}" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
               <span aria-hidden="true">⋯</span><span class="sr-only">Действия с публикацией</span>
               </button>
               <div class="dropdown-menu dropdown-menu-right" aria-labelledby="story-actions-{news-id}" style="font-size: 90%;">
                  [add-favorites]
                  <span class="dropdown-item">Добавить в закладки</span>
                  [/add-favorites]
                  [del-favorites]
                  <span class="dropdown-item">Удалить из закладок</span>
                  [/del-favorites]
            [group=1,2,3]
            <a class="dropdown-item" href="{THEME}/../../admin.php?mod=editnews&action=editnews&id={news-id}" target="_blank">Редактировать</a>
            <a class="dropdown-item" onclick="ajax_prep_for_edit('{news-id}', 'full'); return false;" href="#">Быстрое редактирование</a>
            [/group]
                  [complaint]
                  <span class="dropdown-item">Пожаловаться</span>
                  [/complaint]
               </div>
            </div>
      [/not-group]
      <h1 class="text-dark mb-0">[fixed]<span class="badge badge-warning"><i class="fa fa-angle-double-up" aria-hidden="true"></i></span>[/fixed] {title}</h1>      
	  <p class="auth mt-1 mb-5" style="font-size: 13px;opacity: 0.7;"><i class="icon-puzzle"></i> {link-category}</p>	  	  
      [xfgiven_poster]<img class="article-cover" src="[xfvalue_image_url_poster]" alt="{title}">[/xfgiven_poster]
      {full-story} [pages]<br>{pages}[/pages] [poll]{poll}[/poll]
      [edit-date]
      <div class="alert alert-warning mb-0 mt-3 p-2 pl-3 pr-3 f90" role="alert">
         Новость отредактировал: <b>{editor}</b> - {edit-date}<br>
         [edit-reason]Причина: <i>{edit-reason}</i>[/edit-reason]
      </div>
      [/edit-date]
   </div>  
   <div class="card-footer">
      <ul class="list-inline m-0 text-muted isize">
          <li class="list-inline-item auth f90">Автор: {author}</li>
          <li class="list-inline-item float-right"><small>Дата: {date=d.m.Y}</small></li>
          <li class="list-inline-item ml-3" style="color: #bcc3cc;">Просмотров: {views}</li>
          <li class="list-inline-item mr-0" style="color: #bcc3cc;">Комментариев: {comments-num}</li> 
          <li class="list-inline-item float-right">
            [rating][rating-type-1]{rating}[/rating-type-1][rating-type-2][rating-plus]<span class="vote-action">♥ {rating}</span>[/rating-plus][/rating-type-2][rating-type-3][rating-plus]<span class="vote-action">+</span>[/rating-plus] {rating} [rating-minus]<span class="vote-action">−</span>[/rating-minus][/rating-type-3][rating-type-4][rating-plus]<span class="vote-action">+ {likes}</span>[/rating-plus] [rating-minus]<span class="vote-action">− {dislikes}</span>[/rating-minus][/rating-type-4][/rating]
         </li>
      </ul>
   </div>
</div>
[related-news]
<div class="row row-flex">
   {related-news}
</div>
[/related-news]
<div class="card w-100 mb-5">
   <div class="card-body pb-0">
      <section id="cd-timeline" class="cd-container">
         [not-comments]
         <div class="cd-timeline-block">

            <div class="cd-timeline-content">
               <h2 style="font-weight:normal;">Нет комментариев. Станьте первым участником обсуждения.</h2>
               <p>Перед публикацией, советую ознакомится с <a href="{THEME}/../../index.php?do=rules" target="_blank">правилами!</a></p>
            </div>
         </div>
         {comments}
         [/not-comments]
         [comments]
         {comments}
         {navigation}
         [/comments]
          {addcomments}
      </section>
   </div>
</div>