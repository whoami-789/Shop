<!DOCTYPE html>
<html>
<head>
    <title>Shop</title>
</head>
<body>
<h1>Shop</h1>
<hr>
<#if user.email??>
    <h3> Имя пользователя: <i>${user.name}</i></h3>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Выйти"/>
    </form>
    <#if user.isAdmin()>
        <a href="/admin">Панель администратора</a>
    </#if>
<#else>
    <a href="/login">Войти</a></h1>
</#if>
<hr>
<h4>Товары</h4>
<form action="/" method="get">
    Поиск товара: <input type="text" name="title">
    <input type="submit" value="Поиск"/>
</form>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} руб. | <a href="/product/${product.id}">Подробнее...</a></p>
    </div>
<#else>
    <h3>Товаров нет</h3>
</#list>
<#if user.email??>
<hr>
<h3>Создать товар</h3>
<form action="/product/create" method="post" enctype="multipart/form-data">
    Название товара: <input type="text" name="title"/><br><br>
    Описание товара: <input type="text" name="description"/><br><br>
    Цена товара: <input type="number" name="price"/><br><br>
    Город: <input type="text" name="city"/><br><br>
    Фото 1: <input type="file" name="file1"/><br><br>
    Фото 2: <input type="file" name="file2"/><br><br>
    Фото 3: <input type="file" name="file3"/><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Добавить товар"/>
    </#if>
</form>
</body>
</html>