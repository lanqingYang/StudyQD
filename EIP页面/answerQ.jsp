<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>注册</title>

    <!-- Bootstrap 3.3.7 -->
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/resources/bower_components/bootstrap/dist/css/bootstrap.min.css"
    />
    <!-- Font Awesome -->
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/resources/bower_components/font-awesome/css/font-awesome.min.css"
    />
    <!-- Ionicons -->
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/resources/bower_components/Ionicons/css/ionicons.min.css"
    />
    <!-- Theme style -->
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/resources/dist/css/AdminLTE.min.css"
    />
    <!-- iCheck -->
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/resources/dist/css/skins/_all-skins.min.css"
    />
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/resources/plugins/iCheck/square/blue.css"
    />
  </head>
  <style>
    body {
      width: 100%;
      height: 100%;
      background-image: url("${pageContext.request.contextPath}/resources/pic/sky.jpg");
      background-repeat: no-repeat;
      background-size: cover;
    }
    .container {
      width: 100%;
      height: 100%;
      min-height: 750px;
    }

    .form-horizontal {
      /*background: #fff;*/
      border-radius: 15px;
      text-align: center;
    }
    .form-horizontal .heading {
      display: block;
      font-size: 35px;
      font-weight: 700;
      padding: 35px 0;
      border-bottom: 1px solid #f0f0f0;
      margin-bottom: 30px;
    }
    .form-horizontal .form-group {
      margin: 0 0 25px 0;
      position: relative;
    }
    .form-horizontal .form-control {
      background: #f0f0f0;
      border: none;
      border-radius: 20px;
      box-shadow: none;
      padding: 0 20px 0 45px;
      height: 40px;
      transition: all 0.3s ease 0s;
    }
    .form-horizontal .form-control:focus {
      background: #e0e0e0;
      box-shadow: none;
      outline: 0 none;
    }
    .form-horizontal .form-group i {
      position: absolute;
      top: 12px;
      left: 60px;
      font-size: 17px;
      color: #c8c8c8;
      transition: all 0.5s ease 0s;
    }
    .form-horizontal .form-control:focus + i {
      color: #00b4ef;
    }
    .form-horizontal .fa-question-circle {
      display: inline-block;
      position: absolute;
      top: 12px;
      right: 60px;
      font-size: 20px;
      color: #808080;
      transition: all 0.5s ease 0s;
    }
    .form-horizontal .fa-question-circle:hover {
      color: #000;
    }
    .form-horizontal .main-checkbox {
      float: left;
      width: 20px;
      height: 20px;
      background: #11a3fc;
      border-radius: 50%;
      position: relative;
      margin: 5px 0 0 5px;
      border: 1px solid #11a3fc;
    }
    .form-horizontal .main-checkbox label {
      width: 20px;
      height: 20px;
      position: absolute;
      top: 0;
      left: 0;
      cursor: pointer;
    }
    .form-horizontal .main-checkbox label:after {
      content: "";
      width: 10px;
      height: 5px;
      position: absolute;
      top: 5px;
      left: 4px;
      border: 3px solid #fff;
      border-top: none;
      border-right: none;
      background: transparent;
      opacity: 0;
      -webkit-transform: rotate(-45deg);
      transform: rotate(-45deg);
    }
    .form-horizontal .main-checkbox input[type="checkbox"] {
      visibility: hidden;
    }
    .form-horizontal
      .main-checkbox
      input[type="checkbox"]:checked
      + label:after {
      opacity: 1;
    }
    .form-horizontal .text {
      float: left;
      margin-left: 7px;
      line-height: 20px;
      padding-top: 5px;
      text-transform: capitalize;
    }
    .form-horizontal .btn {
      float: right;
      font-size: 14px;
      color: #fff;
      background: #00b4ef;
      border-radius: 30px;
      padding: 10px 25px;
      border: none;
      text-transform: capitalize;
      transition: all 0.5s ease 0s;
    }

    /* 我修改的部分 */
    .form-group {
      margin: auto;
    }
    .form-group input,
    .form-group select {
      width: 70%;
    }

    button > a {
      color: white;
      text-decoration-style: none;
    }
    a:hover,
    a:active {
      text-decoration: none;
    }

    @media only screen and (max-width: 479px) {
      .form-horizontal .form-group {
        padding: 0 25px;
      }
      .form-horizontal .form-group i {
        left: 45px;
      }
      .form-horizontal .btn {
        padding: 10px 20px;
      }
    }
  </style>
  <body>
    <div class="container">
      <div class="row">
        <div class="col-md-offset-3 col-md-6" style="margin-top: 30px;">
          <form class="form-horizontal" method="get" action="">
            <span class="heading">密码找回</span>
          </form>
          <form
            class="form-horizontal"
            role="form"
            action="${pageContext.request.contextPath}/admin/resignAddAdmin"
            method="get"
            style="margin-left: 10%;"
          >
            <div class="form-group">
              <label for="spwd" class="col-sm-2 control-label">密保问题</label>
              <div class="col-sm-10">
                <input
                  type="text"
                  class="form-control"
                  id="spwd"
                  placeholder="此处为后台获取的密保问题"
                  name="mpwd"
                  readonly
                />
              </div>
            </div>
            <div class="form-group">
              <label for="spwd" class="col-sm-2 control-label">密保答案</label>
              <div class="col-sm-10">
                <input
                  type="text"
                  class="form-control"
                  id="spwd"
                  placeholder="请输入密保答案"
                  name="mpwd"
                />
              </div>
            </div>

            <div class="form-group">
              <div style="width: 100%; margin-left: -5%;">
                <button
                  type="submit"
                  class="btn btn-primary"
                  style="float: none;"
                >
                  <a href="resetPwd.html">下一步</a>
                </button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>

    <!--模态窗，显示提交后服务器返回的信息
  data-backdrop="static"点击外部遮罩层不自动关闭
  data-keyboard="false"点击esc按钮不关闭
