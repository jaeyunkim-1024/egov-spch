<%@ page contentType="text/html; charset=utf-8" %>

<html lang="ko">

<jsp:include page="../../include/head.jsp" />
<jsp:include page="../../include/bootstrap.jsp" />

<body id="page-top">

<!-- Page Wrapper -->
<div id="wrapper">
    <jsp:include page="../../include/sidebar.jsp" />

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">
            <jsp:include page="../../include/navigator.jsp" />

            <!-- Begin Page Content -->
            <div class="container-fluid">
                <jsp:include page="../../include/paging/pagenation.jsp" />
            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->

        <!-- Footer -->
        <jsp:include page="../../include/footer.jsp" />
        <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<jsp:include page="../../include/logoutLayPop.jsp"/>


</body>

</html>