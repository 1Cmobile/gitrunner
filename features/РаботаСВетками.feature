# language: ru

Функциональность: Работа с ветками

Как разработчик
Я хочу иметь возможность работать с различными ветками репозитория
Чтобы мочь автоматизировать больше рутинных действий на OneScript

Контекст:
    Допустим Я создаю новый объект ГитРепозиторий
    И Я создаю временный каталог и сохраняю его в контекст
    И Я инициализирую репозиторий во временном каталоге

Сценарий: Получение текущей ветки
    Когда Я получаю текущую ветку
    Тогда Текущая ветка равна "master"

Сценарий: Создание новой ветки
    Когда Я создаю ветку "develop"
    И Я получаю текущую ветку
    Тогда Текущая ветка равна "develop"

Сценарий: Переход на существующую ветку
    Допустим Я создаю временный файл "temp.tmp" во временном каталоге и сохраняю его в контекст
    И Я добавляю временный файл в индекс
    И Я фиксирую изменения с сообщением "Добавлен тестовый файл"
    И Я создаю ветку "develop"
    Когда Я перехожу на ветку "master"
    И Я получаю текущую ветку
    Тогда Текущая ветка равна "master"

Сценарий: Получение списка веток
    Допустим Я создаю временный файл "temp.tmp" во временном каталоге и сохраняю его в контекст
    И Я добавляю временный файл в индекс
    И Я фиксирую изменения с сообщением "Добавлен тестовый файл"
    Когда Я получаю список веток
    Тогда Список веток содержит ветку "master" c признаком текущая "истина"
