<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Profile</title>
<style>
@import url(http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,400,300);
@import url(http://fonts.googleapis.com/css?family=Roboto:400,300,100);
body,
html,
.wrapper {
  height: 100%;
  width: 100%;
}
body {
  font-family: 'Open Sans', sans-serif;
  color: #404040;
}
.wrapper {
  background: -webkit-gradient(linear, left bottom, right top, color-stop(0, #62075c), color-stop(1, #c30eb8));
  background: -webkit-linear-gradient(left bottom, #62075c 0, #c30eb8 100%);
  background: -moz-linear-gradient(left bottom, #62075c 0, #c30eb8 100%);
  background: -o-linear-gradient(left bottom, #62075c 0, #c30eb8 100%);
  background: -ms-linear-gradient(left bottom, #62075c 0, #c30eb8 100%);
  background: linear-gradient(left bottom, #62075c 0, #c30eb8 100%);
  position: relative;
  z-index: 1;
}
.wrapper:before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  height: 100%;
  width: 100%;
  background-image: url("http://remtsoy.com/experiments/user_card/img/food.png");
  z-index: 2;
  opacity: 0.3;
  -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=30)";
  filter: alpha(opacity=30);
}
.wrapper-inner {
  position: relative;
  z-index: 3;
  height: 100%;
}
.box-wrapper {
  position: absolute;
  top: 50%;
  left: 50%;
  -webkit-transform: translate(-50%, -50%);
  -moz-transform: translate(-50%, -50%);
  -o-transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
  margin-top: 40px;
  z-index: 1;
}
.box {
  position: relative;
  -webkit-border-radius: 8px;
  border-radius: 8px;
  -webkit-box-shadow: 0 4px 1px rgba(0,0,0,0.1);
  box-shadow: 0 4px 1px rgba(0,0,0,0.1);
  width: 380px;
  background: #fff;
  text-align: center;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
  padding-top: 65px;
}
.box-inner {
  padding: 30px;
}
.avatar {
  -webkit-border-radius: 50%;
  border-radius: 50%;
  -webkit-box-shadow: 0 0 0 3px #c30eb8 , 0 0 0 8px #fff;
  box-shadow: 0 0 0 3px #c30eb8 , 0 0 0 8px #fff;
  top: -75px;
  margin-left: -75px;
  left: 50%;
  position: absolute;
}
.avatar img {
  width: 150px;
  -webkit-border-radius: 50%;
  border-radius: 50%;
  display: block;
}
h1,
h2,
h3,
h4,
h5 {
  font-family: 'Open Sans', sans-serif;
  font-weight: 300;
  margin-top: 0;
  margin-bottom: 15px;
}
.name,
.followers-title {
  font-size: 38px;
  font-weight: 100;
  font-family: 'Roboto', sans-serif;
  margin-bottom: 2px;
  color: #3a3a3a;
}
.occupation {
  font-size: 18px;
  font-style: italic;
  color: #707070;
  margin-bottom: 2px;
}
.location {
  color: #b3b3b3;
  font-size: 14px;
  margin-top: 5px;
  margin-bottom: 15px;
  padding-bottom: 15px;
  border-bottom: 1px solid #f2f2f2;
}
.location .fa {
  color: #c6c6c6;
  margin-right: 4px;
}
.followers-title {
  font-size: 30px;
  color: #666;
  margin-bottom: 5px;
}
.followers-list {
  list-style: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  padding-bottom: 5px;
  display: table;
  margin: 0 auto;
}
.followers-list > li {
  display: block;
  float: left;
  margin: 0 5px;
}
.followers-list > li a {
  display: block;
  -webkit-border-radius: 50%;
  border-radius: 50%;
  -webkit-transition: 0.3s;
  -moz-transition: 0.3s;
  -o-transition: 0.3s;
  -ms-transition: 0.3s;
  transition: 0.3s;
  height: 45px;
  width: 45px;
  text-decoration: none;
}
.followers-list > li a img {
  -webkit-border-radius: 50%;
  border-radius: 50%;
  width: 45px;
  display: block;
  -webkit-transition: 0.3s;
  -moz-transition: 0.3s;
  -o-transition: 0.3s;
  -ms-transition: 0.3s;
  transition: 0.3s;
  -webkit-backface-visibility: hidden;
  -moz-backface-visibility: hidden;
  -ms-backface-visibility: hidden;
  backface-visibility: hidden;
  height: 45px;
}
.followers-list > li a:hover img {
  opacity: 0.8;
  -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=80)";
  filter: alpha(opacity=80);
}
.followers-list > li.follow-list-item a {
  background: #4d4d4d;
  color: #fff;
}
.followers-list > li.follow-list-item a:hover {
  background: #c30eb8;
}
.followers-list > li.follow-list-item .fa-plus {
  display: block;
  height: 45px;
  width: 45px;
  line-height: 45px;
}
.social-list {
  list-style: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  padding-top: 1px;
  display: table;
  margin: 0 auto;
}
.social-list > li {
  float: left;
  display: block;
}
.social-list > li > a {
  display: block;
  width: 45px;
  height: 55px;
  line-height: 55px;
  font-size: 28px;
  text-decoration: none;
  color: #b3b3b3;
  border-right: 1px solid #ededed;
  -webkit-transition: 0.2s;
  -moz-transition: 0.2s;
  -o-transition: 0.2s;
  -ms-transition: 0.2s;
  transition: 0.2s;
}
.social-list > li > a:hover {
  background: #c30eb8;
  color: #fff;
}
.social-list > li > a:hover.fa-facebook {
  background: #3b5998;
}
.social-list > li > a:hover.fa-dribbble {
  background: #c32361;
}
.social-list > li > a:hover.fa-twitter {
  background: #55acee;
}
.social-list > li > a:hover.fa-pinterest {
  background: #cd2129;
}
.social-list > li > a:hover.fa-linkedin {
  background: #1683bc;
}
.social-list > li:last-child > a {
  border-right: none;
}
</style>
</head>
<body>
	<div class="wrapper">
		<div class="wrapper-inner">
			<div class="box-wrapper">
				<div class="box">
					<div class="avatar">
						<img src="http://remtsoy.com/experiments/user_card/img/avatar.jpg">
					</div>
					<div class="box-inner">
						<h3 class="name">${userName}</h3>
						<h4 class="occupation">interaction designer</h4>
						<p class="location"><i class="fa fa-map-marker"></i>Austin, Texas</p>
						<h3 class="followers-title">2.5k+ followers</h3>
						<ul class="followers-list">
							<li><a href="#"><img src="http://remtsoy.com/experiments/user_card/img/follower-1.jpg" alt=""></a></li>
							<li><a href="#"><img src="http://remtsoy.com/experiments/user_card/img/follower-2.jpg" alt=""></a></li>
							<li><a href="#"><img src="http://remtsoy.com/experiments/user_card/img/follower-3.jpg" alt=""></a></li>
							<li><a href="#"><img src="http://remtsoy.com/experiments/user_card/img/follower-4.jpg" alt=""></a></li>
							<li class="follow-list-item"><a href="#"><i class="fa fa-plus"></i></a></li>
						</ul>
					</div>
					<ul class="social-list">
						<li><a href="#" class="fa fa-facebook"></a></li>
						<li><a href="#" class="fa fa-dribbble"></a></li>
						<li><a href="#" class="fa fa-twitter"></a></li>
						<li><a href="#" class="fa fa-pinterest"></a></li>
						<li><a href="#" class="fa fa-linkedin"></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>