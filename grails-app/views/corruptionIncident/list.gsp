
<%@ page import="it.against.corruption.in.ua.CorruptionIncident" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
        <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
		<g:set var="entityName" value="${message(code: 'corruptionIncident.label', default: 'CorruptionIncident')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>

        <style type="text/css">
        #map-canvas { height: 300px; with: 800px }
        </style>

        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
        <script type="text/javascript">

            $(function(){
                var map = null;
                function initialize() {
                    var mapOptions = {
                        center: new google.maps.LatLng(50.469,30.524),
                        zoom: 9
                    };
                    map = new google.maps.Map(document.getElementById("map-canvas"),
                            mapOptions);
                }

                initialize();

                var locations = $(".locationColumn").map(function() {
                    return $(this).text();
                }).get();

                //            var infowindow = new google.maps.InfoWindow();

                var marker, i;

                for (i = 0; i < locations.length; i++) {
                    console.log(locations[i]);
                    var bits = locations[i].split(/,\s*/);
                    point = new google.maps.LatLng(parseFloat(bits[0]),parseFloat(bits[1]));
                    marker = new google.maps.Marker({
                        position: point,
                        map: map
                    });

//                google.maps.event.addListener(marker, 'click', (function(marker, i) {
//                    return function() {
//                        infowindow.setContent(locations[i][0]);
//                        infowindow.open(map, marker);
//                    }
//                })(marker, i));
                }

            });

        </script>

    </head>
	<body>
		<a href="#list-corruptionIncident" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

        <div id="map-canvas"></div>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-corruptionIncident" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="description" title="${message(code: 'corruptionIncident.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="corrupterName" title="${message(code: 'corruptionIncident.corrupterName.label', default: 'Corrupter Name')}" />
					
						<g:sortableColumn property="corrupterTitle" title="${message(code: 'corruptionIncident.corrupterTitle.label', default: 'Corrupter Title')}" />
					
						<g:sortableColumn property="creationDate" title="${message(code: 'corruptionIncident.creationDate.label', default: 'Creation Date')}" />
					
						<g:sortableColumn property="incidentDate" title="${message(code: 'corruptionIncident.incidentDate.label', default: 'Incident Date')}" />
					
						<g:sortableColumn property="location" title="${message(code: 'corruptionIncident.location.label', default: 'Location')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${corruptionIncidentInstanceList}" status="i" var="corruptionIncidentInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${corruptionIncidentInstance.id}">${fieldValue(bean: corruptionIncidentInstance, field: "description")}</g:link></td>
					
						<td>${fieldValue(bean: corruptionIncidentInstance, field: "corrupterName")}</td>
					
						<td>${fieldValue(bean: corruptionIncidentInstance, field: "corrupterTitle")}</td>
					
						<td><g:formatDate date="${corruptionIncidentInstance.creationDate}" /></td>
					
						<td><g:formatDate date="${corruptionIncidentInstance.incidentDate}" /></td>
					
						<td class="locationColumn">${fieldValue(bean: corruptionIncidentInstance, field: "location")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${corruptionIncidentInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
