<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
$id= $_GET['id'];
require_once('./vendor/autoload.php');
$admin =new App\Admin;
$row=$admin->list_one($id);
//print_r($row);
$user = $row['Firstname'] . "_" . $row['Middlename'];
$password=rand(100000,900000);
$admin->up($id, $user, $password)
   
?>

<?php
try{
                $mail = new PHPMailer(TRUE);
                $mail->setFrom('sakinbarnessamuel@gmail.com', 'MATERITY APP');
                $mail->addAddress($row['Email'], $row['Firstname']);
                $mail->Subject = 'APPROVAL GRANTED';
                $mail->isHTML(TRUE);
                $mail->Body = '<html><strong>Hello'. $row['Firstname']. " " . $row['Lastname'] .'Your Username is  <strong>' . $row['Email'] . '</strong> and Password is  <strong>' . $password . '</strong>. for'.$row['Role'] .' role . Please endeavour to change your password immediately to avoid been hacked</html>';
                $mail->AltBody = 'Your Username is  ' . $row['Email'] . ' and Password is ' . $password . '. Please endeavour to change your password immediately to avoid been hacked';
            
                 /* SMTP parameters. */
               
               /* Tells PHPMailer to use SMTP. */
               $mail->isSMTP();
               
               /* SMTP server address. */
               $mail->Host = 'smtp.gmail.com';
            
               /* Use SMTP authentication. */
               $mail->SMTPAuth = TRUE;
               
               /* Set the encryption system. */
               $mail->SMTPSecure = 'tls';
               
               /* SMTP authentication username. */
               $mail->Username = 'sakinbarnessamuel@gmail.com';
               
               /* SMTP authentication password. */
               $mail->Password = 'AyomikuN1999';
               
               /* Set the SMTP port. */
               $mail->Port = 587;
                $mail->send();
            }
            catch (Exception $e){
                echo $e->errorMessage();
            }
            catch (\Exception $e)
            {
               /* PHP exception (note the backslash to select the global namespace Exception class). */
               echo $e->getMessage();
            }
         header('Location: request.php');
           ?>