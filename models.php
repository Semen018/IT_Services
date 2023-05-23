<?php

/** Модели */

namespace models;

use DBConnection\Command;
use DBConnection\DBConnection;

abstract class Model
{
    private function get_connection($name)
    {
        $connection = DBConnection::getInstance($GLOBALS['DATABASES'], $name);
        return $connection->Connect();
    }

    protected function ExecDBQuery($query, $params = array(), $db = 'MySql')
    {
        if (!$query) return;

        $cmd = new Command($this->get_connection($db), $query, $params);
        return $cmd->Execute();
    }

    protected function DbInteraction($query, $params, $db = 'MySql')
    {
        $cmd = new Command($this->get_connection($db), $query, $params);
        return $cmd->ExecuteNonQuery();
    }
}

class User extends Model
{
    public $login = '';
    public $password = '';
    public $fio = '';
    public $tel = '';
    public $mail = '';
    public $level = 0;
    public $status = '1';

    public function get_auth_user($name, $pass)
    {
        return parent::ExecDBQuery(
            "SELECT * FROM users WHERE (login = :name or mail = :name) and password = :password",
            array(':name' => $name, ':password' => sha1($pass))
        );
    }

    public function create_user()
    {
        return parent::DbInteraction("INSERT INTO users (login, password, fio, tel, mail, level, status) VALUES (?,?,?,?,?,?,?)", array(
            $this->login, sha1($this->password), $this->fio, $this->tel, $this->mail, $this->level, $this->status
        ));
    }

    public function update_user($unique_id)
    {
        parent::DbInteraction(
            "UPDATE users SET login = ?, fio = ?, tel = ?, mail = ?, level = ?, status = ? WHERE id = ?",
            array($this->login, $this->fio, $this->tel, $this->mail, $this->level, $this->status, $unique_id)
        );
    }

    public function update_profile($unique_id)
    {
        parent::DbInteraction(
            "UPDATE users SET login = ?, fio = ?, tel = ?, mail = ? WHERE id = ?",
            array($this->login, $this->fio, $this->tel, $this->mail, $unique_id)
        );
    }

    public function delete_user($unique_id)
    {
        parent::DbInteraction("DELETE FROM users WHERE id = ?", array($unique_id));
    }

    public function checkUser($mail): bool
    {
        if (count(parent::ExecDBQuery("SELECT id FROM users WHERE mail = ?", array($mail))['data']) > 0)
            return false;
        return true;
    }

    public function get_user($unique_id)
    {
        return parent::ExecDBQuery(
            "SELECT id, login, mail, fio, tel, level, status FROM users WHERE id = ?",
            array($unique_id)
        );
    }

    public function get_users()
    {
        return parent::ExecDBQuery("SELECT id, login, mail, fio, tel, level, status, date_reg, update_date FROM users");
    }
}

class Article extends Model
{
    public $name = '';
    public $article_text = '';
    public $status = 0;

    public function create_article()
    {
        return parent::DbInteraction("INSERT INTO articles (name, article_text, status) VALUES (?,?,?)", array(
            $this->name, $this->article_text, $this->status
        ));
    }

    public function delete_article($unique_id)
    {
        parent::DbInteraction("DELETE FROM articles WHERE id = ?", array($unique_id));
    }

    public function get_article($unique_id)
    {
        return parent::ExecDBQuery(
            "SELECT id, name, article_text, status, publication_date FROM articles WHERE id = ?",
            array($unique_id)
        );
    }

    public function update_article($unique_id)
    {
        parent::DbInteraction(
            "UPDATE articles SET name = ?, article_text = ?, status = ? WHERE id = ?",
            array($this->name, $this->article_text, $this->status, $unique_id)
        );
    }

    public function get_articles()
    {
        return parent::ExecDBQuery(
            "SELECT id, name, publication_date, update_date, status FROM articles ORDER BY id"
        );
    }

    public function getPublishedArticles()
    {
        return parent::ExecDBQuery("SELECT id, name, article_text, publication_date FROM articles WHERE status = 1");
    }

    public function getRecentArticles($count)
    {
        return parent::ExecDBQuery("SELECT id, name FROM articles ORDER BY id DESC LIMIT {$count}");
    }

    public function getAboutArticle()
    {
        return parent::ExecDBQuery("SELECT * FROM articles as a INNER JOIN a_a as aa ON a.id = aa.id_article LIMIT 1");
    }

    public function updateAboutArticle($unique_id)
    {
        if (count(parent::ExecDBQuery("SELECT id FROM a_a")['data']) > 0) {
            parent::DbInteraction("UPDATE a_a SET id_article = ? WHERE id = 1", array($unique_id));
        } else {
            parent::DbInteraction("INSERT INTO a_a (id_article) VALUES (?)", array($unique_id));
        }
    }
}

class ServiceType extends Model
{
    public $name = '';

    public function create_type()
    {
        return parent::DbInteraction("INSERT INTO types_of_services (name) VALUES (?)", array(
            $this->name
        ));
    }

    public function update_type($unique_id)
    {
        parent::DbInteraction(
            "UPDATE types_of_services SET name = ? WHERE id = ?",
            array($this->name, $unique_id)
        );
    }

    public function delete_type($unique_id)
    {
        parent::DbInteraction("DELETE FROM types_of_services WHERE id = ?", array($unique_id));
    }

    public function get_type($unique_id)
    {
        return parent::ExecDBQuery(
            "SELECT * FROM types_of_services WHERE id = ?",
            array($unique_id)
        );
    }

