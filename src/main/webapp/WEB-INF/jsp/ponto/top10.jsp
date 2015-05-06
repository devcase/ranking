<%@ page contentType="application/json;charset=UTF-8"
%><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"
%><%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"
%><%@ taglib uri="http://dwf.devcase.com.br/dwf" prefix="dwf"
%><%@taglib uri="http://www.springframework.org/tags" prefix="spring"
%>{
<c:forEach items="${list}" var="entity" varStatus="iteration"><c:if test="${iteration.count > 1}">,</c:if>
	{ "pontos": ${entity.pontos},
	  "nome": "${entity.nome}"
	}</c:forEach>
}
