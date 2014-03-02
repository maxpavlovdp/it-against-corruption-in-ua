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
    <h1>Проекты:</h1>
    <ul>
        <li><g:link controller="corruptionIncident">Коррупция на карте</g:link></li>
    </ul>
</div>
<div id="page-body" role="main">
    <h1>Welcome to "IT against corruption in Ukraine"</h1>
    <p>
    <b>IT against corruption in Ukraine</b> - это инициатива IT сообщества Украины, призванная создать сервис для публичного незаангажированного контроля работы государства.
    Если ты имеешь айтишный скилл, тебе надоело просто скролить ленту новостей, тебе хочется реализовать
    интеллектуальный потенциал для блага Украины и ее народа, то у нас есть предложение - участие в опенсор проекте &quot;IT against corruption in Ukraine&quot;.

    <br><br>Из соображений, которые есть на сейчас - это  публичный контроль, статистика с фамилиями, цифрами, местами, датами и коррупционными схемами.

    <br><br>С технической точки зрения это опенсорс проект в клауде амазона через FaaS Cloud Foundry с использованием технологий Java, Grails, Hibernate, JQuery.

    <br><br>Предлагается сделать сервис по типу википедии, которая не имеет хозяина, которую нельзя перекупить или выключить.

    <br><br>Основной челлендж на перспективу - силами неравнодушных к доле страны айтишников - честных и мотивированных создать прототип электронного государства.

    <br><br><br>Если зацепило, вот вам ссылочки:<br>
    Для скачивания проекта: <a target="_self">https://github.com/maxpavlovdp/it-against-corruption-in-ua</a><br>
    Регаемся на pivotal: <a>https://login.run.pivotal.io/login</a><br>
    Принимаемся обсуждать планы: <a>https://www.facebook.com/groups/it.atainst.corruption.in.ua/</a><br>
    </p>
</div>
</body>
</html>
