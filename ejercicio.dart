void main() {
  print('Hola');
}

//CLASE PADRE PRODUCTO//
abstract class Producto {
  //Atributos
  String? fechaCaducidad;
  String? loteNumero;
  String? fechaEnvasado;
  String? paisOrigen;

  Producto ({
    this.fechaCaducidad,
    this.loteNumero,
    this.fechaEnvasado,
    this.paisOrigen,}
  );
}

// __________________________________________
//CLASES QUE HEREDAN DE LA CLASE PRODUCTO//

//productos frescos//
class ProductosFrescos extends Producto{

  // constructor
  ProductosFrescos({
    required fechaCaducidad,
    required loteNumero,
    required fechaEnvasado,
    required paisOrigen,}
  ):super(
    fechaCaducidad: fechaCaducidad,
    loteNumero: loteNumero,
    fechaEnvasado: fechaEnvasado,
    paisOrigen: paisOrigen);
}
//productos refrigerados//
class ProductosRefrigeraros extends Producto{
  //atributos
  String? codigoOrganismoSupervAlimen;
  String? temperaturaMantenimientoR;

  //constructor
  ProductosRefrigeraros({
    required fechaCaducidad,
    required fechaEnvasado,
    required loteNumero,
    required paisOrigen,
    required this.codigoOrganismoSupervAlimen,
    required this.temperaturaMantenimientoR
  }):super(
    fechaCaducidad: fechaCaducidad,
    fechaEnvasado: fechaEnvasado,
    loteNumero: loteNumero,
    paisOrigen: paisOrigen
  );

}
//productos congelados//
abstract class ProductosCongelados extends Producto{

  //atributos
  int? temperaturaMantenimientoR;
  //Constructor
  ProductosCongelados({
    required fechaCaducidad,
    required loteNumero,
    required fechaEnvasado,
    required paisOrigen,
    required this.temperaturaMantenimientoR}
  ):super(
    fechaCaducidad: fechaCaducidad,
    loteNumero: loteNumero,
    fechaEnvasado: fechaEnvasado,
    paisOrigen: paisOrigen);
}





//_______________________________________________
//CLASES QUE HEREDAN DE PRODUCTOS_CONGELADOS//

//congelados por aire//
class CongeladosAire extends ProductosCongelados{

  //atributos
  double? porcentNitrogeno;
  double? porcentOxigeno;
  double? porcentDioxidoCarbono;
  double? porcentVaporAgua;
  //constructor
  CongeladosAire({
    required fechaCaducidad,
    required fechaEnvasado,
    required loteNumero,
    required paisOrigen,
    required temperaturaMantenimientoR,
    required this.porcentNitrogeno,
    required this.porcentOxigeno,
    required this.porcentDioxidoCarbono,
    required this.porcentVaporAgua}
  ): super(
    fechaCaducidad: fechaCaducidad,
    fechaEnvasado: fechaEnvasado,
    loteNumero: loteNumero,
    paisOrigen: paisOrigen,
    temperaturaMantenimientoR:temperaturaMantenimientoR
    );
}
//congelados por agua//
class CongeladosAgua extends ProductosCongelados{

  //atributos
  double? gramosSal;
  double? litrosAgua;
  String? infoSalinidad;
  //constructor
  CongeladosAgua({
    required fechaCaducidad,
    required fechaEnvasado,
    required loteNumero,
    required paisOrigen,
    required temperaturaMantenimientoR,
    required this.gramosSal,
    required this.infoSalinidad,
    required this.litrosAgua}
  ):super(
    fechaCaducidad: fechaCaducidad,
    fechaEnvasado: fechaEnvasado,
    loteNumero: loteNumero,
    paisOrigen: paisOrigen,
    temperaturaMantenimientoR: temperaturaMantenimientoR,
    );
  
}
//congelados por nitrogeno//
class CongeladosNitrogeno implements ProductosCongelados{

  //atributos
  String? fechaCaducidad;
  String? fechaEnvasado;
  String? loteNumero;
  String? paisOrigen;
  int? temperaturaMantenimientoR;

  String? metodoCongelacion;
  double? segundosExposicion;
  //constructor
  CongeladosNitrogeno(
    this.fechaCaducidad,
    this.fechaEnvasado,
    this.loteNumero,
    this.paisOrigen,
    this.temperaturaMantenimientoR,
    this.metodoCongelacion,
    this.segundosExposicion
  );
  
}
