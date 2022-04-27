

class Producto {

//Atributos
String? fechaCaducidad;
String? loteNumero;

}

class ProductosFrescos extends Producto{

  //atributos
  String? fechaEnvasado;
  String? paisOrigen;

}

class ProductosRefrigeraros extends Producto{

  //atributos
  String? fechaEnvasado;
  String? paisOrigen;
  String? codigoOrganismoSupervAlimen;
  String? temperaturaMantenimientoR;

}

class ProductosCongelados extends Producto{

  //atributos
  String? fechaEnvasado;
  String? paisOrigen;
  String? temperaturaMantenimientoR;

}

class CongeladosAire extends ProductosCongelados{

  //atributos
  double? porcentNitrogeno;
  double? porcentOxigeno;
  double? porcentDioxidoCarbono;
  double? porcentVaporAgua;
  
}

class CongeladosAgua extends ProductosCongelados{

  //atributos
  double? gramosSal;
  double? litrosAgua;
  String? infoSanidad;
  
}

class CongeladosNitrogeno extends ProductosCongelados{

  //atributos
  String? metodoCongelacion;
  double? segundosExposicion;
  
}
