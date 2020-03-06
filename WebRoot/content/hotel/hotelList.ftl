<!DOCTYPE html>
<html>
<head>
	<title>测试</title>

</head>
<body>
<table>
				<#list hotelList as hotel>
				<tr style="height:50px;">
					<td>${hotel.code}</td>
					<td>${hotel.name}</td>
				</tr>
				</#list>
			
			</tbody>
		</table>

</body>
</html>
