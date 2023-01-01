<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://www.springframework.org/tags"%>

<html>
<head>
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
   background-color: grey;
}

form{
    display: flex;
    flex-direction: column;
    align-items: center;
}

.container-parent{
  border-radius: 10px;
  margin-top: 30px;
  display: flex;
  flex-direction: column;
  width: 35vw;
  background-color:White;
  padding:30px;
}
.container-dash{
    display: flex;
    flex-direction: column;
    align-items: center;
    border-radius: 10px;
  margin-top: 40px;
  margin-right:40px;
  display: flex;
  flex-direction: column;
  width: 90vw;
  height: 37vw;
  background-color:White;
  padding:30px
}

h1, p {
  text-align: center;
}

input {
  margin: 0.25em 0em 1em 0em;
  padding: 0.5em;
  border-style: solid;
  border-color: rgb(152, 193, 217);
  background-color: white;
  border-radius: 0.25em;
  color:  rgb(41, 50, 65);
}
button {
  padding: 0.75em;
  border: none;
  outline: none;
  background-color:#4CAF50;
  color: white;
  border-radius: 0.25em;
}


button:hover {
  cursor: pointer;
  background-color: rgb(41, 50, 65);
}

</style>
</head>

<body>
       <form action="addprocess" method="post" >
        <div class="container-parent">
            
      
        <h1>Add-Product</h1>
      
        <p>Kindly fill in this form to Add Product</p>
        <label for="username"><b>Product Name</b></label>
        <input
          type="text"
          placeholder="Enter Productname"
          name="name"
          
          
        />
 	<label for="email"><b>Product Description</b></label>
	<textarea name="description"  rows="4" cols="50"></textarea>
      
       
         
        
        <label for="pwd"><b>Product Price</b></label>
        <input
          type="text"
          placeholder="Enter price"
          name="price"
          
          
        />

        <button type="submit">Add Product</button>
        
      </div>
    </form>


</body>
</html>