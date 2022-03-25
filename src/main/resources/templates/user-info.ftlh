<!DOCTYPE html>
<html>
<head>
    <title>Shop</title>
</head>
<body>
<h1>Shop</h1>
<h4>Пользователь: ${user.name}</h4>
<b>Номер телефона: </b> ${user.phoneNumber}<br>
<b>Эл. почта: </b> ${user.email}<br>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} руб. | <a href="/product/${product.id}">Подробнее...</a></p>
    </div>
</#list>
<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>
</body>
</html>