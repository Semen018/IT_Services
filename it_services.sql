-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Дек 06 2019 г., 15:31
-- Версия сервера: 5.7.18
-- Версия PHP: 7.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `it_services`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `article_text` text NOT NULL,
  `publication_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Статьи';

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `name`, `article_text`, `publication_date`, `update_date`, `status`) VALUES
(1, 'Как выбирать поставщика по IP телефонии', '<p style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\">На рынке IP телефонии масса поставщиков и каждая компания спрашивает в чем разница между ними?</p>\r\n<p style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\">Разница между поставщиками IP телефонии следующая:</p>\r\n<p style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\">1. Собственная номерная ёмкость.</p>\r\n<p style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\">Если она есть у поставщика телефонии, это говорит о том, что он серьезный игрок на рынке. За частую мелкие компании, все берут в аренду у крупных провайдеров. Это грозит тем, что рано или поздно вы можете потерять свой номер когда поставщик уйдет с рынка.</p>\r\n<p style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\">2. Какое оборудование использует поставщик телефонии - &nbsp;это очень влияет на качество связи.</p>\r\n<p style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\">В большинстве случаев поставщики телефонии экономят на оборудовании т.к. они дают вам его в аренду, им не выгодно покупать дорогое оборудование. Всегда интересуйтесь, сколько стоит оборудование и кто его производит. Плохое или не качественное оборудование придется часто перегружать!</p>\r\n<p style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\">3. Тарифы - стоимость городского номера и абонентская плата за номер и линии</p>\r\n<p style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\">Сравнивая тарифы поставщиков, не бегите за самыми дешёвыми, т.к. качественную связь, нельзя получить за копейки.</p>\r\n<p style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\">4. Тарифы на межгород и т.д. у всех разные, порой на этом и выигрывает поставщик, обманывая клиента мелким ежемесячным платежом.</p>\r\n<p style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\">5. Техподдержка - за частую в мелких компаниях техподдержка работает 5 дней в неделю. Нужно выбирать поддержку 24/7. Если у вас проблема послу 18:00, это ваша проблема</p>\r\n<p style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\">&nbsp;</p>\r\n<p style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\">При выборе поставщика обратите внимание на следующее:</p>\r\n<p style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\">1. Возраст компании</p>\r\n<p style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\">2. Если собственная номерная емкость</p>\r\n<p style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\">3. Тех. поддержка 24/7</p>\r\n<p style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\">4. Тарифы (стоимость)</p>', '2019-11-29 13:12:06', '2019-12-05 10:29:06', 1),
(2, 'Как подходить к вопросу покупки АТС', '<p style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\">На сегодняшний день, огромный выбор решений по офисной телефонии, все зависит от ваших потребностей, задач и бюджета.</p>\r\n<p style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\">&nbsp;</p>\r\n<p style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\">Мы рекомендуем сразу обращаться к профессионалам по Мини АТС. Они вам помогут выявить ваши потребности и задачи и подберут технику под ваш бюджет! И самое главное технически грамотно проведут внедрение телефонии в вашей компании.</p>\r\n<p style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\">&nbsp;</p>\r\n<p style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\">Перед тем как покупать Мини АТС выясните самые важные моменты:</p>\r\n<ol style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\">\r\n<li>Количество внешних линий (город)</li>\r\n</ol>\r\n<p style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\">как они будут входить в АТС - (аналог) МГТС или IP телефония</p>\r\n<ol style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\">\r\n<li>Количество внутренних линий (абонентов)</li>\r\n</ol>\r\n<p style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\">&nbsp;</p>\r\n<p style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\">После этого, можно звонить в компанию которая занимается продажей Мини АТС и Шеф-монтажом АТС</p>\r\n<p style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\">&nbsp;</p>\r\n<p style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\">Вам могут предложить следующие АТС</p>\r\n<ol style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\">\r\n<li>Аналоговая АТС</li>\r\n<li>Цифровая АТС (IP)</li>\r\n<li>Гибридная АТС (аналог и цифра)</li>\r\n<li>Виртуальная АТС (аренда атс или аутсорсинг атс)</li>\r\n</ol>\r\n<p style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\">Наша компания рекомендует выбирать или переходить на цифровые АТС, это облегчит дальнейшую масштабируемость и эксплуатацию АТС</p>\r\n<p style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\">&nbsp;</p>\r\n<p style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\">Популярные производители АТС: Panasonic, LG-ERICSSON, Samsung</p>', '2019-12-03 06:40:54', '2019-12-05 10:52:01', 1),
(3, 'Ремонт компьютерной техники', '<h3 style=\"font-size: 16px; margin-bottom: 5px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\"><span style=\"color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">Даже техника известных марок мировых производителей рано или поздно выходит из строя. Причины поломки могут быть различны, начиная от заводского брака до неправильной эксплуатации. В любом случае, при обнаружении каких-либо перебоев в работе компьютера, следует обратиться в специализированную компанию, которая осуществляет ремонтные работы&nbsp;&nbsp;такого уровня.</span></h3>\r\n<p style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec; text-align: justify;\"><strong>Доверяйте профессионалам</strong>.</p>\r\n<p style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec; text-align: justify;\">Довольно часто компании стараются сэкономить на услугах ремонта компьютерной техники, что в последующем приводит к более дорогостоящим работам. Необходимо учитывать, что компьютер &ndash; сложная техника, поэтому её ремонт должен осуществлять опытный специалист, хорошо разбирающийся в данном вопросе. Без специальных знаний можно совершить ошибку, которая может стать губительной для вашей техники.</p>\r\n<p style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec; text-align: justify;\">Обращаясь к частным специалистам, необходимо понимать, что в случае обнаружения неисправностей в последующем, нести какую-либо ответственности никто не будет. Именно поэтому мы рекомендуем вам обращаться за помощью только к профессионалам.</p>', '2019-12-03 06:41:31', '2019-12-05 10:53:09', 1),
(5, 'О компании', '<h1 style=\"font-size: 2.5em; font-family: benderbold_italic; font-weight: normal; margin-top: 0px; color: #696969; background-color: #ececec;\">&nbsp;</h1>\r\n<h1 style=\"font-size: 2.5em; font-family: benderbold_italic; font-weight: normal; margin-top: 0px; color: #696969; background-color: #ececec;\">&nbsp;</h1>\r\n<h1 style=\"font-size: 2.5em; font-family: benderbold_italic; font-weight: normal; margin-top: 0px; color: #696969; background-color: #ececec;\">О компании</h1>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">Компания ServiceIT - на рынке <a style=\"color: #5a81b0; line-height: 18px;\" title=\"IT аутсорсинг в Москве и Московской области\" href=\"http://net-admin.ru/\" target=\"_blank\" rel=\"noopener\">IT аутсорсинга</a>&nbsp;с 2009 года,<br />мы оказываем&nbsp;<a style=\"color: #5a81b0; line-height: 18px;\" title=\"it услуги в москве и московской области\" href=\"http://net-admin.ru/it_uslugi/\">IT услуги</a>&nbsp;юридическим лицам в Москве и Московской области.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">Наша компания предоставляет своим клиентам комплексную поддержку на базе проверенных ИТ решений.&nbsp;&nbsp;</p>\r\n<p style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\">Компания ServiceIT&nbsp;была основана в 2009 году. С момента основания нашими главными ценностями остаются: молодость, инновации и ответственность.</p>\r\n<p style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\">&nbsp;</p>\r\n<p style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\"><strong>Молодость</strong>&nbsp;&ndash; это энергия, жажда знаний, инициативность и способность быть на шаг впереди.&nbsp;<br />Мы верим что, в сфере IT, молодость &ndash; это плюс! Кто лучше разбирается в технологиях: ваши дети или ваши родители?</p>\r\n<p style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\">&nbsp;</p>\r\n<p style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\"><strong>Инновации</strong>&nbsp;&ndash; это наше стремление внедрять в работу по-настоящему актуальные технологии.&nbsp;<br />Мы знаем наших клиентов и их потребности, поэтому сами находим новые IT-решения, тестируем и предлагаем внедрение.</p>\r\n<p style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\">&nbsp;</p>\r\n<p style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\"><strong>Ответственность</strong>&nbsp;&ndash; это способность не спасовать в трудную минуту.&nbsp;<br />Мы всегда остаемся с нашими клиентами и любое начатое дело доводим до успешного завершения. Если возникают непредвиденные трудности, мы уверены: решение есть всегда!</p>', '2019-12-05 10:54:25', '2019-12-05 12:03:40', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `a_a`
--

CREATE TABLE `a_a` (
  `id` int(11) NOT NULL,
  `id_article` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `a_a`
--

INSERT INTO `a_a` (`id`, `id_article`) VALUES
(1, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `about` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `skype` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `contacts`
--

INSERT INTO `contacts` (`id`, `tel`, `about`, `address`, `mail`, `skype`) VALUES
(1, '89283456712', '', 'г. Москва ул. Мира д. 16', 'ServiceIT@gmail.com', 'SerivceIT.ru');

-- --------------------------------------------------------

--
-- Структура таблицы `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `fio` varchar(100) NOT NULL,
  `mail` varchar(40) NOT NULL,
  `feedback_text` text NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Обратная связь';

