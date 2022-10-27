<html>
    <head>
        <title>Quiz</title>
        <meta charset="utf-8">
        <link rel="stylesheet" href="styl.css">
        <?php
            $db=new mysqli("127.0.0.1","root","","quiz");
            $db -> query ('SET NAMES utf8');
            $questions = "SELECT * FROM questions";
            $answers = "SELECT * FROM answears";
            $q_count = "SELECT COUNT(id) FROM questions";
        ?>
    </head>
    <body>
        <div class="banner">
            <h2>Quiz</h2>
        </div>
        <form method="post">
            <div class="main">
                <?php
                    $repeat = 0;
                    $count;
                    $true = 0;
                    $pytania_pow = array();
                    
                    if(isset($_POST['wynik']))//zapisuje poprawne odpowiedzi do wyniku
                    {
                        $true=$_POST['wynik']; 
                    }
                
                    if(isset($_POST['answer']))//poprzednia odpowiedz
                    {
                      $answer=$_POST['answer'];
                      
                        if($answer == 1)
                        {
                            $true++;
                        } 
                    }
                    
                    if(isset($_POST['click']))//zlicza pytania
                    {
                        $count=$_POST["click"];
                        $count++;
                    }
                    else
                    {
                        $count=1;
                    }
                    
                    if($count<=5)//numer pytania od 1-5
                    {
                        if($q_result = $db -> query($q_count))//losowanie
                        {
                            $max_quest = $q_result -> fetch_array();//sprawdza ilość pytań w bazie 
                            $rand=rand(1, $max_quest["COUNT(id)"]);    

                            while($rand==$pytania_pow)
                            {
                                $rand=rand(1, $max_quest["COUNT(id)"]);     
                            }

                            $pytania_pow=$rand;
                        }

                        if($q_result = $db -> query($questions))//wysyła zapytanie do bazy danych o PYTANIA
                        {
                            while($q_row = $q_result -> fetch_array())//zamienia wynik zapytania na tabele
                            {
                                if($q_row["id"]==$rand)
                                {
                                    echo "<h3>".$count.". ".$q_row["content"]."</h3><br>";

                                    if($a_result = $db -> query($answers))//wysyła zapytanie do bazy danych o ODPOWIEDZI
                                    {
                                        while($a_row = $a_result -> fetch_array())//zamienia wynik zapytania na tabele
                                        {
                                            if($a_row["questions_id"]==$q_row["id"])
                                            {
                                                echo "<input type='checkbox' name='answer' value=".$a_row["is_right"].">".$a_row["content"]."<br>";
                                            }
                                        }
                                    }
                                }
                            }
                            echo "<br>";
                        }     
                    }
                
                    else //strona wynik
                    {
                        echo "<h2> Twój wynik: </h2><br><h3>".$true."</h3>";
                    }
                ?>
            </div>
            <div class="footer">
                <a href="wyniki.php">
                    <button type="submit" class="button" oneclick>Sprawdź swój wynik</button>
                </a>
                <input type="hidden" name="click" value="<?php echo $count; ?>">
                <input type="hidden" name="wynik" value="<?php echo $true; ?>">
                <input type="hidden" name="random" value="<?php echo $rand; ?>">
                <input type="hidden" name="tabela" value="<?php echo $pytania_pow; ?>">
            </div>
        </form>
    </body>
</html>