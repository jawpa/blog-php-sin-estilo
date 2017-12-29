<?php 

    $conexion = mysqli_connect("localhost","root","1234","blog");

    if (!$conexion) {
     	echo "la conexión a fallado: " . mysqli_error();
     	exit();
    }

    // creamos la instrucción sql que rescate la info que está en la base de datos
    // las ordenamos de acuerdo a la fecha más nueva
    $consulta = "SELECT * FROM contenido ORDER BY fecha DESC";

    // resultado devuelve un array
    if ($resultado = mysqli_query($conexion,$consulta)) {
    	
    	echo "número de consultas devueltas: " . mysqli_num_rows($resultado) . "<br>";
        while ($registro = mysqli_fetch_assoc($resultado)) {
         	
            echo "<h3>" . $registro['titulo'] . "</h3>";  
            echo "<h4>" . $registro['fecha'] . "</h4>";
            echo "<div style='width:400px'>" . $registro['comentario'] . "</div><br><br>";
            if ($registro['imagen']!= "") {

                    // ubicamos la fuente de la imagen en la carpeta dónde la trasladamos desde la carpeta temporals
                 	echo "<img src='imagenes/" . $registro['imagen'] . "' width='300px' />";
            }

            echo "<hr>";     

        }

    }




 ?>