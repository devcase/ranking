<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://dwf.devcase.com.br/dwf" prefix="dwf"%>
<dwf:resolveEL el="${entityName}" var="entity" />
<html>
<head>
<meta name="decorator" content="${!empty param.decorator ? param.decorator : 'crud' }" />
<title>${category}</title>
</head>
<body>
	<dwf:viewPanel>
		<dwf:outputText property="nome" />
	 	<dwf:outputText property="pontos"/>
 	</dwf:viewPanel>
 	
</body>
</html>
