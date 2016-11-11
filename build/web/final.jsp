<%-- 
    Copyright Robert Feather, Kevin Kowalsky, Tyler Wilson
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib prefix="elon" uri= "WEB-INF/tlds/newtag_library.tld"%>
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
    
        
        <table>
            <tr>
                <th><b>Year</b></th>
                <th><b>Value</b></th>          
            </tr>
           
            ${value.makeArray()}
            <c:forEach var="item" items="${value.allTotal}">
            
            <tr>
                <td>${value.index+1}</td>
                <td><elon:moneyFormattag number="${value.allTotal[value.index2]}"/></td>
            </tr>
      
         
            </c:forEach>

        </table>
         
        <a href="index.jsp" > go back to calculator </a>    
            
        <footer></footer>
        
    <c:import url="/includes/footer.jsp" />
    

</section>
    
    
    
   
    