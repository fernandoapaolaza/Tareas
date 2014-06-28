
<%@ page import="edu.unlam.Tarea" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tarea.label', default: 'Tarea')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-tarea" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-tarea" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list tarea">
			
				<g:if test="${tareaInstance?.resumen}">
				<li class="fieldcontain">
					<span id="resumen-label" class="property-label"><g:message code="tarea.resumen.label" default="Resumen" /></span>
					
						<span class="property-value" aria-labelledby="resumen-label"><g:fieldValue bean="${tareaInstance}" field="resumen"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tareaInstance?.detalle}">
				<li class="fieldcontain">
					<span id="detalle-label" class="property-label"><g:message code="tarea.detalle.label" default="Detalle" /></span>
					
						<span class="property-value" aria-labelledby="detalle-label"><g:fieldValue bean="${tareaInstance}" field="detalle"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tareaInstance?.fechaInicio}">
				<li class="fieldcontain">
					<span id="fechaInicio-label" class="property-label"><g:message code="tarea.fechaInicio.label" default="Fecha Inicio" /></span>
					
						<span class="property-value" aria-labelledby="fechaInicio-label"><g:formatDate date="${tareaInstance?.fechaInicio}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${tareaInstance?.usuarioSolicitador}">
				<li class="fieldcontain">
					<span id="usuarioSolicitador-label" class="property-label"><g:message code="tarea.usuarioSolicitador.label" default="Usuario Solicitador" /></span>
					
						<span class="property-value" aria-labelledby="usuarioSolicitador-label"><g:fieldValue bean="${tareaInstance}" field="usuarioSolicitador"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tareaInstance?.empresa}">
				<li class="fieldcontain">
					<span id="empresa-label" class="property-label"><g:message code="tarea.empresa.label" default="Empresa" /></span>
					
						<span class="property-value" aria-labelledby="empresa-label"><g:link controller="empresa" action="show" id="${tareaInstance?.empresa?.id}">${tareaInstance?.empresa?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${tareaInstance?.estado}">
				<li class="fieldcontain">
					<span id="estado-label" class="property-label"><g:message code="tarea.estado.label" default="Estado" /></span>
					
						<span class="property-value" aria-labelledby="estado-label"><g:fieldValue bean="${tareaInstance}" field="estado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tareaInstance?.fechaFinalizado}">
				<li class="fieldcontain">
					<span id="fechaFinalizado-label" class="property-label"><g:message code="tarea.fechaFinalizado.label" default="Fecha Finalizado" /></span>
					
						<span class="property-value" aria-labelledby="fechaFinalizado-label"><g:formatDate date="${tareaInstance?.fechaFinalizado}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${tareaInstance?.registroTrabajo}">
				<li class="fieldcontain">
					<span id="registroTrabajo-label" class="property-label"><g:message code="tarea.registroTrabajo.label" default="Registro Trabajo" /></span>
					
						<span class="property-value" aria-labelledby="registroTrabajo-label"><g:fieldValue bean="${tareaInstance}" field="registroTrabajo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tareaInstance?.tipoTarea}">
				<li class="fieldcontain">
					<span id="tipoTarea-label" class="property-label"><g:message code="tarea.tipoTarea.label" default="Tipo Tarea" /></span>
					
						<span class="property-value" aria-labelledby="tipoTarea-label"><g:fieldValue bean="${tareaInstance}" field="tipoTarea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tareaInstance?.usuarioTecnico}">
				<li class="fieldcontain">
					<span id="usuarioTecnico-label" class="property-label"><g:message code="tarea.usuarioTecnico.label" default="Usuario Tecnico" /></span>
					
						<span class="property-value" aria-labelledby="usuarioTecnico-label"><g:fieldValue bean="${tareaInstance}" field="usuarioTecnico"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:tareaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${tareaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
