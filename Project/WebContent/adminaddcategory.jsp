<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin Add Category</title>
</head>
<body background ="admin.jpg">
<form name="form1" method="post" action="./AdminCategoryServlet"> 

<h1> Create New Category! </h1>
<table>
			<tr>
				<td><h4>Enter Category Name:</h4></td>
				<td><input type="text" name="category_name" placeholder="category name"></td>
			</tr>
			<tr>
				<td><h4>Select Category_pic:</h4></td>
				<td><input type="text" name="category_pic" placeholder="insert image path"></td>
			</tr>
			
			<tr>
				<td>
		</table>
<input type="submit" name="submit" value="Submit">
</form> 
  <!--      <div>
            <h3> Choose File to Upload in Server </h3>
            <form action="<%=request.getContextPath() %>/FileUploadHandler" method="post" enctype="multipart/form-data">
                <input type="file" name="file" />
                <input type="submit" value="upload" />
            </form>          
        </div>   -->
</body>
</html>