<%@ page import="edu.unlam.Empresa" %>



<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'nombreEmpresa', 'error')} required">
	<label for="nombreEmpresa">
		<g:message code="empresa.nombreEmpresa.label" default="Nombre Empresa" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombreEmpresa" required="" value="${empresaInstance?.nombreEmpresa}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'tareas', 'error')} ">
	<label for="tareas">
		<g:message code="empresa.tareas.label" default="Tareas" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${empresaInstance?.tareas?}" var="t">
    <li><g:link controller="tarea" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="tarea" action="create" params="['empresa.id': empresaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'tarea.label', default: 'Tarea')])}</g:link>
</li>
</ul>


</div>

