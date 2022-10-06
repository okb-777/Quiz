<html>
    <head>
        <title>Quiz</title>
        <meta charset="utf-8">
        <?php
            $db = new mysqli ("127.0.0.1", "root", "","quiz");
            $questions = "SELECT * FROM questions";
        ?>
    </head>
    <body>
        <div>
            Quiz
        </div>
        <?php           
             if($result = $db->query($questions))
             {
                 while($row = $result->fetch_array())
                 {
                    echo $row["questions"]. "<br>";  
                 }
             }   
        ?>
    </body>
</html>