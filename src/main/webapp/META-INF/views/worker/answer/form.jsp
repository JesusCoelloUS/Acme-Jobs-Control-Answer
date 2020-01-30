<%--
- form.jsp
-
- Copyright (c) 2019 Rafael Corchuelo.
-
- In keeping with the traditional purpose of furthering education and research, it is
- the policy of the copyright owner to permit non-commercial use and redistribution of
- this software. It has been tested carefully, but it is not guaranteed for any particular
- purposes.  The copyright owner does not job any warranties or representations, nor do
- they accept any liabilities with respect to them.
--%>

<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:form>
	<acme:form-url code="worker.answer.form.label.tracer" path="tracer"/>
	<acme:form-textbox code="worker.answer.form.label.password" path="password"/>
</acme:form>

<jstl:if test="${isProtected}">
	<acme:input type="password" code="worker.answer.form.label.enterPassword" path="enterPassword" group="input"/><acme:button id="button" code="worker.answer.form.button.show"/>
	<script>
		$(document).ready(function(){
			$("#form").hide();
		});
		
		$("#button").click(function(){
			mostrar();
		});
		
		$("#enterPassword").keypress(function(e){
			if(e.which == 13){
				mostrar();
			}
		});
		
		function mostrar(){
			var enterPassword = $("#enterPassword").val();
			var password = $("#password").val();
			if(enterPassword == password){
				$("#form").show();
				$("#input").hide();
				$("#button").hide();
			}else{
				alert("<acme:message code='worker.answer.form.label.enterPassword.error'/>");
			}
		}
	</script>
</jstl:if>
<acme:form-return code="worker.answer.form.button.return"/>