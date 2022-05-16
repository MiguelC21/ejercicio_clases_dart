

//CLASE PADRE PRODUCTO//
abstract class Producto {

//Atributos
String? fechaCaducidad;
String? loteNumero;
String? fechaEnvasado;
String? paisOrigen;

}



// __________________________________________
//CLASES QUE HEREDAN DE LA CLASE PRODUCTO//

//productos frescos//
class ProductosFrescos implements Producto{

//atributos
  String? fechaCaducidad;
  String? fechaEnvasado;
  String? loteNumero;
  String? paisOrigen;
  //constructor
ProductosFrescos(
  this.fechaCaducidad,
  this.loteNumero,
  this.fechaEnvasado,
  this.paisOrigen 
);

}
//productos refrigerados//
class ProductosRefrigeraros implements Producto{

  //atributos
  String? fechaCaducidad;
  String? fechaEnvasado;
  String? loteNumero;
  String? paisOrigen;

  String? codigoOrganismoSupervAlimen;
  String? temperaturaMantenimientoR;

  //constructor
  ProductosRefrigeraros(
    this.fechaCaducidad,
    this.fechaEnvasado,
    this.loteNumero,
    this.paisOrigen,
    this.codigoOrganismoSupervAlimen,
    this.temperaturaMantenimientoR
  );

}
//productos congelados//
abstract class ProductosCongelados implements Producto{

  //atributos
  int? temperaturaMantenimientoR;

}





//_______________________________________________
//CLASES QUE HEREDAN DE PRODUCTOS_CONGELADOS//

//congelados por aire//
class CongeladosAire implements ProductosCongelados{

  //atributos
  String? fechaCaducidad;
  String? fechaEnvasado;
  String? loteNumero;
  String? paisOrigen;
  int? temperaturaMantenimientoR;

  double? porcentNitrogeno;
  double? porcentOxigeno;
  double? porcentDioxidoCarbono;
  double? porcentVaporAgua;
  //constructor
  CongeladosAire(
    this.fechaCaducidad,
    this.fechaEnvasado,
    this.loteNumero,
    this.paisOrigen,
    this.temperaturaMantenimientoR,
    this.porcentNitrogeno,
    this.porcentOxigeno,
    this.porcentDioxidoCarbono,
    this.porcentVaporAgua
  );
  
}
//congelados por agua//
class CongeladosAgua implements ProductosCongelados{

  //atributos
  String? fechaCaducidad;
  String? fechaEnvasado;
  String? loteNumero;
  String? paisOrigen;
  int? temperaturaMantenimientoR;

  double? gramosSal;
  double? litrosAgua;
  String? infoSanidad;
  //constructor
  CongeladosAgua(
    this.fechaCaducidad,
    this.fechaEnvasado,
    this.loteNumero,
    this.paisOrigen,
    this.temperaturaMantenimientoR,
    this.gramosSal,
    this.infoSanidad,
    this.litrosAgua
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
