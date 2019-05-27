<?php 

  class myDatabase {
    // DB Params
    private $host = 'localhost';
    private $db_name = 'bookroomhotel1';
    private $username = 'root';
    private $password = '';
    private $conn;

    // DB Connect
    public function connect() {
      $this->conn = null;

      try { 
        $this->conn = new PDO('mysql:host=' . $this->host . ';dbname=' . $this->db_name . ";charset=UTF8", $this->username, $this->password);
        $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		$this->conn->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
      } catch(PDOException $e) {
        //echo 'Connection Error: ' . $e->getMessage();
        echo json_encode(array("message"=>"Error related to connect database.", "result"=>-3));
      }

      return $this->conn;
    }
  }

  ?>