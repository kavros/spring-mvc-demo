<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>

<head>
	<title>Student Registration Form</title>
</head>

<body>

	<form:form action="processForm" modelAttribute="student">
	
		First name: <form:input path="firstName" />
		
		<br><br>
	
		Last name: <form:input path="lastName" />
		
		<br><br>
	
		Country:

	    <form:select path="country"> 
	     <form:options items="${theCountryOptions}" />
	    </form:select>
    	
    	<br><br>
    	
        Favorite Language:
        
        <form:radiobuttons path="favoriteLanguage" 
        items="${student.favoriteLanguageOptions}"  />
		
		<br><br>		
		Operating Systems:
		Linux <form:checkbox path="operatingSystems" value="Linux"/>
		Windows <form:checkbox path="operatingSystems" value="Windows"/>
		MAC OS <form:checkbox path="operatingSystems" value="MAC OS"/>
		Chrome OS<form:checkbox path="operatingSystems" value="Chrome OS"/>
		<br><br>
				
		<input type="submit" value="Submit" />
	
	</form:form>


</body>

</html>