-->
    <div
      class="modal fade"
      id="modal-default"
      data-backdrop="static"
      data-keyboard="false"
    >
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button
              type="button"
              class="close"
              data-dismiss="modal"
              aria-label="Close"
            >
              <span aria-hidden="true">&times;</span>
            </button>
            <h4 class="modal-title">提示</h4>
          </div>
          <div class="modal-body">
            <p id="modal-message">One fine body&hellip;</p>
          </div>
          <div class="modal-footer">
            <button
              id="model-closeBtn"
              type="button"
              class="btn btn-default"
              data-dismiss="modal"
            >
              关闭
            </button>
          </div>
        </div>
      </div>
    </div>
    <!--模态窗，显示提交后服务器返回的信息
  data-backdrop="static"点击外部遮罩层不自动关闭
  data-keyboard="false"点击esc按钮不关闭
-->
    <div
      class="modal fade"
      id="modal-default"
      data-backdrop="static"
      data-keyboard="false"
    >
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button
              type="button"
              class="close"
              data-dismiss="modal"
              aria-label="Close"
            >
              <span aria-hidden="true">&times;</span>
            </button>
            <h4 class="modal-title">提示</h4>
          </div>
          <div class="modal-body">
            <p id="modal-message">One fine body&hellip;</p>
          </div>
          <div class="modal-footer">
            <button
              id="model-closeBtn"
              type="button"
              class="btn btn-default"
              data-dismiss="modal"
            >
              关闭
            </button>
          </div>
        </div>
      </div>
    </div>
  </body>

  <!-- jQuery 3 -->
  <script src="${pageContext.request.contextPath}/resources/bower_components/jquery/dist/jquery.min.js"></script>
  <!-- Bootstrap 3.3.7 -->
  <script src="${pageContext.request.contextPath}/resources/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
  <!-- iCheck -->
  <script src="${pageContext.request.contextPath}/resources/plugins/iCheck/icheck.min.js"></script>
</html>
