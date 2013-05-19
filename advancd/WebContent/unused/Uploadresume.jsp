<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Onlinejobportal</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
 <link rel="stylesheet" type="text/css" href="css/sddm.css" />
<script type="text/javascript" src="js/xpmenuv21.js"></script>
<script type="text/javascript">
function open_win() 
{
window.open("http://localhost:8080/advancd/Resumedetails.html");
}
</script>
</head>
<body>
<div class="main">
<jsp:include page="header.jsp"></jsp:include>

  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <form action="http://localhost:8080/advancd/edit.jsp">
<input type="hidden" name="prf" value="">

<input type="hidden" name="gf" value="">

<input type="hidden" name="pf" value="">
<input type="hidden" name="ef" value="">
<input type="hidden" name="rf" value="rf">
		  <table align="left" frame="box" bordercolordark="#6633FF" >
		    <!--DWLayoutTable-->
		  <TR><TD colspan="2" > <h2 ><u>Resume Details </u> </h2></TD>
		    <td width="31">&nbsp;</td>
		  </TR>	
		 
	    

	
		<tr> 
			<td valign="top"><p><strong>Copy &amp; paste Resume</strong></p>
			  <p><strong> or</strong></p>
			  <p><strong> Attach Resume here:</strong> </p></td>

			<td colspan="2"  valign="top"> 
			  <p><span class="hintanchor" onClick="showhint('     A detailed Resume that effectively profiles your key professional strengths and academic credentials should be copy-pasted orattach Resume here', this, event, '200px')">
			    <textarea name="tunnel_candidate_bio_data" class="txtfield" rows="7" cols="40" ></textarea></span>
		    or <span class="hintanchor" onMouseOver="showhint(' the file must be __ KB', this, event, '200px')"><input type="file" name="tunnel_candidate_bio_data" /></span></p>		</td>
		</tr><tr> 
			<td colspan="2"  style="border-top: 0px none;" valign="top">&nbsp;</td>
		    <td>&nbsp;</td>
	     </tr>
	<tr>
			<td style="padding-top: 4px;" valign="top"><strong>Please attach your recent photograph to be displayed along with the Resume (optional):</strong></td>
			<td colspan="2">
			<div id="old_image">
				
			<img src="images/sillhouse_detailview.jpg" id="image_upload_old"><div style="margin-top: 6px;" id="div_check_reset_image"><a name="tunnel_reset_image" ihref="">Delete the above image.</a></div>
			  </div>
			<table border="0" cellpadding="0" cellspacing="0">

                         <tbody>
                     </tbody></table>			</td>
		</tr>
		<tr >
	<td valign="top">&nbsp;</td>

			<td colspan="2" class="formline-right" style="padding-top: 0px;"><span class="hintanchor" onMouseOver="showhint(' the file must be __ KB', this, event, '200px')"><input name="tunnel_reset_image" id="tunnel_reset_image1" value="Upload" type="file" /></span>
			  <div style="display: none; font-size: 12px;" id="remove_text_check"><a >Delete and select again</a></div>    </td> 
		</tr>
<tr> 
			<td class="formline" valign="top"><strong>Additional Information:</strong></td>
			<td colspan="2" class="formline-right" valign="top"> 
			  <p>
			  <span class="hintanchor" onClick="showhint(' If there is any additional information that may be relevant to your search, please elaborate here.', this, event, '200px')">
			    <textarea name="tunnel_kommentar" class="txtfield" rows="7" cols="40"></textarea></span>		      </p>	  </td>
		</tr>
	
			<tr> 
			
			<td colspan="3" class="formline-right" valign="top"> 
			  <div align="center"><input type="submit" name="submit" value="submit">
			  </div>
			  
			    </td>
			    
		            
			</tr>			

	  <td>&nbsp;</td>
	  <td>&nbsp;</td>
	</table>
</form>

        
      </div>
  </div>
       
 
        <p class="pages"><small>&nbsp;&nbsp;</small></p>
      
      <div class="sidebar">
        
     
		 <div class="clr"></div>
		 
         </div>
      </div>
     
 
  
      
        

      <div class="clr"></div>
 
 <div ><jsp:include page="footer.jsp"/>
  </div>

</body>
</html>
