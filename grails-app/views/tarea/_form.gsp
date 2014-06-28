<%@ page import="edu.unlam.Tarea" %>



<div class="fieldcontain ${hasErrors(bean: tareaInstance, field: 'resumen', 'error')} required">
	<label for="resumen">
		<g:message code="tarea.resumen.label" default="Resumen" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="resumen" required="" value="${tareaInstance?.resumen}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tareaInstance, field: 'detalle', 'error')} required">
	<label for="detalle">
		<g:message code="tarea.detalle.label" default="Detalle" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="detalle" required="" value="${tareaInstance?.detalle}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tareaInstance, field: 'fechaInicio', 'error')} required">
	<label for="fechaInicio">
		<g:message code="tarea.fechaInicio.label" default="Fecha Inicio" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaInicio" precision="day"  value="${tareaInstance?.fechaInicio}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: tareaInstance, field: 'usuarioSolicitador', 'error')} required">
	<label for="usuarioSolicitador">
		<g:message code="tarea.usuarioSolicitador.label" default="Usuario Solicitador" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="usuarioSolicitador" required="" value="${tareaInstance?.usuarioSolicitador}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tareaInstance, field: 'empresa', 'error')} required">
	<label for="empresa">
		<g:message code="tarea.empresa.label" default="Empresa" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="empresa" name="empresa.id" from="${edu.unlam.Empresa.list()}" optionKey="id" required="" value="${tareaInstance?.empresa?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tareaInstance, field: 'estado', 'error')} required">
	<label for="estado">
		<g:message code="tarea.estado.label" default="Estado" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="estado" from="${edu.unlam.Estado?.values()}" keys="${edu.unlam.Estado.values()*.name()}" required="" value="${tareaInstance?.estado?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: tareaInstance, field: 'fechaFinalizado', 'error')} required">
	<label for="fechaFinalizado">
		<g:message code="tarea.fechaFinalizado.label" default="Fecha Finalizado" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaFinalizado" precision="day"  value="${tareaInstance?.fechaFinalizado}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: tareaInstance, field: 'registroTrabajo', 'error')} ">
	<label for="registroTrabajo">
		<g:message code="tarea.registroTrabajo.label" default="Registro Trabajo" />
		
	</label>
	<g:textField name="registroTrabajo" value="${tareaInstance?.registroTrabajo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tareaInstance, field: 'tipoTarea', 'error')} required">
	<label for="tipoTarea">
		<g:message code="tarea.tipoTarea.label" default="Tipo Tarea" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tipoTarea" from="${edu.unlam.TipoTarea?.values()}" keys="${edu.unlam.TipoTarea.values()*.name()}" required="" value="${tareaInstance?.tipoTarea?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: tareaInstance, field: 'usuarioTecnico', 'error')} ">
	<label for="usuarioTecnico">
		<g:message code="tarea.usuarioTecnico.label" default="Usuario Tecnico" />
		
	</label>
	<g:textField name="usuarioTecnico" value="${tareaInstance?.usuarioTecnico}"/>

</div>

