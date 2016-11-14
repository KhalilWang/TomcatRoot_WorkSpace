<%@ page language="java" contentType="text/html;charset=utf-8;" pageEncoding="utf-8"%>

<meta charset="utf-8"/>

<form action="byNumber.jsp" >
    <p>Input student number you query:</p>
    <br/>
    <p>
        Student Number:<input type="text" name="q_number"/>
    </p>
    <input type="submit" value="Submit"/>
</form>

<form action="byName.jsp" >
    <p>Input student name you query:</p>
    <br/>
    <p>
        Name Including:<input type="text" name="q_name"/>
    </p>
    <input type="submit" value="Submit"/>
</form>