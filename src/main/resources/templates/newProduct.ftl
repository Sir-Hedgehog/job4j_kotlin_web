<!DOCTYPE html>
<html lang="ru">

    <head>
        <meta charset="UTF-8" />
        <title>Добавление нового продукта</title>
        <style>

        </style>
        <script>

        </script>
    </head>
    <body>
        <h1>Добавление нового продукта</h1>
        <a href="${'/products/all'}">Главная</a>
        <br/><br/>
            <form action="/products/new" name="product" method="POST">
                <section>
                    <div>
                        <label for="name">Введите наименование продукта: </label>
                        <input type="text" name="name" value="${product.name}"/>
                    </div>
                    <div>
                        <label for="calories">Введите количество калорий (в 100 г продукта): </label>
                        <input type="text" name="calories" value="${product.calories}"/>
                    </div>
                    <div>
                        <label for="categories">Выберите категорию: </label>
                        <select name="categories">
                            <#list categories as category>
                                <option>${category}</option>
                            </#list>
                        </select>
                    </div>
                    <input type="submit" value="Создать" />
                </section>
            </form>
        <br/>
    </body>

</html>