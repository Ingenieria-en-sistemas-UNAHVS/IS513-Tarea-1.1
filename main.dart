import 'Ejercicio 1/Circulo.dart';
import 'Ejercicio 2/Tarea.dart';
void main(List<String> args) {
  
  //Ejercicio 1
  Circulo circulo = Circulo(5, "Rojo");
  print("El área del círculo es: ${circulo.calcularArea()}");
  print("El perímetro del círculo es: ${circulo.calcularPerimetro()}");

  //Ejercicio 2
  Tareas tareas = Tareas([]);
  tareas.agregarTarea("Definir una clase", "Para definir una clase en Dart...");
  tareas.agregarTarea("Creación de instancias de una clase", "Para crear una instancia de una clase...");
  tareas.agregarTarea("Definir un constructor", "Los constructores son métodos especiales...");
  tareas.agregarTarea("Crear métodos getter y setters", "Se utilizan para acceder...");
   
  //Cambia el estado por posición de la lista en mostrarTareas(), no por index.
  tareas.cambiarEstado(2);
  //Elimina por posición de la lista en mostrarTareas(), no por index.
  tareas.eliminarTarea(3);

  tareas.mostrarTareas();

}