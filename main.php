
					<?php
					$correo = $_POST['Correo'];
					$contr= $_POST['Contraseña'];



					echo $correo;
					echo $contr;
					$db = mysqli_connect('localhost','admin','admin');
					if($db)
					{
					echo "Conexión realizada correctamente";
					}
					else
					{
						echo'Fallo en la conexión.';
					}

					if (!mysqli_select_db($db, "gtaw")) {
					    echo 'No pudo seleccionar la base de datos';
					}
					//$cadena_sql = "INSERT INTO gtaw.usuario VALUES ('papitosabroson2','papitosabroson2@hotmail.es','papitohola','a','Hola mamita',0)";
					//echo $cadena_sql;

					//$consulta = mysqli_query($db,$cadena_sql);
					echo 'hola2';
					echo $contr;
					$contr=$contr + "hola";
					echo $contr;
					$sql= "SELECT * FROM gtaw.usuario WHERE usuario.correo like '$correo' AND usuario.contrasenia like '$contr'";
					$consulta = mysqli_query($db,$sql);

					if ($consulta) {	
						$fila=mysqli_fetch_assoc($consulta);
						echo $fila['nombre'];
						if($fila['correo'] == $correo)
						{
						//Aqui va la pagina
							$result = mysqli_query( $db,$sql);  
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

				    
					?>