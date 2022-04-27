
import 'dart:ffi';

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
  Double? porcentNitrogeno;
  Double? porcentOxigeno;
  Double? porcentDioxidoCarbono;
  Double? porcentVaporAgua;
  
}

class CongeladosAgua extends ProductosCongelados{

  //atributos
  Double? gramosSal;
  Double? litrosAgua;
  String? infoSanidad;
  
}

class CongeladosNitrogeno extends ProductosCongelados{

  //atributos
  String? metodoCongelacion;
  Double? segundosExposicion;
  
}
