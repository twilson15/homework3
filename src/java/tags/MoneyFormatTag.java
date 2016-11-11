/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tags;
import javax.servlet.jsp.tagext.*;
import java.text.NumberFormat;
/**
 *
 * @author rfeather
 */
public class MoneyFormatTag extends TagSupport{
    NumberFormat fmt = NumberFormat.getCurrencyInstance();
}