--
-- Дамп данных таблицы `feedback`
--

INSERT INTO `feedback` (`id`, `id_user`, `fio`, `mail`, `feedback_text`, `create_date`, `status`) VALUES
(1, 1, 'admin', 'admin@mail.ru', '<p>test</p>', '2019-12-05 14:05:29', 0),
(2, 1, 'admin', 'admin@mail.ru', '<p>test2</p>', '2019-12-06 05:07:32', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `link` varchar(255) NOT NULL,
  `upload_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Файлы';

-- --------------------------------------------------------

--
-- Структура таблицы `requests`
--

CREATE TABLE `requests` (
  `id` varchar(255) NOT NULL,
  `id_user` int(11) NOT NULL,
  `request_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comment` varchar(255) DEFAULT NULL,
  `approximate_price` decimal(18,9) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `requests`
--

INSERT INTO `requests` (`id`, `id_user`, `request_date`, `update_time`, `comment`, `approximate_price`, `status`) VALUES
('5dea11c90b1a09.03235936', 3, '2019-12-06 08:31:05', '2019-12-06 15:10:10', 'паавыпв', '300.000000000', 1),
('5dea5143528189.56817377', 3, '2019-12-06 13:01:55', '2019-12-06 15:10:13', 'ttt', '4300.000000000', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `request_service`
--

CREATE TABLE `request_service` (
  `id` int(11) NOT NULL,
  `id_service` int(11) NOT NULL,
  `id_request` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `request_service`
--

INSERT INTO `request_service` (`id`, `id_service`, `id_request`) VALUES
(1, 19, '5dea11c90b1a09.03235936'),
(2, 27, '5dea5143528189.56817377'),
(3, 37, '5dea5143528189.56817377');

-- --------------------------------------------------------

--
-- Структура таблицы `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `id_type` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(18,9) NOT NULL,
  `note` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Услуги';

--
-- Дамп данных таблицы `services`
--

INSERT INTO `services` (`id`, `id_type`, `name`, `description`, `price`, `note`) VALUES
(1, 1, 'Обеспечение информационной безопасности', '<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">Обеспечение информационной безопасности в ИТ инфраструктуре предприятия. В обслуживани входят следующие работы:&nbsp;</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">1. Управление учётными записями пользователей&nbsp;- это создание, изменение, блокировка и удаление учетных записей пользователей для доступа к локальной сети и интернет ресурсам</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">2. Обеспечение защиты периметра сети&nbsp;- это обеспечение настроек информационной безопасности для ограничения доступа в сеть извне</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">3. Антивирусная защита рабочих мест&nbsp;- это установка , настройка антивирусного ПО, техническая поддержка, обеспечение обновления версий и антивирусных баз</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">4. Антивирусная защита серверов&nbsp;- это установка , настройка антивирусного ПО, техническая поддержка, обеспечение обновления версий и антивирусных баз.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">5. Антивирусная защита Интернет-трафика и почты&nbsp;- это установка , настройка антивирусного ПО, техническая поддержка, обеспечение обновления версий и антивирусных баз</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">6. Администрирование средств шифрования&nbsp;- это управление средствами шифрования электронной почты и файлов. Обеспечение работоспособности электронной цифровой подписи</p>', '300.000000000', ' '),
(3, 1, 'Внешняя безопасность', '<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">Информационная безопасность является приоритетным направлением деятельности для специалистов компании &laquo;ServiceIT&raquo;.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">В нашей работе мы стремимся применять самые последние решения и активные меры по обеспечению информационной безопасности наших клиентов.&nbsp;<br />Информационная безопасность включает в себя разработку индивидуальных мер технического и организационного учета, а также внедрения современного программного обеспечения, позволяющего эффективно бороться с утечкой информации и взломом сети.</p>', '1200.000000000', ''),
(4, 1, 'Информационная безопасность и IT аудит', '<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">В настоящее время многие компании предпринимают меры к обеспечению надлежащего уровня информационной безопасности. Наши специалисты готовы произвести полный анализ действующих мер по обеспечению информационной безопасности вашей компании, а также их оценку.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">На основании этих мероприятий будет подготовлен отчет с подробной информацией о текущем положении дел и указанием &laquo;слабым&raquo; мест в информационной безопасности компании.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">Подробные рекомендации помогут вам исправить все недостатки и выработать новую стратегию и тактику компании в сфере информационной безопасности.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">Специалисты компании &laquo;Net Admin&raquo; всегда готовы помочь вам надежно укрыть от третьих лиц всю необходимую информацию и сведения. Мы будем рады ответить на любые вопросы, и проконсультировать вас&nbsp;по телефону.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">Рекомендуем вам ознакомиться с информацией для руководителей и владельцев бизнеса.</p>', '1500.000000000', ''),
(5, 2, 'Поставка сетевого оборудования', '<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">По поставкам сетевого оборудования и дальнейшей настройки:</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">- Роутеры</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">- Свичи</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">- Маршрутизаторы</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">- Коммутаторы</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">- Wi Fi оборудование</p>', '2100.000000000', ''),
(6, 2, 'Пуск и наладка сетевого оборудования', '<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">Какие бы монтажные работы, связанные со сферой ит услуг, ни потребовались вашей организации, компания &laquo;ServiceIT&raquo; всегда готова взяться за эту работу. Наши специалисты осуществляют монтаж любой сложности и структуры. От компьютерной сети небольшого офиса до кабельных сетей комплекса офисных зданий, торговых центров или крупных производственных предприятий.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">Виды монтажных работ:</p>\r\n<ul style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec; text-align: justify;\">\r\n<li>монтаж СКС с ноля;</li>\r\n<li>локальных сетей в офисных зданиях;</li>\r\n<li>компьютерных сетей в промышленных зданиях;</li>\r\n<li>волоконно-оптических сетей (ВОЛС) в здани и между ними;</li>\r\n<li>внутренних сетей складов;</li>\r\n<li>телефонных (аналоговые и цифровые) сетей.</li>\r\n<li>развертывание&nbsp;Wi-Fi сетей, на предприятии, кофе и т.д.;</li>\r\n<li>развертывание систем цифрового видеонаблюдения.</li>\r\n<li>монтаж кроссов;</li>\r\n<li>установка розеток.</li>\r\n<li>монтаж кабельных трасс;</li>\r\n<li>магистральных линий.</li>\r\n</ul>', '3200.000000000', ''),
(7, 2, 'Установка сетей Wi-Fi', '<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">Компания &laquo;ServiceIT&raquo; имеет&nbsp;&nbsp;множество наработанных решений для реализации Wi-Fi доступа к сети Интернет в коммерческих зданиях (торговых и развлекательных центров, ресторанных комплексов) и на производственных предприятиях, где развертывание Wi-Fi сетей является альтернативой или дополнением к кабельным сетям. Системы автоматизации крупных складов тоже строятся с применением беспроводных сетейWi-Fi.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">Важно знать, что частое &laquo;падение&raquo; сигнала беспроводной сети характерно для этого типа оборудования. Наша компания производит монтаж сетей Wi-Fi, используя только проверенное в эксплуатации оборудование. Таким образом, удается избежать частых прерываний в работе сотрудников или недовольства ваших посетителей.</p>', '1500.000000000', ''),
(8, 2, 'Обслуживание сетевого оборудования', '<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">По всем вопросам стоимости обслуживания сетевого оборудования, обращайтесь по телефону</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">8-495-644-47-40</p>', '3400.000000000', ''),
(9, 3, 'Обслуживание серверов', '<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">Доверяйте обслуживание сервера профессиональным инженерам. Наша команда имеет огромный опыт в обслуживании серверов.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">Каждый сервер имеет свои роли и службы.&nbsp;Роль сервера - это цель, которой он служит.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">Сегодня сервера для малого и среднего бизнеса достаточно мощны и выполняют сразу несколько ролей,&nbsp;таких как:&nbsp;</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">- Active Directory<br />- DNS<br />- DHCP<br />- Файловый сервер<br />- Терминальный сервер<br />- Сервер печати<br />- Сервер приложений<br />- Почтовый сервер<br />- web-сервер</p>', '4200.000000000', ''),
(10, 3, 'Абонентское обслуживание серверов', '<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\"><strong>В обслуживание серверв входят следующие работы:&nbsp;</strong></p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">1. Планово-профилактические работы&nbsp;- это плановая проверка оборудования, наличия свободного дискового пространства, загрузки процессоров и т.д. Проверка установленных версий ПО и их обновление (при необходимости)</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">2. Устранение неполадок в работе серверов - это диагностика причины сбоя. Восстановление работоспособности путем изменения настроек/переустановки ПО. Координация ремонта оборудования</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">3. Обеспечение доступа серверов в локальную сеть&nbsp;- это обеспечение доступа к серверам из локальной сети</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">4. Администрирование стандартного серверного ПО&nbsp;- это настройка и обеспечение обновлений операционной системы и стандартных серверных служб</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">5. Резервное копирование и восстановление данных - это организация и контроль резервного копирования данных на серверах по согласованному графику, их хранение и восстановление по запросу</p>', '3200.000000000', ''),
(11, 3, 'Продажа серверов', '<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">Мы предлогаем сервера на платформе Super mikro, гарантия 3 года. Вы можете заказать у нас сервер любой конфигурации! Отправте запрос на покупку сервера, на zakaz@net-admin.ru или позвоните нам в офис.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">Если вы не знаете какая конфигурация вам необходима, наши инженеры выяснят ваши потребности и вы получите именно то предложние которое вам необходимо. Помните, что ресурсы сервера должны быть с запасам под ваши потребности. Звоните мы поможем приобрести сервер, настроить его и по необходимости установить в Дата Центер.</p>', '15000.000000000', ''),
(12, 3, 'Пуск и наладка серверов', '<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">Компания &laquo;ServiceIT&raquo; оказывает услуги по сборке, установке и настройке серверов. Мы предлагаем вам передать все заботы, связанные с обслуживанием серверов, в руки нашей компании.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">Настройка серверов входит в IT аутсорсинг (абонентсоке обслуживание серверов) от компании &laquo;ServiceIT&raquo;. Вы так же можете отдать нам на обслуживание только сервера вашей компании или использовать удаленное администрирование серверов.</p>', '4500.000000000', ''),
(13, 5, 'IT Аудит ', '<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">IT Аудит от компании ServiceIT включает в себя:</p>\r\n<ul style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\">\r\n<li>Аудит оборудования</li>\r\n<li>Аудит программного обеспечения</li>\r\n<li>Аудит структурированной кабельной системы</li>\r\n<li>Аудит инфраструктуры информационной системы</li>\r\n<li>Аудит информационной безопасности</li>\r\n</ul>', '5000.000000000', ''),
(14, 5, 'Отчет по итогам IT аудита', '<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">Отчет, составляемый нашими специалистами по итогам IT Аудита, включает в себя:</p>\r\n<ul style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\">\r\n<li>Цели и задачи</li>\r\n<li>Выводы</li>\r\n<li>Рекомендации</li>\r\n<li>Конкретные предложения</li>\r\n</ul>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">Специалисты компании ServiceIT имеют большой опыт анализа IT инфраструктур самой различной сложности, что позволяет гарантировать объективную независиму оценку и предложить вам качественный IT Аудит в Москве.</p>', '3200.000000000', ''),
(15, 6, 'Обслуживание рабочего места бухгалтера', '<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">Наша компания оказывает полный спектр работ по программный продуктам 1С Предприятие 8.&nbsp;</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">Мы являемся официальными поставищами, программных продуктов от фирмы 1С.&nbsp;<a style=\"color: #5a81b0; line-height: 18px;\" title=\"Сертификаты\" href=\"http://net-admin.ru/o_kompanii/sertifikaty/sertifikaty/\">Наши сертификаты...</a></p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">Обеспечиваем стабильную работу:&nbsp;</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">1. Банк-клиентов</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">2. Систем сдачи отчетности</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">3. Обновление программных продуктов 1С&nbsp;</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">4. Доработка программ 1С</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">5. Консультации бухгалтеров по работе с программой 1С</p>', '4200.000000000', ''),
(16, 7, 'Поставка оборудования систем видеонаблюдения', '<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">Современное видеонаблюдение от компании &laquo;ServiceIT&raquo; &ndash; это новая и эффективно развивающаяся технология обеспечения безопасности коммерческого объекта.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">В функции видеонаблюдения входит не только фактический &laquo;он-лайн&raquo; видео-контроль, но и регистрация поступающей информации, ее хранение, передача, поиск в архивах, а также реализация охранных назначений.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">Для подготовки коммерческого предложения на покупку оборудования и монтаж видеонаблюдения, свяжитесь с нашими специалистами по&nbsp;<strong>телефону 8-495-644-47-40</strong></p>', '4200.000000000', ''),
(17, 7, 'Монтаж и наладка систем видеонаблюдения', '<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">Профессионально собрать и установить систему видеонаблюдения могут только сертифицированные специалисты. Для корректной работы необходима протестированная продукция,&nbsp;использование актуальных технологий, которые зачастую обходятся гораздо дешевле, чем предложения недобросовестных подрядчиков.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">Специалисты компании &laquo;ServiceIT&raquo; всегда предложат вам самый простой и надежный вариант системы, с компонентами высокого качества. Только профессионалы смогут подобрать оптимальный вариант размещения, нужное количество и&nbsp;&nbsp;вид камер, а также дополнительное оборудование с условием дальнейшего расширения возможностей и функций.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">Довольно часто для обеспечения оптимального контроля и безопасности вашей компании или объекта не требуется большое количество видео устройств.</p>', '5000.000000000', ''),
(18, 7, 'Обслуживание систем видеонаблюдения', '<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">В последствие, мы будем рады организовать обслуживание и обеспечить надежную работу вашей системы видеонаблюдения.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">Грамотное расположение видеокамер позволяет&nbsp;&nbsp;добиться оптимизации финансовых затрат на эксплуатацию и обслуживание.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">Специалисты компании &laquo;ServiceIT&raquo; всегда готовы прийти вам на помощь и подобрать оптимальное решение в таком сложном вопросе, как видеонаблюдение. По вашему желанию мы можем отремонтировать и усовершенствовать уже существующую систему видеонаблюдения.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">В любой момент вы можете связаться с нами, а также ознакомиться с другими&nbsp;<a style=\"color: #5a81b0; line-height: 18px;\" title=\"it услугами\" href=\"http://net-admin.ru/it_uslugi/\">it&nbsp;услугами</a>&nbsp;и информацией&nbsp;для руководителей и владельцев бизнеса.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">Стоимость обслуживания видеонаблюдения в Москве - от 400 руб. за видеокамеру и от 700 руб. за видеорегистратр</p>', '2100.000000000', ''),
(19, 8, 'Поставка периферийного оборудования', '<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">По поставкам периферийного оборудования и дальнейшей настройки, обращайтесь по телефону&nbsp;<strong>8-495-644-47-40</strong>&nbsp;или пишите свой запрос на электронную почту&nbsp;<strong>zakaz@net-admin.ru</strong></p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">Наши специалисты профессионально подберут вам технику под ваши нужды и задачи. Вы будете в курсе всех мелочей, начиная от объема печати, заканчивая стоимостью картриджа.&nbsp;</p>', '300.000000000', ''),
(20, 8, 'Пуск и наладка периферийного оборудования', '<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">Если у вас возникли проблемы с установкой или подключение принтера. Закажите выезд инженера.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">Наши инженеры смогут вас проконсультировать и устранить причину удаленно или на месте устранения проблемы.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">Мы рекомендуем нашим клиентам, при покупке периферийной техники, заказывать услугу доставка с установкой и настройкой (принтера, МФУ, сканера и т.д.). Наш инженер, на месте покажет как работает техника, и как ее эксплуатировать в дальнейшем.</p>', '4000.000000000', ''),
(21, 8, 'Обслуживание периферийного оборудования', '<p><strong style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec; text-align: justify;\">Что входит в обслуживание и поддержку периферийного и офисного оборудования &nbsp;</strong><br style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\" /><span style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\">1. Планово-профилактические работы - это техническое обслуживание и плановые проверки офисного оборудования</span><br style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\" /><span style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\">2. Устранение неполадок офисного оборудования - это диагностика причины сбоя. Работы по восстановлению работоспособности ПО или оборудования. Координация ремонта оборудования</span><br style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\" /><span style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\">3. Установка и перемещение оборудования - это подключение новых устройств или их перемещение в пределах помещения</span><br style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\" /><span style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\">4. Обеспечение доступа к сетевым МФУ - это обеспечение работоспособности принтеров/сканеров/МФУ в локальной сети</span><br style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\" /><span style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\">5. Замена расходных материалов - это регулярная замена печатающих картриджей МФУ, принтеров, факсов и т.д. Стоимость расходных материалов в состав услуги не входит</span></p>', '3000.000000000', ''),
(22, 9, 'ИТ обслуживание', '<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">Сегодня ИТ обслуживание принято так же называть - ИТ Аутсорсинг.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">Для наших клиентов в Москве, мы можем предложить ИТ обслуживание с высоким уровнем качества и по разумным ценам.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">Чтобы расчитать базовую стоимость ИТ обслуживания для вашей компании, просто отправьте нам заявку с указанием количества ПК, серверов, мини-АТС. Наши специалисты свяжутся с вами, уточнят все необходимые детали и сообщат стоимость.</p>', '3900.000000000', ''),
(23, 10, 'Обслуживание компьютеров', '<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">Обслуживание компьютера - это полный спектры IT услуг, который направлен на помощь пользователям по различным проблемам.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">При осуществлении IT поддержки, наша компания гарантирует полный и качественный сервис. Пользователь не нужно обращаться в разные компании, например к провайдеру интернета или разработчику программного обеспечения.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">В обслуживание компьютеров, входит полный комплекс услуг по обслуживанию рабочего места пользователя: системный блок, программное обеспечение, телефония, принтеры и т.д. это является залогом вашего спокойствия и успеха. Наши клиенты обращаются к нам за ИТ Услугами&nbsp;по одному номеру и мы решаем все ИТ вопросы.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">Мы предлагаем качественное обслуживание компьютеров, оргтехники и серверов. Точные цены на абонентское обслуживание компьютеров, а также на компьютерную помощь и настройку локальной сети, вы можете узнать, позвонив по телефонам.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">Если Вам требуется ремонт и сервисное обслуживание компьютерной техники, свяжитесь с нами прямо сейчас!</p>', '5000.000000000', ''),
(24, 10, 'Организация рабочих мест', '<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">Специалисты ServiceIT подберут для вас оптимальную конфигурацию персональных компьютеров с учетом потребностей компании или отдельных сотрудников.<br />Мы предложим вам конфигурацию с учетом ваших параметров.<br />Это может быть</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\"><span style=\"text-align: justify;\">- бюджет</span><br /><span style=\"text-align: justify;\">- функциональные задачи</span><br /><span style=\"text-align: justify;\">- увеличенный срок службы и т.д.</span></p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">При подборе конфигурации мы используем только качественные комплектующие от проверенных поставщиков, поэтому даже \"бюджетный\" вариант не исключает для нас понятия качества.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">Мы поможем Вам приобрести оборудование и установим на него необходимое программное обеспечение в течении нескольких рабочих дней с гарантией.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">Готовые к работе персональные компьютеры, мы доставим в ваш офис и орагинзуем рабочие места для сотрудников аккуратно и функционально.&nbsp;</p>', '3200.000000000', ''),
(25, 10, 'Обслуживание рабочих мест', '<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">Если основная составляющая рабочего места - персональный компьютер настроен профессионально, то затруднения в его работе возникают крайне редко.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">Больше всего внимания требует сам пользователь - сотрудник вашей компании.В процессе работы у него возникают различные трудности проблемы с доступом в интернет подключение/отключение новых устройств настройка печати или сканирования сбой в работе электронной почты различные затруднения в работе приложений Специалисты ServiceIT знают как грамотно настроить все технические составляющие рабочего места,а поддержке пользователей мы уделяем особое внимание.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">Каждое рабочее место пользователя имеет свой уникальный номер, который фиксируется при приеме заявки. Сотрудник отправляет свой запрос на электронную почту или обращается к нам по телефону.Заявка фиксируется в единой системе технической поддержки и закрепляется за специалистом,который в заданное время отвечает на запрос сотрудника и решает его проблему.</p>', '4200.000000000', ''),
(26, 11, 'Поставка телефонного оборудования', '<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">Сегодня невозможно представить работу крупного офиса или компании без телефонных переговоров с клиентами и заказчиками, поставщиками и посредниками.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">Для нормального функционирования офиса необходима качественная телефонная связь, от которой напрямую зависит производительность компании, а так же оперативность в работе с потенциальными клиентами и деловыми партнерами. Клиент, который не сможет дозвониться до вас в нужный ему момент, просто обратится в другую компанию и станет пользоваться ее услугами.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">Грамотно организованная телефония не только поднимет вашу производительность на новый уровень, она сделает компанию более презентабельной в глазах потенциальных партнеров и клиентов.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">Существующие телефонные сети и городские АТС не всегда &nbsp;могут обеспечить необходимый вам уровень услуг и качества связи. Из-за постоянных перегрузок и устаревшей аппаратуры связь имеет плохое качество и соединение, что отрицательно сказывается на качестве переговоров с клиентами.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">&nbsp;Настройка телефонии и использование мини-АТС позволит вам получить следующие преимущества:</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">- принимать и удерживать все входящие звонки;</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">- автоматически обрабатывать и перераспределять звонки между сотрудниками;</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">- обеспечить каждого сотрудника личным телефонным номером;</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">- обеспечить качественную связь между дочерними офисами;</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">- организовать беседу с клиентом в тональном наборе;</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">- избежать нежелательных звонков;</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">- организовать конференц-связь с партнерами и подчиненными.&nbsp;</p>', '3200.000000000', ''),
(27, 11, 'Настройка мини-АТС', '<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">Одним из направлений деятельности компании &laquo;ServiceIT&raquo; является проектирование телефонных сетей и монтаж мини-АТС в офисах фирм и на различных предприятиях.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">Мы осуществляем установку мини-АТС &laquo;под ключ&raquo;: вы сможет использовать систему сразу после выполнения монтажных работ. Наши специалисты учтут все ваши требования и пожелания.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">Установка мини-АТС осуществляется в соответствии со всеми современными требованиями на базе оборудования стандарта DECT. Кроме установки наши специалисты &nbsp;произведут наладку и настройку всего оборудования, что гарантирует полное соответствие работы мини-АТС нуждам вашей компании.</p>', '2300.000000000', ''),
(28, 11, 'Обслуживание Телефонии', '<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">Вы можете заключить договор с компанией &laquo;ServiceIT&raquo; на техническое обслуживание и ремонт мини-АТС в офисах и на предприятиях вашей компании.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">Довольно часто от наших клиентов поступают звонки с просьбой перепрограммировать или настроить мини-АТС, так как в работе такого оборудования случаются сбои. Если изначально мини-АТС настраивал не специалист, то при дальнейшей эксплуатации могут возникать неудобства, и в дальнейшем приходится повторно обращаться за помощью расходуя дополнительные средства.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">Довольно часто мини-АТС приобретается в той компании, которая предлагает самую низкую цену. После этого руководитель ищет фирму, которая запрограммирует приобретенную мини-АТС по самой низкой цене. &nbsp;Однако качество результата может сильно отличаться от ваших ожиданий.</p>', '3400.000000000', ''),
(29, 12, 'Бизнес почта от Office 365', '<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">Стоимость корпоративного сервиса от компании Microsoft начинается от 250руб. за 1-го пользоателя в месяц. Вы можете подробнее узнать о тарифном плане Exchange Online&nbsp;<a style=\"color: #5a81b0; line-height: 18px;\" title=\"Exchange Online\" href=\"http://office.microsoft.com/ru-ru/exchange/FX103739072.aspx\" target=\"_blank\" rel=\"noopener\">здесь</a>.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">Microsoft Office 365 предлагает более 7 тарифных планов, под различные функции и задачи. Нашим клиентам мы помогаем выбрать самый подходящий из них.&nbsp;</p>', '4000.000000000', ''),
(30, 12, 'Бизнес почта от Google', '<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">Стоимость бизнес почты от&nbsp;Google Apps:&nbsp;</p>\r\n<ul style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\">\r\n<li>за месяц 350руб. / пользователь</li>\r\n<li>за год 3500 руб. / пользователь&nbsp;</li>\r\n</ul>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">Чтобы заказать услугу \"переход на бизнес почту Google Apps\", отправьте заявку на электронную почту</p>', '4000.000000000', ''),
(31, 12, 'Выделенный почтовый сервер', '<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\"><strong>Мы соберем для вас собственный почтовый сервер, настроим его и введем в эксплуатацию.</strong></p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">Возможны решения на базе:</p>\r\n<ul style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\">\r\n<li>Microsoft Exchange Server 2010/13</li>\r\n<li>Kerio Connect</li>\r\n<li>другой системе, подходящей под ваши задачи.</li>\r\n</ul>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\"><strong>Если вашей компании необходим собственный почтовый сервер, вы попали на нужную страницу!</strong></p>', '4000.000000000', ''),
(32, 13, 'Система контроля сотрудников', '<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\"><strong>Стахановец: Полный Контроль</strong></p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">Стахановец &mdash; программный комплекс, помогающий руководителю выявить риски, предотвратить утечки информации, определить неэффективных сотрудников и &laquo;узкие&raquo; места в их работе.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">Комплекс предназначен для ТОП-менеджмента компаний, руководителей отделов, специалистов по безопасности, IT-специалистов, HR-директоров.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\"><strong>Возможности Стахановец: Полный контроль</strong><strong>&nbsp;</strong></p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\"><strong>Мониторинг и контроль:</strong>&nbsp;рабочего стола, программ и посещенных сайтов; видео и аудио наблюдение за действиями пользователя с помощью веб-камеры и микрофона; мониторинг оборудования и компонентов ПК для препятствия кражам; контроль присутствия и активности сотрудников на рабочем месте, учет времени работы.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\"><strong>DLP:&nbsp;</strong>перехват данных выводимых за периметр ПК; перехват и анализ почтовых сообщений; контроль подозрительных действий, оповещение и запрет на их выполнение.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\"><strong>Контроль отклонений, анализ рисков:&nbsp;</strong>прогноз и анализ рисков связанных с работой сотрудников; автоматическая категоризация рабочих активностей; оповещение о вредоносных действиях; анализ эффективности работы каждого сотрудника; возможность сформировать отчет по отличительным признакам поведения.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\"><strong>Голосовое&nbsp;</strong><strong>DLP</strong><strong>&nbsp;</strong></p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">Позволяет прослушивать переговоры в режиме реального времени, фиксировать и распознавать диалоги в различных мессенджерах: Skype, Lync, Viber и сохранять их в текстовые файлы; мгновенно реагировать на &laquo;кодовые фразы&raquo;.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\"><strong>Анализ клавиатурного почерка</strong></p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">Система анализирует особенности клавиатурного набора каждого сотрудника и составляет цифровую характеристику. После этого комплекс позволяет установить конкретного автора документа или сотрудника, выполнявшего действия за определенным ПК.</p>', '9000.000000000', ''),
(33, 14, 'Поставка', '<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">Наши специалисты подберут технику под ваши бизнес задачи и бюджет.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">Оперативно доставят ее и введут в эксплуатацию.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">На всю продаваемую технику действует гарантия!</p>', '1500.000000000', ''),
(34, 15, 'Поставка продуктов ', '<p><span style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\">Мы продаем и бесплатно устанавливаем программные &nbsp;продукты \"1С Предприяте 8\" компании 1С. Выбрать программные продукты можно на сайте 1C 8 Предприятие купить в интернет магазине&nbsp;</span><a style=\"color: #5a81b0; line-height: 18px; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\" title=\"Аренда 1с\" href=\"http://online1s.ru/\">Online1s.ru</a></p>', '2100.000000000', ''),
(35, 15, 'Настройка программ ', '<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">Наши сертифицированные спецыалисты будут рады оказать следующие работы по программным продуктам 1С:&nbsp;</p>\r\n<ul style=\"color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ececec;\">\r\n<li>Аудит базы 1С</li>\r\n<li>Настройка базы 1С (учет, резервное копирование, заведение пользователей)</li>\r\n<li>Обследование базы 1С (выявление проблем и их исправление)</li>\r\n<li>Обучение программам 1С Бухгалтерия, 1С УПП, 1С Управление торговлей, 1С Зарплата и персонал</li>\r\n<li>Оптимизация и ускорение работы базы 1С&nbsp;</li>\r\n<li>Настройка сервера 1С</li>\r\n</ul>', '6300.000000000', ''),
(36, 15, 'Обслуживание ', '<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">Вы сможете&nbsp;<a style=\"color: #5a81b0; line-height: 18px;\" title=\"Купить программу 1С\" href=\"http://online1s.ru/\">купить продукты &laquo;1С&raquo;</a>&nbsp;по фиксированным ценам, и мы всегда сделаем вам интересное предложение по сопровождению или обслуживанию программных продуктов.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec; text-align: justify;\">У нас работают высококвалифицированные специалисты, что позволяет успешно решать любые поставленные перед нашим коллективом задачи. Наш опыт работы показывает, что разовые выезды специалистов не всегда могут обеспечить предприятию эффективную поддержку работы программ &laquo;1С&raquo;. Необходимо регулярно проводить проверки корректной работы всех приложений и программ, своевременно производить обновление конфигураций.</p>', '4000.000000000', ''),
(37, 16, 'Подключение к сети Интернет', '<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">Наша компания, производим подключение к интернету, офисы, склады, бизнес центы, следующими способами:</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">1. Широкополосный доступ по оптике</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">2. Интернет ADSl по линиям МГТС</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">3. Подключение интернета по радио каналу</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">Самым быстрым и надежным способом подключения доступа к интернету является оптическая линия связи. Оптика позволит получить вашей компании канал с доступа в интернет огромной пропускной способности: 100Мбит/с, 1Гбит/с, 10Гбит/с.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">Так же, наша компания организовывает подключение резервного канала Интернет. Для бесперебойной работы вашей компании.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">Мы подключаем офисы и филиалы организовывая прямые VPN каналы между ними. Что позволяет безопасно и качественно передавать файлы и пользоваться внутренней телефонией между офисами.</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">Отправляйте заявку на подключение к Интернету по электронной почте zakaz@net-admin.ru или звоните нам в офис.</p>', '2000.000000000', ''),
(38, 16, 'Администрирование доступа в Интернет', '<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\"><strong>В обслуживание по администрированию доступа к Интернету входят следующие работы:&nbsp;</strong></p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">1. Планово-профилактические работы&nbsp;- это плановая проверка сервера или маршрутизатора, обеспечивающего корпоративный доступ в Интернет. Обновление системного ПО (при необходимости)</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">2. Устранение неполадок доступа к Интернет&nbsp;- это диагностика причины сбоя, работы по восстановлению интернет-доступа. Взаимодействие с Интернет-провайдерами</p>\r\n<p style=\"font-size: 14px; color: #696969; font-family: \'PT Sans\', Arial, Helvetica, sans-serif; background-color: #ececec;\">3. Мониторинг веб-трафика&nbsp;- это обеспечение работоспособности аппаратного и программного обеспечения для мониторинга и блокирования нежелательного веб-трафика. Создание отчетов по потреблению ресурсов пользователями Интернета</p>', '3000.000000000', '');

-- --------------------------------------------------------

--
-- Структура таблицы `types_of_services`
--

CREATE TABLE `types_of_services` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Типы услуг';

--
-- Дамп данных таблицы `types_of_services`
--

INSERT INTO `types_of_services` (`id`, `name`) VALUES
(1, 'Информационная безопасность'),
(2, 'Сеть и сетевое оборудование'),
(3, 'Обслуживание Сервера'),
(5, 'IT Аудит'),
(6, 'Бухгалтерские программы'),
(7, 'Обслуживание Видеонаблюдения'),
(8, 'Периферийные устройства'),
(9, 'ИТ обслуживание'),
(10, 'Обслуживание компьютеров'),
(11, 'Обслуживание Телефонии'),
(12, 'Электронная почта'),
(13, 'Система контроля'),
(14, 'Поставка'),
(15, '1С'),
(16, 'Интернет');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `fio` varchar(255) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `mail` varchar(255) NOT NULL,
  `level` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_reg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Пользователи';

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `fio`, `tel`, `mail`, `level`, `status`, `update_date`, `date_reg`) VALUES
(1, 'admin', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'admin', '24425', 'admin@mail.ru', 4, 1, '2019-11-25 11:37:46', '2019-11-25 11:37:46'),
(2, 'manager', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Иванов И.И.', '24425', 'users@mail.ru', 2, 1, '2019-12-06 15:11:21', '2019-11-28 13:33:53'),
(3, 'user', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Петров А.А.', '8865543212123', 'user1@mail.ru', 1, 1, '2019-12-06 14:48:30', '2019-11-28 13:35:36'),
(5, '', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Иванов И.И.', '89614568903', 'new@mail.ru', 0, 1, '2019-11-29 20:27:03', '2019-11-28 13:50:56');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `a_a`
--
ALTER TABLE `a_a`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Индексы таблицы `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Индексы таблицы `request_service`
--
ALTER TABLE `request_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_service` (`id_service`),
  ADD KEY `id_request` (`id_request`);

--
-- Индексы таблицы `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type` (`id_type`);

--
-- Индексы таблицы `types_of_services`
--
ALTER TABLE `types_of_services`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `a_a`
--
ALTER TABLE `a_a`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `request_service`
--
ALTER TABLE `request_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT для таблицы `types_of_services`
--
ALTER TABLE `types_of_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `requests`
--
ALTER TABLE `requests`
  ADD CONSTRAINT `requests_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `request_service`
--
ALTER TABLE `request_service`
  ADD CONSTRAINT `request_service_ibfk_2` FOREIGN KEY (`id_service`) REFERENCES `services` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `request_service_ibfk_3` FOREIGN KEY (`id_request`) REFERENCES `requests` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_ibfk_1` FOREIGN KEY (`id_type`) REFERENCES `types_of_services` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
