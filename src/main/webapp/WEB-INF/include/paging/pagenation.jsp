<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=utf-8" %>


<c:if test="${not empty ttlYn and ttlYn eq 'Y'}">
    <h1 class="h3 mb-2 text-gray-800">${ttl}</h1>
    <p class="mb-4">${desc}
        <a target="_blank" href="https://datatables.net">official DataTables documentation</a>
    </p>
</c:if>
<!-- Page Heading -->

<!-- DataTales Example -->
<div class="card shadow mb-4">
    <div class="card-header py-3" align="right">
        <a href="#" class="btn btn-success btn-icon-split">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-check"></i>
                                        </span>
            <span class="text">등록</span>
        </a>

        <a href="#" class="btn btn-danger btn-icon-split">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-trash"></i>
                                        </span>
            <span class="text">삭제</span>
        </a>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <c:if test="${not empty pHeader}">
                    <thead>
                        <tr>
                            <c:forEach var="col" items="${pHeader}">
                                <th>${col}</th>
                            </c:forEach>
                        </tr>
                    </thead>
                </c:if>
                <c:if test="${not empty pFooter}">
                    <tfoot>
                        <tr>
                            <c:forEach var="ft" items="${pFooter}">
                                <th>${ft}</th>
                            </c:forEach>
                        </tr>
                    </tfoot>
                </c:if>
                <tbody>
                    <c:choose>
                        <c:when test="${not empty list}">
                            <c:forEach var="vo" items="${list}">
                                <tr>
                                    <td>Tiger Nixon</td>
                                    <td>System Architect</td>
                                    <td>Edinburgh</td>
                                    <td>61</td>
                                    <td>2011/04/25</td>
                                    <td>$320,800</td>
                                </tr>
                            </c:forEach>
                        </c:when>
                        <c:otherwise>
                            <tr>
                                <td colspan="6" style="text-align:center;">
                                    등록해주세요.
                                </td>
                            </tr>
                        </c:otherwise>
                    </c:choose>
                </tbody>
            </table>
        </div>
    </div>
</div>

<script src="/tmpl/vendor/datatables/jquery.dataTables.min.js"></script>
<script src="/tmpl/vendor/datatables/dataTables.bootstrap4.min.js"></script>
<script src="/tmpl/js/demo/datatables-demo.js"></script>