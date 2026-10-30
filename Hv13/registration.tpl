<div class="col-md-12">
   <div class="card">
    <div class="card-body">

        [registration]
        <h5 class="card-title"><span class="icon-user-follow text-primary mr-2"></span>Регистрация</h5>[/registration] [validation]
        <h5 class="card-title"><span class="icon-user-follow text-primary mr-2"></span>Продолжение регистрации</h5>[/validation] [registration]
        <div class="alert alert-secondary">
            Регистрация на нашем сайте позволит Вам быть его полноценным участником.
            <br> Вы сможете добавлять публикации на сайт, оставлять свои комментарии и многое другое.
            <br>
            <br> Регистрируясь на сайте вы автоматически принимаете правила. Незнание правил не освобождает от ответственности.

        </div>
        [/registration] [validation]
        <div class="alert alert-secondary">
            Ваш аккаунт был зарегистрирован на нашем сайте, однако информация о Вас является неполной, поэтому ОБЯЗАТЕЛЬНО заполните дополнительные поля в Вашем профиле.
            <br>
        </div>
        [/validation] [registration]
        <div class="input-group">

            <input type="text" name="name" id="name" class="form-control" placeholder="Логин" required>
            <span class="input-group-btn">
        <button class="btn btn-outline-primary ml-2" type="button" title="Проверить" onclick="CheckLogin(); return false;">Проверить</button>
      </span>
        </div>
        <div id="result-registration"></div>
        <br>
        <div class="input-group">

            <input type="password" name="password1" id="password1" class="form-control" placeholder="Пароль" required>
        </div>
        <br>
        <div class="input-group">

            <input type="password" name="password2" id="password2" class="form-control" placeholder="Повторите пароль" required>
        </div>
        <br>
        <div class="input-group">

            <input type="email" name="email" id="email" class="form-control" placeholder="Электронная почта Email" required>
        </div>
        <br> [question]
        <li class="form-group">
            <label for="question_answer">{question}</label>
            <input placeholder="Введите ответ" type="text" name="question_answer" id="question_answer" class="wide" required>
        </li>
        [/question] [recaptcha] {recaptcha} [/recaptcha] [/registration] [validation]
        <div class="input-group">
            <span class="input-group-addon">Ваше имя</span>
            <input type="text" name="fullname" id="fullname" class="form-control">
        </div>
        <br>
        <div class="input-group">
            <span class="input-group-addon">Место жительства</span>
            <input type="text" id="land" name="land" class="form-control">
        </div>
        <br>

        <div class="card" style="border: 1px solid #f6bb42;box-shadow: none;">
            <div class="card-header">О себе</div>
            <div class="card-body">
                <textarea id="info" name="info" rows="5" class="form-control" style="width: 100%;"></textarea>
            </div>
        </div>
        <div class="card" style="border: 1px solid #f6bb42;box-shadow: none;">
            <div class="card-header">Загрузите аватар</div>
            <div class="card-body">
                <input type="file" id="image" name="image" class="wide">
            </div>
        </div>
        <table class="xfields">
            {xfields}
        </table>
        [/validation] [registration] [sec_code]
        <div class="c-capcha">
            {reg_code}
            <input placeholder="Повторите код" title="Введите код указанный на картинке" type="text" name="sec_code" id="sec_code" required>
        </div>
        [/sec_code] [/registration]
        <hr/>
        <button class="btn btn-outline-primary" name="submit" type="submit"><span class="icon-action-redo"></span> Зарегистрироваться</button>
        <br>
        <br>

    </div>
</div>
</div>
