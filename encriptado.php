<?php
				/*	
					class Encryptar {

    
				$Key = "gtaw2549";
			    public static function encrypt ($input) {
			        $output = base64_encode(mcrypt_encrypt(MCRYPT_RIJNDAEL_256
			, md5(Encrypter::$Key), $input, MCRYPT_MODE_CBC, md5(md5(Encrypter
			::$Key))));
			        return $output;
			    }

			    public static function decrypt ($input) {
			        $output = rtrim(mcrypt_decrypt(MCRYPT_RIJNDAEL_256, 
			md5(Encrypter::$Key), base64_decode($input), MCRYPT_MODE_CBC, 
			md5(md5(Encrypter::$Key))), "\0");
			        return $output;
			    }

}
 */

					$db = mysqli_connect('localhost','admin','admin');
					if($db)
					{
					echo "Conexión realizada correctamente";
					}
					else
					{
						echo'Fallo en la conexión.';
					}
					if (!mysqli_select_db($db, "aw")) {
					  
					    echo 'No pudo seleccionar la base de datos';
					}
					
					//$cadena_sql = "INSERT INTO gtaw.usuario VALUES ('papitosabroson2','papitosabroson2@hotmail.es','papitohola','a','Hola mamita',0)";
					//echo $cadena_sql;
					//$consulta = mysqli_query($db,$cadena_sql);
					$nombre = $_POST['Nombre'];
					$contr = $_POST['Contraseña'];
					echo $nombre;
					echo $contr;
					 $Key = "gtaw2549";
					//$pass="hola2";
					 $encriptado = base64_encode(mcrypt_encrypt(MCRYPT_RIJNDAEL_256, md5($Key), $contr, MCRYPT_MODE_CBC, md5(md5($Key))));
					 echo $encriptado;
					print '<br>' ;
					//echo $output;
					//print '<br>' ;
					  // $output2 = rtrim(mcrypt_decrypt(MCRYPT_RIJNDAEL_256, md5($Key), base64_decode($output), MCRYPT_MODE_CBC, md5(md5($Key))), "\0");
					//echo $output2;
					$sql= "SELECT * FROM aw.usuarios WHERE usuarios.id_usuario like '$nombre' ";
					$consulta = mysqli_query($db,$sql);
					if ($consulta) {	
						$fila=mysqli_fetch_assoc($consulta);
						echo $fila['id_usuario'];
						print '<br>';
						echo $fila['contrasenia'];
						print '<br>';
						if($fila['contrasenia'] == $encriptado)
						{
						//Aqui va la pagina
							echo "Ta bien";
							/*$result = mysqli_query( $db,$sql);  
							//se despliega el resultado  
							echo "<table>";  
							echo "<tr>";  
							echo "<th>Nombre</th>";  
							echo "<th>Descripcion</th>";  
							echo "<th>nota</th>";  
							echo "</tr>";  
							while ($row = mysqli_fetch_row($result)){   
							    echo "<tr>";  
							    echo "<td>$row[0]</td>";  
							    echo "<td>$row[4]</td>";  
							    echo "<td>$row[5]</td>";  
							    echo "</tr>";  
							}  
							echo "</table>";
						}
				
						else
						{
						//header('Location: Error.html');
						}
					
						}
						$ok=mysqli_close($db);
						*/}
					}
				    
					?>