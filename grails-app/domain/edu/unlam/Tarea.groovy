package edu.unlam

import java.util.Date;

enum TipoTarea{
	
	SERVICIO("Servicio"),
	INCIDENTE("Incidente"),
	SIN_ASIGNAR("Sin Asignar")
	
	String descripcion
	
	TipoTarea(String descripcion){
		this.descripcion=descripcion
	}
	
}

enum Estado{
	
	PENDIENTE("Pendiente"),
	SIN_ASIGNAR("Sin Asignar"),
	EN_PROGRESO("En Progreso"),
	FINALIZADO("Finalizado")
	
	String descripcion
	
	Estado(String descripcion){
		this.descripcion=descripcion
	}
	
}

class Tarea {
	
	String resumen
	String detalle
	Date fechaInicio
	Date fechaFinalizado
	String usuarioTecnico
	String usuarioSolicitador
	String registroTrabajo
	Estado estado = Estado.SIN_ASIGNAR
	TipoTarea tipoTarea = TipoTarea.SIN_ASIGNAR
	
	static hasOne = [empresa: Empresa] // La traduccion es muchas tareas tiene una empresa del tipo Empresa
	static belogsTo = Empresa
	
	static constraints = {
		
		resumen blank: false
		detalle blank: false
		fechaInicio nullable: false
		usuarioSolicitador blank: false
		
	}
}
