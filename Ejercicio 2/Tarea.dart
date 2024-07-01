class Tareas{
  List<_Tarea> _tareas = [];
  
  void mostrarTareas(){
    for(int i = 0; i < _tareas.length; i++){
      print("Tarea ${i + 1}:");
      print("Título: ${_tareas[i].titulo}");
      print("Descripción: ${_tareas[i].descripcion}");
      print("Estado: ${_tareas[i].estado ? "Completada" : "Pendiente"}");
      print("*------------------------------*");
    }
  }

  void agregarTarea(String titulo, String descripcion){
    _tareas.add(_Tarea(titulo, descripcion, false));
  }

  void eliminarTarea(int index){
    _tareas.removeAt(index - 1);
  }

  void cambiarEstado(int index){
    _tareas[index - 1].cambiarEstado = !_tareas[index - 1].estado;
  }

  Tareas(this._tareas);
}

class _Tarea {
  String _titulo;
  String _descripcion;
  bool _estado = false;

  String get titulo => _titulo;
  String get descripcion => _descripcion;
  bool get estado => _estado;

  set editarTitulo(String titulo) => _titulo = titulo;
  set editarDescripcion(String descripcion) => _descripcion = descripcion;
  set cambiarEstado(bool estado) => _estado = estado;

  _Tarea(this._titulo, this._descripcion, this._estado);
}