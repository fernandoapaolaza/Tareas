
<%@ page import="edu.unlam.Tarea" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tarea.label', default: 'Tarea')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
		
		<script>

			$(document).ready(function() {
				$('#calendar').fullCalendar({
					header: {
						left: 'prev,next today',
						center: 'title',
						right: 'month,agendaWeek,agendaDay'
					},
					defaultDate: '2014-06-12',
					lang: 'es',
					buttonIcons: false, // show the prev/next text
					weekNumbers: true,
					editable: true,
					events: [
						<g:each in="${tareaInstanceList}" status="i" var="tareaInstance">
						{
							title: '${fieldValue(bean: tareaInstance, field: "detalle")}',
							start: '${tareaInstance.fechaInicio}',
							end: '${tareaInstance.fechaFinalizado}'
							
						},
						</g:each>
					]
				});
			});
		
		</script>
		<style>
			#calendar {
				width: 800px;
				margin: 40px auto;
			}
		
		</style>
		
		
	</head>
	<body>
		<div id='calendar'></div>
	</body>
</html>
