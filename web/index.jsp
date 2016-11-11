<%-- 
   Copyright Robert Feather, Kevin Kowalsky
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:import url="/includes/header.html" />

        <h1>Future Value Calculator</h1>
          <div class="form"> 
              <section>
        <form action="calculate" method="post"> 
    <input type="hidden" name="action" value="add">        
    <label class="center1">Investment Amount:</label>
    <input class="input1" type="number" name="Amount" min="0" required><br>
    <label class="center2">Yearly Interest Rate:</label>
    <input class="input2" type="number" name="Rate" min="0" step="any" required><br>
    <label class="center3">Number of Years:</label>
    <input class="input3" placeholder="Integer number of years" type="number" name="Years" min="0" required><br>
    
    <label>&nbsp;</label>
    <input class="calculateButton" type="submit" value="Calculate" >
    
        </form></div>
        <footer></footer>

<c:import url="/includes/footer.jsp" />
</section>