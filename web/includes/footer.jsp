
<%-- 
   Copyright Robert Feather, Kevin Kowalsky
--%>


<%@ page import="java.util.GregorianCalendar, java.util.Calendar" %>
<%  
    GregorianCalendar currentDate = new GregorianCalendar();
    int currentYear = currentDate.get(Calendar.YEAR);
%>
<section><p>&copy; Copyright <%= currentYear %> Robert Feather &amp; Kevin Kowalsky</p></section>
</body>

</html>