    public function get_types()
    {
        return parent::ExecDBQuery(
            "SELECT * FROM types_of_services ORDER BY id"
        );
    }
}

class Service extends Model
{
    public $id_type = '1';
    public $name = '';
    public $description = '';
    public $price = 0.0;
    public $note = '';

    public function create_service()
    {
        return parent::DbInteraction("INSERT INTO services (id_type, name, description, price, note) VALUES (?,?,?,?,?)", array(
            $this->id_type, $this->name, $this->description, $this->price, $this->note
        ));
    }

    public function update_service($unique_id)
    {
        parent::DbInteraction(
            "UPDATE services SET id_type = ?, name = ?, description = ?, price = ?, note = ? WHERE id = ?",
            array($this->id_type, $this->name, $this->description, $this->price, $this->note, $unique_id)
        );
    }

    public function delete_service($unique_id)
    {
        parent::DbInteraction("DELETE FROM services WHERE id = ?", array($unique_id));
    }

    public function get_service($unique_id)
    {
        return parent::ExecDBQuery(
            "SELECT s.id, t.name as s_type, s.name, s.description, s.price, s.note FROM services as s INNER JOIN types_of_services as t ON s.id_type = t.id  WHERE s.id = ?",
            array($unique_id)
        );
    }

    public function get_services()
    {
        return parent::ExecDBQuery(
            "SELECT s.id, t.name as s_type, s.name, s.description, s.price, s.note FROM services as s INNER JOIN types_of_services as t ON s.id_type = t.id ORDER BY s.id"
        );
    }

    public function take_few_services($qty)
    {
        return parent::ExecDBQuery(
            "SELECT s.id, t.name as s_type, s.name, s.description, s.price, s.note FROM services as s INNER JOIN types_of_services as t ON s.id_type = t.id ORDER BY rand() LIMIT {$qty}"
        );
    }
}

class Contacts extends Model
{
    public $tel = '';
    public $mail = '';
    public $about = '';
    public $address = '';
    public $skype = '';

    public function set_contacts()
    {
        return parent::DbInteraction("INSERT INTO contacts (tel, about, mail, address, skype) VALUES (?,?,?,?,?)", array(
            $this->tel, $this->about, $this->mail, $this->address, $this->skype
        ));
    }

    public function update_contacts()
    {
        parent::DbInteraction(
            "UPDATE contacts SET tel = ?, about =  ?, mail = ?, address = ?, skype = ? WHERE id = 1",
            array($this->tel, $this->about, $this->mail, $this->address, $this->skype)
        );
    }

    public function get_contacts()
    {
        return parent::ExecDBQuery("SELECT * FROM contacts LIMIT 1");
    }
}

class Feedback extends Model
{
    public $id_user = null;
    public $fio = '';
    public $mail = '';
    public $feedback_text = '';
    public $status = 0;

    public function create_record()
    {
        if ($this->id_user != null) {
            return parent::DbInteraction("INSERT INTO feedback (id_user, fio, mail, feedback_text, status) VALUES (?,?,?,?,?)", array(
                $this->id_user, $this->fio, $this->mail, $this->feedback_text, $this->status
            ));
        } else {
            return parent::DbInteraction("INSERT INTO feedback (fio, mail, feedback_text, status) VALUES (?,?,?,?)", array(
                $this->fio, $this->mail, $this->feedback_text, $this->status
            ));
        }
    }

    public function get_messages()
    {
        return parent::ExecDBQuery(
            "SELECT f.*, u.login, u.tel FROM feedback as f INNER JOIN users as u ON u.id = f.id_user ORDER BY create_date DESC"
        );
    }
}

class Request extends Model
{
    public $id_user = 1;
    public $comment = '';
    public $approximate_price = '';
    public $services = array();

    public function create_request()
    {
        $id = uniqid('', true);
        parent::DbInteraction("INSERT INTO requests (id, id_user, comment, approximate_price) VALUES (?,?,?,?)", array(
            $id, $this->id_user, $this->comment, $this->approximate_price
        ));
        $s = implode(',', array_map(function ($i) use ($id) {
            return "({$i}, '{$id}')";
        }, $this->services));

        parent::DbInteraction("INSERT INTO request_service (id_service, id_request) VALUES {$s}", array());
        return;
    }

    public function get_all_requests()
    {
        return parent::ExecDBQuery(
            "SELECT r.id, r.request_date, r.comment, r.approximate_price, r.status, e.name, e.id as s_id, u.login, u.fio, u.mail FROM requests as r
             INNER JOIN request_service as s ON s.id_request = r.id
             INNER JOIN services as e ON e.id = s.id_service
             INNER JOIN users as u ON u.id = r.id_user
             ORDER BY r.id"
        );
    }

    public function get_users_requests($unique_id)
    {
        return parent::ExecDBQuery(
            "SELECT r.id, r.request_date, r.comment, r.approximate_price, r.status, e.name, e.id as s_id FROM requests as r
             INNER JOIN request_service as s ON s.id_request = r.id
             INNER JOIN services as e ON e.id = s.id_service
             WHERE r.id_user = ?
             ORDER BY r.id",
            array($unique_id)
        );
    }

    public function change_status($unique_id)
    {
        parent::DbInteraction(
            "UPDATE requests SET status = 1 WHERE id = ?",
            array($unique_id)
        );
    }
}
