<%@ page language="java" contentType="text/html;charset=utf-8;" pageEncoding="utf-8"%>

<meta charset="utf-8"/>

<div style="text-align: center;">
	<a href="giveContent.jsp"> WriteFile  </a>
	<a href="lookContent.jsp"> ReadFile   </a>
	
	<h1>WriteFile</h1>
</div>




<form action="writeContent.jsp" style="text-align: center;">
	<p>FileName:</p>
	<input type="text" name="filename" />
	<p>DirName:
		<select name="dir">
			<option value="F:\\tmp\\"> F:\tmp\ </option>
			<option value="F:\\tmp\other\\"> F:\tmp\other </option>
		</select>
	</p>
	
	<p>TextArea:</p>
	<TextArea name="content" Rows="10" Cols="40">
	</TextArea>
	
	<br/>
	
	<input type="submit" value="Submit"/>
</form>

