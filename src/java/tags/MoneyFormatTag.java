/*
 Copyright Robert Feather, Tyler Wilson
 */
package tags;

import java.text.NumberFormat;
import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;
/**
 *
 * @author rfeather
 */
public class MoneyFormatTag extends TagSupport{
    NumberFormat fmt = NumberFormat.getCurrencyInstance();
  
        private Double number;
	
        public void setNumber( double number){
            this.number=number;
        }
    
    
   
    @Override
	public int doStartTag() throws JspException {
		
                
		try {
			//Get the writer object for output.
			JspWriter out = pageContext.getOut();

			//Perform substr operation on string.
			out.println(fmt.format(number));

		} catch (IOException e) {
			System.out.print(e);
		}
		return SKIP_BODY;
        }
}

