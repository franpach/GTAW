<?php
/*Función que saca solo un numero determinado de mensajes */
	function dividirMensajesForo($tema,$inicio,$tam_pagina) {
		require 'dbconnect.php';
		$sql = "SELECT * FROM aw.mensajes_foro WHERE mensajes_foro.id_tema like '$tema' ORDER BY mensajes_foro.fecha ASC LIMIT $inicio, $tam_pagina";
		$result = mysqli_query($db, $sql);
		mysqli_close($db);
		return $result;
	}
?>