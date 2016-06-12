<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<%@ include file="TopBanner.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Post Blog</title>

<link rel="stylesheet" type="text/css" href="SiteDefault.css" />
<link rel="stylesheet" href="jquery-ui-smoothness.css" />
<script src="jquery.min.js" ></script>
<script src="jquery-ui.min.js" ></script>

<link rel="Stylesheet" type="text/css" href="style/jqueryui/ui-lightness/jquery-ui-1.7.2.custom.css" />
		<script type="text/javascript" src="scripts/jHtmlArea-0.8.js"></script>
    <link rel="Stylesheet" type="text/css" href="style/jHtmlArea.css" />
    	 <style type="text/css">
         /* body { background: #ccc;} */
        div.jHtmlArea .ToolBar ul li a.custom_disk_button 
        {
            background: url(images/disk.png) no-repeat;
            background-position: 0 0;
        }
        div.jHtmlArea { border: solid 1px #ccc; }
        
           </style>
        
   	</head>
	
	<body>
	
    
<div class="postBlogForm mainDiv transparent">
	<form name="blogpost" action="BlogPostServlet" method="post" enctype="multipart/form-data">>
		<h2>Create a Blog Post</h2>
		<p>User Name:	<input type="text" name="userName"  placeholder="Please enter username"></p>
		<p>Blog Name:	<input type="text" name="blogName" id="titleTextInput"	placeholder="Please enter blog name">	</p>
		<p>Date:	<input type="text" name="date"  placeholder="Please enter the date"></p>
		<p>Title:	<input type="text" name="title" id="titleTextInput"	placeholder="Please enter your title">	</p>
		<p>Please enter your blog post:</p>	 
		<p><textarea id="txtDefaultHtmlArea" name="blogEntry" cols="70" rows="15">Please enter your comment</textarea></p>
		<br>
		<p>	Title: <input type="text" name="uploadname1" id="uploadTextInput" placeholder="Please enter upload name"></p>
		<p>Please upload your file(s):</p>
		<p> <input type="file" name="uploadfile1" size="50"/>	</p>
		<p>	Title: <input type="text" name="uploadname2" id="uploadTextInput" placeholder="Please enter upload name"></p>
		<p> <input type="file" name="uploadfile2" size="50"/>	</p>
		<br>
		<span><input type="submit" value="Submit"></span>		<span><input type="Reset" value="Clear"></span>
		
	</form>
</div>
  <script type="text/javascript">    
          $(function() {
               	$("#txtDefaultHtmlArea").htmlarea(); // Initialize jHtmlArea's with all default values
                $(".jHtmlArea iframe").contents().find("body").css('color','white').css('font-family','cursive');
               	$("#txtCustomHtmlArea").htmlarea({
                // Override/Specify the Toolbar buttons to show
                toolbar: [
                    ["bold", "italic", "underline", "|", "forecolor"],
                    ["p", "h1", "h2", "h3", "h4", "h5", "h6"],
                    ["link", "unlink", "|", "image"],                    
                ],
             });
        });
    </script>
</body>
</html>
