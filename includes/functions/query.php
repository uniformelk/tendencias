<?php
	include("conexion.php");

	$conexion = new Conexion('../logs/');
	$conexion->conectar();

	$respuesta = new stdClass();
	$respuesta->estado = 1;
    $respuesta->mensaje = "";
    $respuesta->data = [];

	try{
        $datos = array();
		$flag =$_POST['flag'];

		if($flag == 1){
			date_default_timezone_set('America/Lima');
        	$fecha = date("Y-m-d");
            $resultadoN = $conexion->ejecutarConsulta('SELECT * FROM tendencias WHERE fecha = "'.$fecha.'"');
            foreach($resultadoN as $filaN){
                array_push($datos, $filaN);
            }
		}
		if($flag == 2){
			$id = $_POST['id'];
			$resultadoN = $conexion->ejecutarConsulta('SELECT * FROM tendencias WHERE id = '.$id.'; ');
            foreach($resultadoN as $filaN){
                array_push($datos, $filaN);
            }
		}

		$respuesta->data['datos']=$datos;
    
	}catch(Exception $e){
		$respuesta->estado = 2;
		$respuesta->mensaje = ('SELECT * FROM tendencias WHERE fecha ==  2022-06-05');
	}

	print_r(json_encode($respuesta));
?>
