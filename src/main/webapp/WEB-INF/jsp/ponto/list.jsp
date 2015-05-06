<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://dwf.devcase.com.br/dwf" prefix="dwf"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<head>
<meta name="decorator" content="${!empty param.decorator ? param.decorator : 'crud' }" />
</head>
<body>
	<div class="panel panel-default">
		<table class="table table-striped ">
			<thead>
				<tr>
					<th><spring:message code="ponto.nome"  /></th>
					<th><spring:message code="ponto.pontos"  /></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="entity">
					<tr>
						<td>${entity.nome}</td>
						<td>${entity.pontos}</td>
					</tr>
				</c:forEach>
			</tbody>
			<c:if test="${pageCount > 1}">
				<tfoot>
					<tr>
						<td colspan="2">
							<dwf:paginator contentHref="${appPath}/${entityName}/?decorator=table" fetchSize="${fetchSize}" pageNumber="${pageNumber}"/>
						</td>
					</tr>
				</tfoot>
			</c:if>
		</table>
	</div>
</body>
</html>
