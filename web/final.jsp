<%-- 
    Copyright Robert Feather, Kevin Kowalsky
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/includes/header.html" />
<section>
        <h1>Future Value Calculator</h1>
        <jsp:useBean id="value" scope="request" class="business.Value"/>
        <div class="center">
        <label>Amount:</label>
        <span>${value.amount}</span><br>
<label>Rate:</label>
<span>${value.rate}</span><br>
<label>Years:</label>
<span>${value.years}</span><br>
    <lable>Future Value:</lable>
        <span><jsp:getProperty name="value" property="total"/></span><br>
        
        <table>
            <tr>
                <th><b>Year</b></th>
                <th><b>Value</b></th>          
            </tr>
           
            ${value.makeArray()}
            <c:forEach var="item" items="${value.allTotal}">
            
            <tr>
                <td>${value.index+1}</td>
                <td>${value.allTotal[value.index2]}</td>
            </tr>
      
         
            </c:forEach>

        </table>
         
        <a href="index.jsp" > go back to calculator </a>    
            
        <footer></footer>
        
    <c:import url="/includes/footer.jsp" />
        

</section>
    
    
   
    