<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
</head>
<body>
	<?php 
        $conexion = mysqli_connect("localhost","root","1234","blog");

        if (!$conexion) {
         	 echo "la conexión a fallado: " . mysqli_error();
         }

        // chequeamos que esté todo bien con la imagen y la depositamos en la carpeta indicada
        // si recibimos la imagen por error o un error en la subida
        if($_FILES['imagen']['error']){

            switch ($_FILES['imagen']['error']) {
            	
            	// error de tamaño de archivo en php.ini
            	case '1': 
            		echo "el tamaño del archivo subido excede el límite del servidor";
            		break;
            	
            	// error de tamaño de archivo marcado en formulario
                case '2': 
            		echo "el tamaño del archivo subido se ha excedido el límite del formulario";
            		break;

                 
                // 
            	case '3': 
            		echo "el envío del archivo se interrumpió";
            		break;



            	case '4': 
            		echo "no se ha enviado archivo alguno";
            		break;		

            }

        }else{

            echo "entrada subida correctamente";
           
            // si recibimos un archivo por formulario y si el error da 0 (UPLOAD_ERR_OK es igual a 0)
            if (isset($_FILES['imagen']['name']) && ($_FILES['imagen']['error']==UPLOAD_ERR_OK)) {

            	// movemos la imágene desde la carpeta temporal del servidor a la carpeta del servidor elegida
            	
            	$destino_de_ruta = "imagenes/";
            	move_uploaded_file($_FILES['imagen']['tmp_name'], $destino_de_ruta . $_FILES['imagen']['name']);
            	echo "imagen depositada en la carpeta imágnes";
            	
            }else{

                echo "El archivo no se ha podido copiar al directorio de imágenes";

            }

        }

        // recibimos la variables ingresadas en el formulario
        $titulo = $_POST['titulo'];
        $comentario = $_POST['comentario'];

        // tenemos que insertar la fecha actual
        $fecha = date("Y-m-d H:i:s");

        //obtenemos la imagen del botón file
        $imagen = $_FILES['imagen']['name'];


        // insertamos el contenido volcado en el formulario
        $consulta = "INSERT INTO contenido (titulo,fecha,comentario,imagen) values ('".$titulo."','".$fecha."','".$comentario."','".$imagen."')";

        $resultado = mysqli_query($conexion,$consulta);

        mysqli_close($conexion);

        echo "<br><br>Se ha agregado la entrada al blog<br><br>";



	 ?>

	 <a href="formulario.php">Añadir Nueva Entrada</a><br><br>
	 <a href="mostrarBlog.php">Mostrar Las Entradas</a>
</body>
</html>