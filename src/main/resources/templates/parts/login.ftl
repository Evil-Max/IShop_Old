<!-- Вход start -->
<#if errormessage??>
<div class="row">
    <div class="alert alert-danger alert-dismissible fade show" role="alert">
        ${errormessage}
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
</div>
</#if>
<div class="container-fluid col-lg-4 px-4 py-4" >
    <div class="container">
        <div class="row">
            <div class="justify-content-start mb-2">
                <h3>Авторизуйтесь, пожалуйста</h3>
            </div>
        </div>
    </div>
    <form method="post" action="/login">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
        <label for="login">Логин</label>
        <input type="text" class="form-control" id="login" name="username" placeholder="Login">

        <label for="password">Пароль</label>
        <input type="password" class="form-control" id="password" name="password" placeholder="Password">

        <button type="submit" class="btn btn-primary mb-2">Войти</button>
    </form>
</div>
<!-- Вход end -->
