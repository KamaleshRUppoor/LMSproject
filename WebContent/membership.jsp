<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
@import url(http://fonts.googleapis.com/css?family=Open+Sans:400,700);
#cssmenu,
#cssmenu ul,
#cssmenu ul li,
#cssmenu ul li a,
#cssmenu #menu-button {
  margin: 0;
  padding: 0;
  border: 0;
  list-style: none;
  line-height: 1;
  display: block;
  position: relative;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
#cssmenu:after,
#cssmenu > ul:after {
  content: ".";
  display: block;
  clear: both;
  visibility: hidden;
  line-height: 0;
  height: 0;
}
#cssmenu #menu-button {
  display: none;
}
#cssmenu {
  width: auto;
  border-radius: 5px;
  font-family: 'Open Sans', Helvetica, sans-serif;
  background: #3db2e1;
  background: -o-linear-gradient(top, #69c4e8, #21a1d4);
  background: -ms-linear-gradient(top, #69c4e8, #21a1d4);
  background: -webkit-linear-gradient(top, #69c4e8, #21a1d4);
  background: -moz-linear-gradient(top, #69c4e8, #21a1d4);
  background: linear-gradient(to bottom, #69c4e8, #21a1d4);
  box-shadow: inset 0 -3px 0 #1f97c7, inset 0 -3px 3px #1f9acc, inset 0 2px 2px #9ad7ef, inset 1px 0 2px #22a4d9, inset -1px 0 2px #22a4d9, 0 1px 1px rgba(0, 0, 0, 0.1), 0 2px 2px rgba(0, 0, 0, 0.06), 0 3px 3px rgba(0, 0, 0, 0.17), 2px 1px 2px rgba(0, 0, 0, 0.05), -2px 1px 2px rgba(0, 0, 0, 0.05);
}
#cssmenu.align-center > ul {
  font-size: 0;
  text-align: center;
}
#cssmenu.align-center ul ul {
  text-align: left;
}
#cssmenu.align-center > ul > li {
  display: inline-block;
  float: none;
}
#cssmenu.align-right > ul > li {
  float: right;
}
#cssmenu.align-right ul ul {
  text-align: right;
}
#cssmenu > ul > li {
  float: left;
}
#cssmenu > ul > li > a {
  padding: 20px 25px;
  font-size: 13px;
  color: #ffffff;
  text-transform: uppercase;
  letter-spacing: 1px;
  text-shadow: 0 1px 0 rgba(0, 0, 0, 0.25);
  font-weight: 700;
  text-decoration: none;
  -webkit-transition: color .2s ease;
  -moz-transition: color .2s ease;
  -ms-transition: color .2s ease;
  -o-transition: color .2s ease;
  transition: color .2s ease;
}
#cssmenu > ul > li:hover > a,
#cssmenu > ul > li > a:hover,
#cssmenu > ul > li.active > a {
  color: #cae5fd;
}
#cssmenu > ul > li.has-sub > a {
  padding-right: 40px;
}
#cssmenu ul > li.has-sub > a:after {
  content: '';
  position: absolute;
  right: 5px;
  top: 17.5px;
  display: block;
  width: 18px;
  height: 18px;
  border-radius: 9px;
  background: #3db2e1;
  background: -webkit-linear-gradient(top, #58bde5 0%, #4ab7e3 25%, #2babde 50%, #58bde5 75%, #4ab7e3 100%);
  background: -ms-linear-gradient(top, #58bde5 0%, #4ab7e3 25%, #2babde 50%, #58bde5 75%, #4ab7e3 100%);
  background: -moz-linear-gradient(top, #58bde5 0%, #4ab7e3 25%, #2babde 50%, #58bde5 75%, #4ab7e3 100%);
  background: -o-linear-gradient(top, #58bde5 0%, #4ab7e3 25%, #2babde 50%, #58bde5 75%, #4ab7e3 100%);
  background: linear-gradient(to bottom, #58bde5 0%, #4ab7e3 25%, #2babde 50%, #58bde5 75%, #4ab7e3 100%);
  box-shadow: inset 0 -1px 1px #209ed0, inset 0 2px 1px #7fcceb;
  background-size: 36px 36px;
  background-position: 0 0;
  background-repeat: no-repeat;
  -webkit-transition: all 0.1s ease-out;
  -moz-transition: all 0.1s ease-out;
  -ms-transition: all 0.1s ease-out;
  -o-transition: all 0.1s ease-out;
  transition: all 0.1s ease-out;
}
#cssmenu ul > li.has-sub:hover > a:after {
  background-position: 0 -18px;
}
#cssmenu ul > li.has-sub > a:before {
  content: '';
  position: absolute;
  right: 11px;
  top: 25.5px;
  display: block;
  width: 0;
  height: 0;
  border: 3px solid transparent;
  border-top-color: #ffffff;
  z-index: 99;
}
#cssmenu ul > li.has-sub:hover > a:before {
  border-top-color: #19799f;
}
#cssmenu ul ul {
  position: absolute;
  left: -9999px;
  opacity: 0;
  -webkit-transition: top .2s ease, opacity .2s ease;
  -moz-transition: top .2s ease, opacity .2s ease;
  -ms-transition: top .2s ease, opacity .2s ease;
  -o-transition: top .2s ease, opacity .2s ease;
  transition: top .2s ease, opacity .2s ease;
}
#cssmenu > ul > li > ul {
  top: 91px;
  padding-top: 8px;
  border-radius: 5px;
}
#cssmenu > ul > li:hover > ul {
  left: auto;
  top: 51px;
  opacity: 1;
}
#cssmenu.align-right > ul > li:hover > ul {
  right: 0;
}
#cssmenu ul ul ul {
  top: 40px;
}
#cssmenu ul ul > li:hover > ul {
  top: 0;
  left: 178px;
  padding-left: 10px;
  opacity: 1;
}
#cssmenu.align-right ul ul > li:hover > ul {
  left: auto;
  right: 178px;
  padding-left: 0;
  padding-right: 10px;
  opacity: 1;
}
#cssmenu ul ul li a {
  width: 180px;
  padding: 12px 25px;
  font-size: 13px;
  font-weight: 700;
  text-shadow: 0 1px 0 rgba(0, 0, 0, 0.25);
  color: #ffffff;
  text-decoration: none;
  background: #3db2e1;
  -webkit-transition: color .2s ease;
  -moz-transition: color .2s ease;
  -ms-transition: color .2s ease;
  -o-transition: color .2s ease;
  transition: color .2s ease;
}
#cssmenu ul ul li:hover > a,
#cssmenu ul ul li > a:hover,
#cssmenu ul ul li.active > a {
  color: #cae5fd;
}
#cssmenu ul ul li:first-child > a {
  border-top-left-radius: 5px;
  border-top-right-radius: 5px;
  box-shadow: inset 0 2px 2px #88d0ed;
}
#cssmenu ul ul li:last-child > a {
  border-bottom-left-radius: 5px;
  border-bottom-right-radius: 5px;
  box-shadow: inset 0 -3px 0 #27a9de, inset 0 -3px 3px #1f9acc, 0 1px 1px rgba(0, 0, 0, 0.03), 0 2px 2px rgba(0, 0, 0, 0.05), 0 2px 3px rgba(0, 0, 0, 0.13);
}
#cssmenu ul ul > li.has-sub > a:after {
  right: 12px;
  top: 9.5px;
  background: #3db2e1;
  background: -webkit-linear-gradient(top, #58bde5 0%, #4ab7e3 25%, #2babde 50%, #58bde5 75%, #4ab7e3 100%);
  background: -ms-linear-gradient(top, #58bde5 0%, #4ab7e3 25%, #2babde 50%, #58bde5 75%, #4ab7e3 100%);
  background: -moz-linear-gradient(top, #58bde5 0%, #4ab7e3 25%, #2babde 50%, #58bde5 75%, #4ab7e3 100%);
  background: -o-linear-gradient(top, #58bde5 0%, #4ab7e3 25%, #2babde 50%, #58bde5 75%, #4ab7e3 100%);
  background: linear-gradient(to bottom, #58bde5 0%, #4ab7e3 25%, #2babde 50%, #58bde5 75%, #4ab7e3 100%);
  box-shadow: inset 0 -1px 1px #209ed0, inset 0 2px 1px #7fcceb;
  background-size: 36px 36px;
  background-position: 0 0;
  background-repeat: no-repeat;
}
#cssmenu.align-right ul ul > li.has-sub > a:after {
  right: auto;
  left: 12px;
}
#cssmenu ul ul > li.has-sub:hover > a:after {
  background-position: 0 -18px;
}
#cssmenu ul ul > li.has-sub > a:before {
  top: 15.5px;
  right: 16px;
  border-top-color: transparent;
  border-left-color: #ffffff;
}
#cssmenu.align-right ul ul > li.has-sub > a:before {
  top: 15.5px;
  right: auto;
  left: 16px;
  border-top-color: transparent;
  border-right-color: #ffffff;
  border-left-color: transparent;
}
#cssmenu ul ul > li.has-sub:hover > a:before {
  border-top-color: transparent;
  border-left-color: #1c89b5;
}
#cssmenu.align-right ul ul > li.has-sub:hover > a:before {
  border-top-color: transparent;
  border-left-color: transparent;
  border-right-color: #1c89b5;
}
@media all and (max-width: 768px), only screen and (-webkit-min-device-pixel-ratio: 2) and (max-width: 1024px), only screen and (min--moz-device-pixel-ratio: 2) and (max-width: 1024px), only screen and (-o-min-device-pixel-ratio: 2/1) and (max-width: 1024px), only screen and (min-device-pixel-ratio: 2) and (max-width: 1024px), only screen and (min-resolution: 192dpi) and (max-width: 1024px), only screen and (min-resolution: 2dppx) and (max-width: 1024px) {
  #cssmenu {
    width: 100%;
  }
  #cssmenu ul,
  #cssmenu ul ul,
  #cssmenu ul ul ul,
  #cssmenu > ul,
  #cssmenu.align-center > ul,
  #cssmenu > ul > li > ul,
  #cssmenu > ul > li:hover > ul,
  #cssmenu ul ul li:hover > ul,
  #cssmenu ul ul ul li:hover > ul,
  #cssmenu.align-right ul ul,
  #cssmenu.align-right ul ul li:hover > ul,
  #cssmenu.align-right ul ul ul li:hover > ul {
    position: relative;
    left: 0;
    right: auto;
    top: 0;
    width: 100%;
    display: none;
    padding: 0;
    opacity: 1;
    text-align: left;
  }
  #cssmenu ul li {
    width: 100%;
    border-top: 1px solid rgba(120, 120, 120, 0.2);
  }
  #cssmenu > ul > li > a,
  #cssmenu ul ul li a,
  #cssmenu ul ul li:first-child > a,
  #cssmenu ul ul li:last-child > a {
    width: 100%;
    border-radius: 0;
    box-shadow: none;
    background: none;
  }
  #cssmenu ul li a {
    padding-left: 12.5px;
  }
  #cssmenu ul ul li a {
    padding: 14px 25px 14px 27.5px;
  }
  #cssmenu ul ul ul li a {
    padding-left: 42.5px;
  }
  #cssmenu ul ul ul ul li a {
    padding-left: 57.5px;
  }
  #cssmenu > ul > li.has-sub > a:after,
  #cssmenu > ul > li.has-sub > a:before,
  #cssmenu ul ul li.has-sub > a:after,
  #cssmenu ul ul li.has-sub > a:before {
    display: none;
  }
  #cssmenu #menu-button {
    position: relative;
    display: block;
    padding: 20px;
    padding-left: 12.5px;
    cursor: pointer;
    font-size: 13px;
    color: #ffffff;
    text-shadow: 0 1px 0 rgba(0, 0, 0, 0.25);
    font-weight: 700;
    letter-spacing: 1px;
    text-transform: uppercase;
  }
  #cssmenu .submenu-button {
    position: absolute;
    right: 0;
    display: block;
    width: 53px;
    height: 53px;
    border-left: 1px solid rgba(120, 120, 120, 0.2);
    z-index: 10;
    cursor: pointer;
  }
  #cssmenu ul ul .submenu-button {
    height: 41px;
  }
  #cssmenu ul .submenu-button:after,
  #cssmenu #menu-button:after {
    content: '';
    position: absolute;
    right: 12.5px;
    top: 12.5px;
    display: block;
    width: 28px;
    height: 28px;
    border-radius: 15px;
    background: #3db2e1;
    background: -webkit-linear-gradient(top, #58bde5 0%, #4ab7e3 25%, #2babde 50%, #58bde5 75%, #4ab7e3 100%);
    background: -ms-linear-gradient(top, #58bde5 0%, #4ab7e3 25%, #2babde 50%, #58bde5 75%, #4ab7e3 100%);
    background: -moz-linear-gradient(top, #58bde5 0%, #4ab7e3 25%, #2babde 50%, #58bde5 75%, #4ab7e3 100%);
    background: -o-linear-gradient(top, #58bde5 0%, #4ab7e3 25%, #2babde 50%, #58bde5 75%, #4ab7e3 100%);
    background: linear-gradient(to bottom, #58bde5 0%, #4ab7e3 25%, #2babde 50%, #58bde5 75%, #4ab7e3 100%);
    box-shadow: inset 0 -1px 1px #209ed0, inset 0 2px 1px #7fcceb;
    background-size: 56px 56px;
    background-position: 0 0;
    background-repeat: no-repeat;
    -webkit-transition: all 0.1s ease-out;
    -moz-transition: all 0.1s ease-out;
    -ms-transition: all 0.1s ease-out;
    -o-transition: all 0.1s ease-out;
    transition: all 0.1s ease-out;
  }
  #cssmenu ul .submenu-button.submenu-opened:after,
  #cssmenu #menu-button.menu-opened:after {
    background-position: 0 -28px;
  }
  #cssmenu ul ul .submenu-button:after {
    top: 6.5px;
  }
  #cssmenu #menu-button:before,
  #cssmenu .submenu-button:before {
    content: '';
    position: absolute;
    right: 22.5px;
    top: 25.5px;
    display: block;
    width: 0;
    height: 0;
    border: 4px solid transparent;
    border-top-color: #ffffff;
    z-index: 99;
  }
  #cssmenu ul ul .submenu-button:before {
    top: 19.5px;
  }
  #cssmenu #menu-button.menu-opened:before,
  #cssmenu .submenu-button.submenu-opened:before {
    border-top-color: #19799f;
  }
}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Get Membership</title>
</head>
<body>
<div style='position:absolute;z-index:-1;left:0;top:0;width:100%;heigth:100%'>
	<img alt="" src="img/702.jpg" width=100% height=100%>
	</div>
	<div id="cssmenu">
