<%@ page import="it.against.corruption.in.ua.CorruptionIncident" %>



<div class="fieldcontain ${hasErrors(bean: corruptionIncidentInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="corruptionIncident.description.label" default="Description" />
		
	</label>
	<g:textArea name="description" cols="40" rows="5" maxlength="1000" value="${corruptionIncidentInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: corruptionIncidentInstance, field: 'corrupterName', 'error')} ">
	<label for="corrupterName">
		<g:message code="corruptionIncident.corrupterName.label" default="Corrupter Name" />
		
	</label>
	<g:textField name="corrupterName" value="${corruptionIncidentInstance?.corrupterName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: corruptionIncidentInstance, field: 'corrupterTitle', 'error')} ">
	<label for="corrupterTitle">
		<g:message code="corruptionIncident.corrupterTitle.label" default="Corrupter Title" />
		
	</label>
	<g:textField name="corrupterTitle" value="${corruptionIncidentInstance?.corrupterTitle}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: corruptionIncidentInstance, field: 'creationDate', 'error')} required">
	<label for="creationDate">
		<g:message code="corruptionIncident.creationDate.label" default="Creation Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="creationDate" precision="day"  value="${corruptionIncidentInstance?.creationDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: corruptionIncidentInstance, field: 'incidentDate', 'error')} required">
	<label for="incidentDate">
		<g:message code="corruptionIncident.incidentDate.label" default="Incident Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="incidentDate" precision="day"  value="${corruptionIncidentInstance?.incidentDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: corruptionIncidentInstance, field: 'location', 'error')} ">
	<label for="location">
		<g:message code="corruptionIncident.location.label" default="Location" />
		
	</label>
	<g:textField name="location" value="${corruptionIncidentInstance?.location}"/>
</div>

