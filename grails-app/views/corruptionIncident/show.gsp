
<%@ page import="it.against.corruption.in.ua.CorruptionIncident" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'corruptionIncident.label', default: 'CorruptionIncident')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-corruptionIncident" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-corruptionIncident" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list corruptionIncident">
			
				<g:if test="${corruptionIncidentInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="corruptionIncident.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${corruptionIncidentInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${corruptionIncidentInstance?.corrupterName}">
				<li class="fieldcontain">
					<span id="corrupterName-label" class="property-label"><g:message code="corruptionIncident.corrupterName.label" default="Corrupter Name" /></span>
					
						<span class="property-value" aria-labelledby="corrupterName-label"><g:fieldValue bean="${corruptionIncidentInstance}" field="corrupterName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${corruptionIncidentInstance?.corrupterTitle}">
				<li class="fieldcontain">
					<span id="corrupterTitle-label" class="property-label"><g:message code="corruptionIncident.corrupterTitle.label" default="Corrupter Title" /></span>
					
						<span class="property-value" aria-labelledby="corrupterTitle-label"><g:fieldValue bean="${corruptionIncidentInstance}" field="corrupterTitle"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${corruptionIncidentInstance?.creationDate}">
				<li class="fieldcontain">
					<span id="creationDate-label" class="property-label"><g:message code="corruptionIncident.creationDate.label" default="Creation Date" /></span>
					
						<span class="property-value" aria-labelledby="creationDate-label"><g:formatDate date="${corruptionIncidentInstance?.creationDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${corruptionIncidentInstance?.incidentDate}">
				<li class="fieldcontain">
					<span id="incidentDate-label" class="property-label"><g:message code="corruptionIncident.incidentDate.label" default="Incident Date" /></span>
					
						<span class="property-value" aria-labelledby="incidentDate-label"><g:formatDate date="${corruptionIncidentInstance?.incidentDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${corruptionIncidentInstance?.location}">
				<li class="fieldcontain">
					<span id="location-label" class="property-label"><g:message code="corruptionIncident.location.label" default="Location" /></span>
					
						<span class="property-value" aria-labelledby="location-label"><g:fieldValue bean="${corruptionIncidentInstance}" field="location"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${corruptionIncidentInstance?.id}" />
					<g:link class="edit" action="edit" id="${corruptionIncidentInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
