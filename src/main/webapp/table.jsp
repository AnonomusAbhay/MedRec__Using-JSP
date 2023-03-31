<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:include page="commoncode/header.jsp"></jsp:include>
    <jsp:include page="commoncode/navbar.jsp"></jsp:include>
 
<style>
  .profile-img{
    width:60px;
  }
</style>




<div class="container-fluid">

<!-- DataTales Example -->
<div class="card shadow mb-4">
  <div class="card-header py-3">
    <h6 class="m-0 font-weight-bold text-primary">
            <button type="button" class="btn btn-primary" >
              Registered Users
            </button>
    </h6>
  </div>

  <div class="card-body">

    <div class="table-responsive">

      <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
        <thead>
          
          <tr>
           
                        <th>#</th>
                                    <th>Fullname</th>
                                    <th>Username</th>
                                    <th>Email</th>
                                    <th>Role</th>
                                    <th>Profile Image</th>
                                    <th>Registred Time</th>
            
            <th>DELETE </th>
          </tr>
        </thead>
        <tbody>
            
                <tr">
                    <td>id</td>
                    <td>Abhay</td>
                    <td>Abhay07</td>
                    <td>Abhay@gmail.com</td>
                    <td>Doctor</td>

                    <td> 
                    <div class="profile-img1">
                    <img  class="profile-img" src="'.$user_img.'" alt="'.$Uname.'img">
                    </div>
                    </td>
                    <td>time</td>
                    
            <td>
                <form action="" method="post">
                  <input type="hidden" name="delete_id" value="">
                  <button type="submit" name="delete_btn" class="btn btn-danger"> DELETE</button>
                </form>
            </td>
                </tr>';

        
        </tbody>
      </table>

    </div>
  </div>
</div>

</div>
<!-- /.container-fluid -->

<jsp:include page="commoncode/scripts.jsp"></jsp:include>
<jsp:include page="commoncode/footer.jsp"></jsp:include>