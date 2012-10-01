<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<jsp:useBean id="gallery" scope="request" type="com.google.gdata.data.photos.UserFeed"/>

[
<c:forEach var="album" items="${gallery.albumEntries}" varStatus="status">
    <c:if test="${album.photosUsed > 0}">
    	{ "label":"${album.title.plainText}", "value":"/${album.name}${picasa.urlSuffix}" }
    	${not status.last ? ',' : ''}
    </c:if>
</c:forEach>
]