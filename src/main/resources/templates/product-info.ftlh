<!DOCTYPE html>
<html>
<head>
    <title>

    </title>
</head>
<body>
<h1>shop</h1>
<hr>
<h4>ПОДРОБНАЯ ИНФОРМАЦИЯ О ТОВАРЕ</h4>
<hr>
<#list images as img>
    <img src="/images/${img.id}" height="60px"><br><br>
</#list>
<b>Название товара: </b>${product.title}<br>
<b>Описание товара: </b>${product.description}<br>
<b>Цена товара: </b>${product.price}<br>
<b>Город: </b>${product.city}<br>
<b>Автор: </b><a href="/user/${product.user.id}">${product.user.name}</a><br>
<hr>
</form>
</body>
</html>