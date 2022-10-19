<html>
    <head>
        <?php
            $db = new mysqli ("127.0.0.1", "root", "","quiz");
            $db -> query ('SET NAMES utf8');
            $true = "SELECT is_right, questions_id, content FROM answears WHERE is_right=1";
            $questions = "SELECT id, content FROM questions";
            ini_set( 'display_errors', 'Off' ); 
            error_reporting( E_ALL );
        ?>
        <meta charset="utf-8">
        <title>Wyniki</title>
        <link rel="stylesheet" href="styl.css">
    </head>
    <body>
        <div class="banner">
            <h2>Twój wynik</h2>
            <?php
                $answear = $_POST['odpowiedz'];
                $is_true = $_POST['is_true'];
                
                if($is_true==1)
                {
                    echo "<b>Brawo! to dobra odpowiedź</b>";
                }
                else{
                    echo "<b>No niestety błędna odpowiedź</b>";
                }
            ?>
        </div>
        <div class="main">
            <h3>Twoje odpowiedzi</h3>
            <?php
                $answear = $_POST['odpowiedz'];
            
                if(isset($_POST['odpowiedz']))
                {
                    echo "<b>".$answear."</b><br>";  
                }
                else
                {
                    echo "Brak odpowiedzi <br>";  
                }
            ?>
            <img src="drzewo.jfif" alt="drzewiec">
        </div>
        <div class="footer">
            <a href="index.php"><button type="submit" class="button">powrót</button></a>
        </div>
    </body>
</html>