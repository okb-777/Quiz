<html>
    <head>
        <title>Quiz</title>
        <meta charset="utf-8">
        <link rel="stylesheet" href="styl.css">
        <?php
            $db = new mysqli ("127.0.0.1", "root", "","quiz");
            $db -> query ('SET NAMES utf8');
            $rand = rand(1, 10);
            $questions = "SELECT * FROM questions WHERE id=".$rand;
            $answears = "SELECT * FROM answears WHERE questions_id=".$rand;
            
        ?>
    </head>
    <body>
        <form action="wynik.php" method="post">
            <div class="banner">
                <h2>Quiz</h2>
            </div>
            <div class="main">
                <?php
                    /*for($j=0; $j<5; $j++){
                        
                        do{
                            $repeat!="true";
                            $
                        }
                    }*/
                    for($i=0; $i<1; $i++)
                    {
                        if($result = $db->query($questions))
                        {
                            while($row = $result->fetch_array())
                            {
                                echo'
                                    <div><h3>'.$row["id"].'. '.$row["content"].':</h3></div>
                                ';  
                                if($result = $db->query($answears))
                                {
                                    while($row = $result->fetch_array()) 
                                    {
                                        echo'
                                            <div><h4><input type="checkbox" name="'.$row["content"].'" value="'.$row["content"].'">'.$row["content"].'</h4></div>
                                            <input type="hidden" name="is_true" value="'.$row["is_right"].'">
                                        '; 
                                    }
                                }
                            }
                        }  
                    }  
                ?>
            </div>
            <div class="footer">
                <a href="wyniki.php">
                    <button type="submit" class="button" oneclick>Sprawdź swój wynik</button>
                </a>
            </div>
        </form>
    </body>
</html>