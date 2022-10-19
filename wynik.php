<html>
    <head>
        <?php
            $db = new mysqli ("127.0.0.1", "root", "","quiz");
            $true = "SELECT is_right, questions_id, content FROM answears WHERE is_right=1";
            $questions = "SELECT id, content FROM questions";
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
            
                if(isset($_POST['odpowiedz'])){
                    if($true == 1){
                        echo "<b>Brawo</b>";
                    }
                    else{
                        echo "<b>No niestety błędna odpowiedź</b>";
                    }
                }
                else{
                    echo "Brak odpowiedzi";
                }
            ?>
        </div>
        <div class="main">
            <h3>Twoje odpowiedzi</h3>
            <h5>tu powinno być pytanie ale nie wiem jak</h5>
            <?php
                $answear = $_POST['odpowiedz'];
            
                
            
                echo "<b>".$answear."</b><br>";
            ?>
            <img src="drzewo.jfif">
        </div>
        <div class="footer">
            <a href="index.php"><button type="submit" class="button">powrót</button></a>
        </div>
    </body>
</html>