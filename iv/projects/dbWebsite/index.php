<!doctype HTML>

<head>
  <meta charset="UTF-8">
  <title>HTML, PHP und MYSQL</title>
  <meta name="author" content="DeWil @2019">
  <link rel="stylesheet" href="style.css">
</head>

<body>

  <nav>
    <h1>Simple Database</h1>
    <button>Reset</button>
  </nav>

  <div class="dataContainer">
    <?php

      $sqlName = "localhost";
      $sqlUser = "root";
      $sqlPw = "";
      $conn = new mysqli($sqlName, $sqlUser, $sqlPw);

      sendQuery('DROP DATABASE IF EXISTS Hollywood;', $conn);
      sendQuery('CREATE DATABASE Hollywood;', $conn);
      sendQuery('USE DATABASE Hollywood;', $conn);
      sendQuery('CREATE TABLE Filme ( f_nr INT(4) NOT NULL AUTO_INCREMENT,
                                      f_name VARCHAR(20),
                                      PRIMARY KEY(f_nr)                     );', $conn);

      updateView($conn);
      $conn->close();

    ?>
  </div>

</body>

<?php

  function sendQuery($sql, $conn) {
    if ($conn->query($sql) === TRUE) { /* Good! */ } else {
        echo "Error creating database: " . $conn->error;
    }
  }

  function updateView($conn) {
    $sql = "SELECT * FROM Filme;";
    $result = $conn->query($sql);
    $htmlList = "<ul>";

    if ($result->num_rows > 0) {
        // output data of each row
        while($row = $result->fetch_assoc()) {
          $htmlList .= "<li>" . "id: " . $row["id"]. " - Name: " . $row["firstname"]. " " . $row["lastname"]. "</li>";
        }
    } else {
        echo "0 results";
    }

    $htmlList .= "</ul>";
    echo $htmlList;
  }

?>
