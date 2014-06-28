
<%@ page import="edu.unlam.Tarea" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tarea.label', default: 'Tarea')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-tarea" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-tarea" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="resumen" title="${message(code: 'tarea.resumen.label', default: 'Resumen')}" />
					
						<g:sortableColumn property="detalle" title="${message(code: 'tarea.detalle.label', default: 'Detalle')}" />
					
						<g:sortableColumn property="fechaInicio" title="${message(code: 'tarea.fechaInicio.label', default: 'Fecha Inicio')}" />
					
						<g:sortableColumn property="usuarioSolicitador" title="${message(code: 'tarea.usuarioSolicitador.label', default: 'Usuario Solicitador')}" />
					
						<th><g:message code="tarea.empresa.label" default="Empresa" /></th>
					
						<g:sortableColumn property="estado" title="${message(code: 'tarea.estado.label', default: 'Estado')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${tareaInstanceList}" status="i" var="tareaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${tareaInstance.id}">${fieldValue(bean: tareaInstance, field: "resumen")}</g:link></td>
					
						<td>${fieldValue(bean: tareaInstance, field: "detalle")}</td>
					
						<td><g:formatDate date="${tareaInstance.fechaInicio}" /></td>
					
						<td>${fieldValue(bean: tareaInstance, field: "usuarioSolicitador")}</td>
					
						<td>${fieldValue(bean: tareaInstance, field: "empresa")}</td>
					
						<td>${fieldValue(bean: tareaInstance, field: "estado")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${tareaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
