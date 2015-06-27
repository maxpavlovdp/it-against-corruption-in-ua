<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>IT against corruption</title>
    <style type="text/css" media="screen">
    #status {
        background-color: #eee;
        border: .2em solid #fff;
        margin: 2em 2em 1em;
        padding: 1em;
        width: 12em;
        float: left;
        -moz-box-shadow: 0px 0px 1.25em #ccc;
        -webkit-box-shadow: 0px 0px 1.25em #ccc;
        box-shadow: 0px 0px 1.25em #ccc;
        -moz-border-radius: 0.6em;
        -webkit-border-radius: 0.6em;
        border-radius: 0.6em;
    }

    .ie6 #status {
        display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
    }

    #status ul {
        font-size: 0.9em;
        list-style-type: none;
        margin-bottom: 0.6em;
        padding: 0;
    }

    #status li {
        line-height: 1.3;
    }

    #status h1 {
        text-transform: uppercase;
        font-size: 1.1em;
        margin: 0 0 0.3em;
    }

    #page-body {
        margin: 2em 1em 1.25em 18em;
    }

    h2 {
        margin-top: 1em;
        margin-bottom: 0.3em;
        font-size: 1em;
    }

    p {
        line-height: 1.5;
        margin: 0.25em 0;
    }

    #controller-list ul {
        list-style-position: inside;
    }

    #controller-list li {
        line-height: 1.3;
        list-style-position: inside;
        margin: 0.25em 0;
    }

    @media screen and (max-width: 480px) {
        #status {
            display: none;
        }

        #page-body {
            margin: 0 1em 1em;
        }

        #page-body h1 {
            margin-top: 0;
        }
    }
    </style>
</head>
<body>
<a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div id="status" role="complementary">
    <h1>Инициативы:</h1>
    <ul>
        <li><g:link controller="corruptionIncident">взятки в ДАИ</g:link></li>
    </ul>
</div>
<div id="page-body" role="main">
    <h1>Welcome to "IT against corruption in Ukraine"</h1>
    <b>IT against corruption in Ukraine</b> - это инициатива IT сообщества Украины, призванная создать сервис для
    сбора статистики откатов и взяток в гос структурах.
    <br>
    <br>
    Первая инициатива - взятки в ДАИ.
   <br>
   <br>
   <p>
       <b>Продседура занесения данных в систему следующая:</b>
       <br>
       1) Фоткаем | снимаем видео | записываем на диктофон или просто чикинимся выбрав место дачи взятки;<br>
       2) Выбираем раздел (сдача екзамена|штраф без чека|штраф без чека другого водителя);<br>
       3) Выбираем должность;<br>
       4) Выбираем фамилию или вносим новую;<br>
       5) Делаем краткое описание по желанию;<br>
   </p>
    <br>
    <b>На выходе самое вкусное</b> - система строит статистику по регионам, должностям в разрезах за неделю, год и т.д. Видим тенденцию, топ, топ 10.
    <br><br>
    Будет возможность подписаться на рассылку и следить за любимыми "фаваритами", оставлять коменты :)
    <br><br>
    <b>Теперь самое сложное - провалидировать правдивость данных.</b><br>
    Паттерн цепочка ответственности нам поможет в этом :)<br>
    Звено 1 - алгоритм на входе у которого время, место, мак адрес;<br>
    Звено 2 - модерация (на первых етапах не нужна);<br>
    Звено 3 - голосование как на на Quora или StackOverflow;<br>
    <br><br>

    <b>Следующие инициативы будут включать в себя от простого/безопасного к сложному/опасному:</b><br/>
    - сферу образования;<br>
    - сферу здравоохранения;<br>
    - милицию;<br>
    - сделки связанные с действиями в зоне АТО;<br>
    - судовую систему;<br>
    - работу органнов власти;<br>
    <br><br>
    <b>Чем интересен этот проект?</b><br/>
    - понятная и интересная доменная область;<br>
    - возможность попробовать себя в опенсорс проекте;<br>
    - не имеет аналогов;<br>
    - реалный вклад в развитие Украины;<br>
    - финансовая независимость в случае удачного старта;<br>
    - опыт в экстремальном программировании;<br>
    <br><br>
    <b>Источники финансирования:</b><br/>
    - 30 тыс. айтишников Украины;<br/>
    - малый и средний бизнесс;<br/>
    <br><br>
    <b>Чем опасен этот проект?</b><br/>
    - на первом етапе не опасен :)<br>
    - после набора популярности крайне рекомендован переезд в другую страну;<br>
<br/><br/>
    <b>Какие технологии исползуются:</b><br>
    Grails Java, Spring, Hibernate, JQuery, Angular JS,<br/> MySQL, Mongo DB, Pivotal (branch VMWare) as PAAS.<br>

    <br><br>
    <b>Теперь к делу:</b><br>
    Принимаемся обсуждать <a target="_blank" href="https://www.facebook.com/groups/it.atainst.corruption.in.ua">планы</a><br>
    Проект находится <a target="_blank" href="https://github.com/maxpavlovdp/it-against-corruption-in-ua">здесь</a><br>
    Регаемся на  <a target="_blank" href="https://login.run.pivotal.io/login">pivotal</a><br>
</div>
</body>
</html>
