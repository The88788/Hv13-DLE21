  <div class="card [fixed]fxd[/fixed] mb-5">
  <div class="card-body">
    <div class="row">
        <div class="col-md-4">		
            <a href="{full-link}">
                <img src="[xfgiven_poster][xfvalue_thumb_url_poster][/xfgiven_poster][xfnotgiven_poster]{image-1}[/xfnotgiven_poster]" class="xfieldimage poster_one" alt="{title}" width="100%"  style="border: 2px solid rgb(255, 255, 255); width: 100%; height: 190px;padding: 3px;border-radius: 13px;object-fit: cover;">
           </a>		   
        </div>
         <div class="col-md-8 pl-md-0">
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
            <h4 class="shtitle m-0"><a href="{full-link}" class="text-dark">[poll] <i class="zmdi zmdi-sort-amount-desc text-muted" data-toggle="tooltip" data-placement="top" title="Опрос"></i> [/poll]{title}</a></h4>
            <p class="auth mt-1" style="font-size: 13px;opacity: 0.7;"><i class="icon-puzzle"></i> {link-category}</p>
            <div class="noimg" style="font-size: 0.9rem;">{short-story limit="200"}</div>
            [tags]
            <div class="tags">{tags}</div>
            [/tags]
            [edit-date]
            <button class="btn btn-sm btn-outline-warning mt-2" type="button" data-toggle="collapse" data-target="#edit-{news-id}" aria-expanded="false" aria-controls="edit-{news-id}" style="padding: 0 6px 2px 6px;font-size: 80%;">
            Изменено! <i class="fa fa-caret-down" aria-hidden="true"></i>
            </button>
            [/edit-date]
         </div>
         [edit-date]
         <div class="col-md-12">
            <div class="collapse" id="edit-{news-id}">
               <div class="alert alert-warning mb-0 mt-3 p-2 pl-3 pr-3 f90" role="alert">
                  Новость отредактировал: <b>{editor}</b> - {edit-date}<br>
                  [edit-reason]Причина: <i>{edit-reason}</i>[/edit-reason]
               </div>
            </div>
         </div>
         [/edit-date]
      </div>
   </div>
   <div class="card-footer">
      <ul class="list-inline m-0 text-muted f90 isize">
          <li class="list-inline-item auth f90">Автор: {author}</li>
          <li class="list-inline-item float-right"><small>Дата: {date=d.m.Y}</small></li>
          <li class="list-inline-item ml-3" style="color: #bcc3cc;">Просмотров: {views}</li>
         <li class="list-inline-item mr-0" style="color: #bcc3cc;">Комментариев: {comments-num}</li> 
          <li class="list-inline-item float-right mr-1">
            [rating][rating-type-1]{rating}[/rating-type-1][rating-type-2][rating-plus]<span class="vote-action">♥ {rating}</span>[/rating-plus][/rating-type-2][rating-type-3][rating-plus]<span class="vote-action">+</span>[/rating-plus] {rating} [rating-minus]<span class="vote-action">−</span>[/rating-minus][/rating-type-3][rating-type-4][rating-plus]<span class="vote-action">+ {likes}</span>[/rating-plus] [rating-minus]<span class="vote-action">− {dislikes}</span>[/rating-minus][/rating-type-4][/rating]
         </li>
      </ul>
   </div>
</div>
