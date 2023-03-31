<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <jsp:include page="commoncode/header.jsp"></jsp:include>



<div class="container">
  <!-- Outer Row -->
  <div class="row justify-content-center">
    <div class="col-xl-6 col-lg-6 col-md-6">
      <div class="card o-hidden border-0 shadow-lg my-5">
        <div class="card-body p-0">
          <!-- Nested Row within Card Body -->
          <div class="row">
            <div class="col-lg-12">
              <div class="p-5">
                <div class="text-center">
                  <h1 class="h4 text-gray-900 mb-4">Admin Login</h1>
                </div>

                <form class="user" action="adminlogin.jsp" method="POST">
                  <div class="form-group">
                    <input
                      type="text"
                      name="adminuname"
                      class="form-control form-control-user"
                      placeholder="Enter Username"
                      required
                    />
                  </div>
                  <div class="form-group">
                    <input
                      type="password"
                      name="adminpass"
                      class="form-control form-control-user"
                      placeholder="Password"
                      required
                    />
                  </div>

                  <button
                    type="submit"
                    name="submit"
                    class="btn btn-primary btn-user btn-block"
                  >
                    Login
                  </button>
                  <hr />
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
 <jsp:include page="commoncode/scripts.jsp"></jsp:include>
 
