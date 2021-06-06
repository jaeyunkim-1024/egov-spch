<%@ page contentType="text/html; charset=utf-8" %>
<html lang="ko">

<jsp:include page="../../include/head.jsp" />
<jsp:include page="../../include/bootstrap.jsp" />

    <body class="bg-gradient-primary">

        <div class="container">

            <!-- Outer Row -->
            <div class="row justify-content-center">

                <div class="col-xl-10 col-lg-12 col-md-9">

                    <div class="card o-hidden border-0 shadow-lg my-5">
                        <div class="card-body p-0">
                            <!-- Nested Row within Card Body -->
                            <div class="row">
                                <div class="col-lg-6 d-none d-lg-block bg-password-image"></div>
                                <div class="col-lg-6">
                                    <div class="p-5">
                                        <div class="text-center">
                                            <h1 class="h4 text-gray-900 mb-2">비밀번호 찾기</h1>
                                            <p class="mb-4">가입 시 입력한 아이디(이메일)을 입력해주세요.</p>
                                        </div>
                                        <form class="user">
                                            <div class="form-group">
                                                <input type="email" class="form-control form-control-user" id="exampleInputEmail" aria-describedby="emailHelp"
                                                       placeholder="이메일을 입력해주세요.">
                                            </div>
                                            <a href="/login-home" class="btn btn-primary btn-user btn-block">
                                                비밀 번호 초기화
                                            </a>
                                        </form>
                                        <hr>
                                        <div class="text-center">
                                            <a class="small" href="/join">회원 가입</a>
                                        </div>
                                        <div class="text-center">
                                            <a class="small" href="/login-home">로그인</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>

</html>