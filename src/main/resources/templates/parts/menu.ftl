<#include "security.ftl">
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand col-md-2" href="/">Интернет магазин</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarText">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link mr-1" href="/">Главная<span class="sr-only">(current)</span></a>
            </li>
            <#if user??>
                <li>
                    <form action="/myorders" method="post">
                        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                        <button class="btn btn-outline-light mr-1" type="submit">Мои заказы</button>
                    </form>
                </li>

                <li>
                    <form action="/logout" method="post">
                        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                        <button class="btn btn-outline-light" type="submit">Выход</button>
                    </form>
                </li>

             <#else>
                <li class="nav-item">
                    <a class="nav-link" href="/login">Вход</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/registration">Регистрация</a>
                </li>
            </#if>
        </ul>
    </div>
    <ul class="navbar-nav d-flex justify-content-end">
        <li>
            <span class="navbar-text mr-2">${name}</span>
        </li>
        <li class="border-left"></li>
        <li>
            <span class="navbar-text mx-2" id="cart-sum">Всего: 0 руб.</span>
        </li>
        <li>
            <form action="/cart" method="post">
                <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                <span action="/cart" <#if !user??>class="d-inline-block" tabindex="0" data-toggle="tooltip" title="Авторизуйтесь для оформления заказа"</#if>>
                    <button class="btn btn-outline-light my-2 my-sm-0" type="submit" <#if !user??>disabled</#if>>Корзина</button>
                </span>
            </form>
        </li>
    </ul>
</nav>
