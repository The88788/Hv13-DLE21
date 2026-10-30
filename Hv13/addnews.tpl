<div class="card addcard mb-5">

   <div class="card-body addbody" id="content">
      <h5 class="card-title text-center mb-4">{header-title}</h5>
      <div class="form-group mb-5" class="news-title-field">
         <label for="title">Заголовок</label>
		 <input type="text" id="title" name="title" value="{title}" maxlength="150" class="f_input" style="width:70%;"/>&nbsp;<input class="bbcodes" style="height: 36px; font-size: 11px;" title="Найти похожие новости" onclick="find_relates(); return false;" type="button" value="Найти похожие" /><span id="related_news"></span>
      </div>
	[urltag]
	   <div class="form-group mb-5" class="news-title-field">
			<label for="alt_name">URL новости</label>
			<input type="text" name="alt_name" id="alt_name" value="{alt-name}" class="wide">
      </div>
	[/urltag]
      <div class="form-group mb-5 w-100" id="kateg">
         <label for="category" class="w-100">Категория</label>
         {category}
      </div>
       
      <button id="opros" class="btn btn-secondary mb-3" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
      <i class="zmdi zmdi-sort-amount-desc text-muted" style="font-weight: bold;font-size: 16px;"></i> Добавить опрос
      </button>
      <div class="arrow_box mb-5 pt-2 pb-2 pr-3 pl-3">
         <p class="f90 m-0 text-muted">Вы можете прикрепить опрос к публикации. Для этого необходимо заполнить соответстсвующие поля ниже, кликнув по кнопке.</p>
         <div class="collapse" id="collapseExample">
            <div class="form-group mb-3 mt-5">
               <label for="vote_title">Заголовок опроса</label>
               <input type="text" name="vote_title" value="{votetitle}" class="form-control">
            </div>
            <div class="form-group mb-3">
               <label for="frage">Вопрос</label>
               <input type="text" name="frage" value="{frage}" class="form-control">
            </div>
            <div class="form-group">
               <label for="vote_body">Список ответов</label>
               <textarea name="vote_body" rows="5" class="form-control" placeholder="Каждая новая строка является новым вариантом ответа">{votebody}</textarea>
               <input type="checkbox" name="allow_m_vote" value="1" {allowmvote}> Разрешить выбор нескольких вариантов
            </div>
         </div>
      </div>  
       
      <div class="form-group mb-5" id="krat">
         <label for="short_story">Краткое описание</label>
         [not-wysywyg]
         <div class="bb-editor">
            {bbcode}
            <textarea name="short_story" id="short_story" onfocus="setFieldName(this.name)" rows="8" class="form-control" required>{short-story}</textarea>
         </div>
         [/not-wysywyg]
         {shortarea}
      </div>
      <div id="preview" class="fr-view">
      </div>
       
      <div class="form-group mb-5" id="poln">
         <label for="full_story">Полное описание</label>
         [not-wysywyg]
         <div class="bb-editor">
            {bbcode}
            <textarea name="full_story" id="full_story" onfocus="setFieldName(this.name)" rows="18" class="form-control" >{full-story}</textarea>
         </div>
         [/not-wysywyg]
         {fullarea}
      </div>
	  
	  <div class="form-group mb-5">
         <label for="tags">Ключевые слова</label>
         <input type="text" name="tags" id="tags" value="{tags}" maxlength="150"  autocomplete="off" class="form-control">
         <small id="emailHelp" class="form-text text-black">Вводите ключевые слова через запятую. Они нужны для того чтобы ваша публикация была всегда на виду!</small>
      </div>
	  
      <table class="table table-bordered" style="width:100%">
         {xfields}  
      </table>
      <div>{admintag}</div>
      [recaptcha]
      <div>{recaptcha}</div>
      [/recaptcha]
      [question]
      <div class="form-group mb-3">
         <label for="question_answer">{question}</label>
         <input placeholder="Введите ответ" type="text" name="question_answer" id="question_answer" class="form-control" required>
      </div>
      [/question]
      [sec_code]
      <div class="c-capcha mb-3">
         {sec_code}
         <input placeholder="Повторите код" title="Введите код указанный на картинке" class="form-control" type="text" name="sec_code" id="sec_code" required>
      </div>
      [/sec_code]
      <hr />
      <div id="end">
         <button class="btn btn-primary" type="submit" name="add">Отправить</button>
         <button id="add_news_preview" class="btn btn-outline-secondary" onclick="preview()" type="submit" name="nview">Предпросмотр</button>
      </div>
   </div>
</div>
