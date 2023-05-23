$(document).ready(function () {

    /** TinyMCE */
    tinymce.init({
        selector: 'textarea',
        language: 'ru'
    });

    /** Регистрация */
    $("#register-form").on('submit', function (e) {
        e.preventDefault();

        let data = new FormData();
        data.append('method', 'registration');
        data.append('data', $(this).serialize());

        fetch("", {
            method: 'POST',
            body: data
        }).then(function (response) {
            response.text().then(function (text) {
                if (text == 0)
                    window.location.href = "index.php?method=login";
                else
                    console.log(text);
            });
        })
    })

    /** Создать статью */
    $("#add_article").on('submit', function (e) {
        e.preventDefault();

        let data = new FormData();
        data.append('method', 'createArticle');
        data.append('data', $(this).serialize());

        fetch("", {
            method: 'POST',
            body: data
        }).then(function (response) {
            response.text().then(function (text) {
                if (text == 0)
                    window.location.href = "http://localhost/it_services/index.php/edit_articles";
                else
                    console.log(text);
            });
        })
    })

    /** Создать услугу */
    $("#add_service").on('submit', function (e) {
        e.preventDefault();

        let data = new FormData();
        data.append('method', 'createService');
        data.append('data', $(this).serialize());

        fetch("", {
            method: 'POST',
            body: data
        }).then(function (response) {
            response.text().then(function (text) {
                if (text == 0)
                    window.location.href = "http://localhost/it_services/index.php/edit_services";
                else
                    console.log(text);
            });
        })
    })

    /** Создать тип услуги */
    $("#add_type").on('submit', function (e) {
        e.preventDefault();

        let data = new FormData();
        data.append('method', 'createType');
        data.append('data', $(this).serialize());

        fetch("", {
            method: 'POST',
            body: data
        }).then(function (response) {
            response.text().then(function (text) {
                if (text == 0)
                    window.location.href = "http://localhost/it_services/index.php/types";
                else
                    console.log(text);
            });
        })
    })

    /** Обновить статью */
    $("#update_article").on('submit', function (e) {
        e.preventDefault();

        let data = new FormData();
        data.append('method', 'updateArticle');
        data.append('data', $(this).serialize());

        fetch("", {
            method: 'POST',
            body: data
        }).then(function (response) {
            response.text().then(function (text) {
                if (text == 0)
                    window.location.href = "http://localhost/it_services/index.php/edit_articles";
                else
                    console.log(text);
            });
        })
    })

    /** Обновить услугу */
    $("#update_service").on('submit', function (e) {
        e.preventDefault();

        let data = new FormData();
        data.append('method', 'updateService');
        data.append('data', $(this).serialize());

        fetch("", {
            method: 'POST',
            body: data
        }).then(function (response) {
            response.text().then(function (text) {
                if (text == 0)
                    window.location.href = "http://localhost/it_services/index.php/edit_services";
                else
                    console.log(text);
            });
        })
    })

    /** Обновить пользователя */
    $("#update_user").on('submit', function (e) {
        e.preventDefault();

        let data = new FormData();
        data.append('method', 'updateUser');
        data.append('data', $(this).serialize());

        fetch("", {
            method: 'POST',
            body: data
        }).then(function (response) {
            response.text().then(function (text) {
                if (text == 0)
                    window.location.href = "http://localhost/it_services/index.php/edit_users";
                else
                    console.log(text);
            });
        })
    })

    /** Обновить контактной информации */
    $("#update_contacts").on('submit', function (e) {
        e.preventDefault();

        let data = new FormData();
        data.append('method', 'updateContacts');
        data.append('data', $(this).serialize());

        fetch("", {
            method: 'POST',
            body: data
        }).then(function (response) {
            response.text().then(function (text) {
                if (text == 0)
                    window.location.href = "http://localhost/it_services/index.php/edit_contacts";
                else
                    console.log(text);
            });
        })
    })

    /** Обновить типа услуги */
    $("#update_type").on('submit', function (e) {
        e.preventDefault();

        let data = new FormData();
        data.append('method', 'updateType');
        data.append('data', $(this).serialize());

        fetch("", {
            method: 'POST',
            body: data
        }).then(function (response) {
            response.text().then(function (text) {
                if (text == 0)
                    window.location.href = "http://localhost/it_services/index.php/types";
                else
                    console.log(text);
            });
        })
    })

    /** Сохранить статью "О компании" */
    $("#save_article").click(function (e) {
        e.preventDefault();

        let article_id = $("#about_article").val();

        let data = new FormData();
        data.append('method', 'updateAboutArticle');
        data.append('article_id', article_id);

        fetch("", {
            method: 'POST',
            body: data
        }).then(function (response) {
            response.text().then(function (text) {
                if (text == 0)
                    window.location.href = "http://localhost/it_services/index.php/about";
                else
                    console.log(text);
            });
        })
    });

    $("#cancel").click(function (e) {
        e.preventDefault();
        window.history.back();
    })

    articlesTable = $('#articles_list').DataTable({
        "language": {
            search: "Поиск",
            processing: "Идет выполнение...",
            lengthMenu: "Показать _MENU_ записей",
            paginate: {
                first: "Первая",
                previous: "Предыдущая",
                next: "Cледующая",
                last: "Последняя"
            },
            zeroRecords: "Нет данных",
        },
        "lengthMenu": [
            [15, 25, 50, -1],
            [15, 25, 50, "Все"]
        ],
        "deferRender": true,
        "scroller": false,
        'stateSave': false,
        'select': true,
        'paging': false,
        'lengthChange': false,
        'searching': false,
        'ordering': true,
        'info': false,
        'autoWidth': true,
        "processing": true,
        "keys": false,
        "aoColumnDefs": [{ 'bSortable': false, 'aTargets': [5, 6] }]
    });

    typesTable = $('#types_list').DataTable({
        "language": {
            search: "Поиск",
            processing: "Идет выполнение...",
            lengthMenu: "Показать _MENU_ записей",
            paginate: {
                first: "Первая",
                previous: "Предыдущая",
                next: "Cледующая",
                last: "Последняя"
            },
            zeroRecords: "Нет данных",
        },
        "lengthMenu": [
            [15, 25, 50, -1],
            [15, 25, 50, "Все"]
        ],
        "deferRender": true,
        "scroller": false,
        'stateSave': false,
        'select': true,
        'paging': false,
        'lengthChange': false,
        'searching': false,
        'ordering': true,
        'info': false,
        'autoWidth': true,
        "processing": true,
        "keys": false,
        "aoColumnDefs": [{ 'bSortable': false, 'aTargets': [2, 3] }]
    });

    servicesTable = $('#services_list').DataTable({
        "language": {
            search: "Поиск",
            processing: "Идет выполнение...",
            lengthMenu: "Показать _MENU_ записей",
            paginate: {
                first: "Первая",
                previous: "Предыдущая",
                next: "Cледующая",
                last: "Последняя"
            },
            zeroRecords: "Нет данных",
        },
        "lengthMenu": [
            [8, 15, 25, 50, -1],
            [8, 15, 25, 50, "Все"]
        ],
        "deferRender": true,
        "scroller": false,
        'stateSave': true,
        'select': true,
        'paging': true,
        'lengthChange': true,
        'searching': true,
        'ordering': true,
        'info': false,
        'autoWidth': true,
        "processing": true,
        "keys": false,
        "aoColumnDefs": [{ 'bSortable': false, 'aTargets': [5, 6] }]
    });

    usersTable = $('#users_list').DataTable({
        "language": {
            search: "Поиск",
            processing: "Идет выполнение...",
            lengthMenu: "Показать _MENU_ записей",
            paginate: {
                first: "Первая",
                previous: "Предыдущая",
                next: "Cледующая",
                last: "Последняя"
            },
            zeroRecords: "Нет данных",
        },
        "lengthMenu": [
            [15, 25, 50, -1],
            [15, 25, 50, "Все"]
        ],
        "deferRender": true,
        "scroller": false,
        'stateSave': false,
        'select': true,
        'paging': false,
        'lengthChange': false,
        'searching': false,
        'ordering': true,
        'info': false,
        'autoWidth': true,
        "processing": true,
        "keys": false,
        "aoColumnDefs": [{ 'bSortable': false, 'aTargets': [9, 10] }]
    });

    requests = $('#requests').DataTable({
        "language": {
            search: "Поиск",
            processing: "Идет выполнение...",
            lengthMenu: "Показать _MENU_ записей",
            paginate: {
                first: "Первая",
                previous: "Предыдущая",
                next: "Cледующая",
                last: "Последняя"
            },
            zeroRecords: "Нет данных",
        },
        "lengthMenu": [
            [15, 25, 50, -1],
            [15, 25, 50, "Все"]
        ],
        "deferRender": true,
        "scroller": false,
        'stateSave': false,
        'select': true,
        'paging': false,
        'lengthChange': false,
        'searching': true,
        'ordering': true,
        'info': false,
        'autoWidth': true,
        "processing": true,
        "keys": false
    });

    messages_table = $('#messages_table').DataTable({
        "language": {
            search: "Поиск",
            processing: "Идет выполнение...",
            lengthMenu: "Показать _MENU_ записей",
            paginate: {
                first: "Первая",
                previous: "Предыдущая",
                next: "Cледующая",
                last: "Последняя"
            },
            zeroRecords: "Нет данных",
        },
        "lengthMenu": [
            [15, 25, 50, -1],
            [15, 25, 50, "Все"]
        ],
        "deferRender": true,
        "scroller": false,
        'stateSave': false,
        'select': true,
        'paging': true,
        'lengthChange': false,
        'searching': true,
        'ordering': true,
        'info': false,
        'autoWidth': true,
        "processing": true,
        "keys": false
    });

    /** Добавить услугу в заявку */
    var buttons = document.querySelectorAll("#add_service");
    buttons.forEach(component => {
        component.addEventListener('click', handleClick, false);
    })

    $("#add_service").click(function (e) {
        handleClick(e)
    });

    function handleClick(e) {
        e.preventDefault();
        let id = $(this).val();
        let d = new FormData();
        d.append("method", 'add_service_to_request');
        d.append('id', id);
        fetch("", {
            method: 'POST',
            body: d
        }).then(function (response) {
            response.text().then(function (text) {
                if (text == 1)
                    createNotification("<span uk-icon=\'icon: check\'></span> Добавлено", 'success', 'top-center', 3000);
                window.location.href = "http://localhost/it_services/index.php";
            });
        })
    }

    /** смена статуса */
    var sb = document.querySelectorAll("#change_status");
    sb.forEach(component => {
        component.addEventListener('click', handleSbClick, false);
    })

    function handleSbClick(e) {
        e.preventDefault();
        let d = new FormData();
        d.append("method", 'change_status_of_request');
        d.append('id', $(this).val());
        fetch("", {
            method: 'POST',
            body: d
        }).then(function (response) {
            response.text().then(function (text) {
                if (text == 1)
                    createNotification("<span uk-icon=\'icon: check\'></span> Статус изменен", 'success', 'top-center', 3000);
                window.location.href = "http://localhost/it_services/index.php/requests";
            });
        })
    }


    /** Для калькулятора */
    var price = 0;
    $("#calc_add_service").click(function (e) {
        e.preventDefault();
        let d = new FormData();
        d.append("method", 'calc_get_service');
        d.append('id', $("#calc_services").val());
        fetch("", {
            method: 'POST',
            body: d
        }).then(function (response) {
            response.text().then(function (text) {
                let res = JSON.parse(text);
                for (let key in res) {
                    price += Number(res[key]['price']);
                    let html = "<div id='parent_to_del'><div class='uk-card uk-card-primary uk-card-body'><div class='uk-card-badge uk-label'><a id='del_this' href=" + res[key]['price'] + " style='color: black;'>X</a></div><h3 class='uk-card-title'>" + Number(res[key]['price']).toFixed(2) + "₽</h3><p>" + res[key]['name'] + "</p></div></div>";
                    $("#clac_result_list").append(html);
                }
                $('#clac_total_price').html("<p class='uk-text-lead'>Примерная стоимость: " + Number(price).toFixed(2) + "₽</p>");
            });
        })
    })

    $("#clac_result_list").on('click', 'a', function (e) {
        e.preventDefault();
        price -= Number($(this).attr('href'));
        $(this).closest('#parent_to_del').remove();
        $('#clac_total_price').html("<p class='uk-text-lead'>Примерная стоимость: " + Number(price).toFixed(2) + "₽</p>");
    })

    function createNotification(message, status, pos, timeout = 5000, group = null) {
        UIkit.notification({
            message: message,
            status: status,
            timeout: timeout,
            group: group,
            pos: pos
        });
    }
});