<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<title>Digimedia Advertising</title>
	
	<link rel='stylesheet' href='<c:url value="/resources/css/uidesign.css" />' type='text/css' media='all' />
	<link rel='stylesheet' href='<c:url value="/resources/css/jquery-ui.css" />' type='text/css' media='all' />
	
	<script src="<c:url value="/resources/js/jquery-1.11.1.js" />"></script>
    <script src="<c:url value="/resources/js/jquery-ui.js" />"></script>
     
<script>
$(function() {
  $( "#tabs" ).tabs();
});
</script>




</head>

<body>


	<div class="wrapper">
		<div class="container">
			<div id="tabs">
				<ul>
				    <li><a href="#dashboard">DashBoard</a></li>
					<li><a href="#publish">Publisher</a></li>
					<li><a href="#demand">Demand</a></li>
					<li><a href="#reports">Report</a></li>
				
				<div class="sign">
					<span class="placement">Sign In</span>
				</div>
					
				<div id="dashboard">
				</div>
				<div id="publish">
					<% 
  	if((String)session.getAttribute("error") != null){ %>
					<h4>Please try again.</h4>
					<%} %>
					<form method="post" action="PublishController">
						<table>
                <tr> 
                    <td style="text-align: right">
                        Existing
                    </td>
                    <td style="text-align: right; vertical-align: top">
                        <input type="checkbox" name="myCheckbox">	
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">
                        Publisher Name:
                    </td>
                    <td style="text-align: right; vertical-align: top">
                        <input type="text" name="pubName" id="pName" />
                    </td>
                </tr>
                   <tr>
                    <td style="text-align: right">
                        Site URL:
                    </td>
                    <td style="text-align: right; vertical-align: top">
                       <input type="text" name="siteURL" id="sURL">
                    </td>
                </tr>
                   <tr>
                    <td style="text-align: right">
                        IAB Category:
                    </td>
                    <td style="text-align: right; vertical-align: top">
                       <input type="text" name="iabCategory">
                    </td>
                </tr>
                   <tr>
                    <td style="text-align: right">
                        Revenue Model:
                    </td>
                    <td style="text-align: right; vertical-align: top">
                        <input type="radio" name="rModel" value="rShare"> Revenue Share
                     </td>
                     <td style="text-align: center; vertical-align: top">
  						<input type="radio" name="rModel" value="fCPM"> Fixed CPM
  					</td>
  						<td style="text-align: center; vertical-align: top">
 						 <input type="radio" name="rModel" value="fCPMwithfill"> Fixed CPM with 100% fill 						 
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">
                        Platform:
                    </td>
                    <td style="text-align: center; vertical-align: top">
                        
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">
                        Auction Type:
                    </td>
                    <td style="text-align: center; vertical-align: top">
                        <input type="radio" name="auctionTYpe" value="fPriceAuction">First Price Auction  						
                    </td>
                    <td style="text-align: center; vertical-align: top">
                    	<input type="radio" name="auctionType" value="sPriceAuction">Second Price Auction
                    </td>
                </tr>
                     <tr>
                    <td style="text-align: right">
                        Status:
                    </td>
                    <td style="text-align: center; vertical-align: top">
                        <input type="radio" name="auctionTYpe" value="fPriceAuction">Active 						
                    </td>
                    <td style="text-align: center; vertical-align: top">
                    	<input type="radio" name="auctionType" value="sPriceAuction">Inactive
                    </td>
                </tr>
                <tr align="center">
                	<input type="submit" value="Add Publisher">
                </tr>
            </table>
						
					</form>
					
					
			
				</div>
				<div id="demand">
					<% 
  	if((String)session.getAttribute("errorReg") != null){ %>
					<h4><%=session.getAttribute("errorReg") %></h4>
					<%} %>
					<form method="post" action="DemandController">
<table>
	                <tr> 
	                    <td style="text-align: right">
	                        Existing demand?
	                    </td>
	                    <td style="text-align: right; vertical-align: top">
	                        <input type="radio" name="existingDemand">	
	                    </td>
	                    				
	                    <td style="text-align: right">
	                        Demand name
	                    </td>
	                    <td style="text-align: right; vertical-align: top">
	                        <input type="checkbox" name="myCheckbox">	
	                    </td>
	               
	                </tr>	
 <tr> 
	                    <td style="text-align: right">
	                        Tag name
	                    </td>
	                    <td style="text-align: right; vertical-align: top">
	                        <input type="text" name="tagName">	
	                    </td>
	                </tr>
 <tr> 
	                    <td style="text-align: right">
	                        Select URL
	                    </td>
	                    <td style="text-align: right; vertical-align: top">
	                        <input type="text" name="selectURL">	
	                    </td>
	                </tr>
 <tr> 
	                    <td style="text-align: right">
	                        Mapped to ad unit
	                    </td>
	                    <td style="text-align: right; vertical-align: top">
	                        <input type="text" name="adUnit">	
	                    </td>
	                </tr>
 <tr> 
	                    <td style="text-align: right">
	                        Revenue model
	                    </td>
	                     <td style="text-align: right; vertical-align: top">
                        <input type="radio" name="rModel" value="rShare"> Revenue Share
                     </td>
                     <td style="text-align: center; vertical-align: top">
  						<input type="radio" name="rModel" value="fCPM"> Fixed CPM
  					</td>
  						<td style="text-align: center; vertical-align: top">
 						 <input type="radio" name="rModel" value="fCPMwithfill"> Fixed CPM with 100% fill 						 
                    </td>
	                </tr>	
					<tr> 
	                    <td style="text-align: right">
	                        Size
	                    </td>
	                    <td style="text-align: right; vertical-align: top">
	                        <input type="text" name="size">	
	                    </td>
	                </tr>	
					<tr> 
	                    <td style="text-align: right">
	                        Demand Tag
	                    </td>
	                    <td style="text-align: right; vertical-align: top">
	                        <input type="textarea" name="demandTag">	
	                    </td>
	                </tr>	
					<tr> 
	                    <td style="text-align: right">
	                        fCap
	                    </td>
	                    <td style="text-align: right; vertical-align: top">
	                        <input type="text" name="fCap">	
	                    </td>
	                </tr>
										<tr> 
	                    <td style="text-align: right">
	                        Demand Relationship
	                    </td>
	                     <td style="text-align: right; vertical-align: top">
                       		 <input type="radio" name="demand" value="rShare"> DCP Demand
                    	 </td>
                    	  <td style="text-align: right; vertical-align: top">
                        <input type="radio" name="demand" value="rShare"> Direct Demand
                     </td>
	                </tr>
						
	                <input type="submit" value="Add Partner">
            </table>						

					</form>
				</div>
				<div id="reports">
				</div>
				
			</div>
		</div>
	</div>
</body>
</html>