<ul>
<li><a href="dashboard.jsp">Back</a></li>
<li><a href="index.jsp">Logout</a></li>
</ul></div>
<br><br><br>
<center>
<br><br><br><br><br><br>
<form action="setmember.jsp" method="post">
<center><font size="6" color="BF2D34" face="Britannic Bold">Student Membership Form</font></center><br>
<table bgcolor="2F4F4F" cellpadding="8" >
				<tr>
					<td><font size="5" color="yellow" face="Britannic Bold">Student Name</font></td>
					<td><input type="text" name="s_name" /></td>
				</tr>
		<!--  		<tr>
					<td><font size="5" color="yellow" face="Britannic Bold">MembershipId</font></td>
					<td><input type="text" name="id" /></td>
				</tr>
				-->
				<tr>
					<td><font size="5" color="yellow" face="Britannic Bold">Department</font></td><td><font size="5"><select name="dept" style="width: 145px;">
					<option value="">select</option>
					<option value="Computer">Computers</option>
					<option value="Science">Science</option>
					<option value="Maths">Maths</option>
					</select>
					</font>
					</td>					
				</tr>
				<tr><td><font size="5" color="yellow" face="Britannic Bold">Semester</font></td><td><select name="sem" style="width: 145px;">
					<option value="">select</option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					</select>
			<!-- <td><input type="text" name="sem" /></td></tr>-->
				<tr>
					<td></td>
					<td><input type="submit" value="Save Record" />
					 <input type="reset" value="Clear" /></td>
				</tr>
				
			</table>
</form>
</center>
</body>
</html>