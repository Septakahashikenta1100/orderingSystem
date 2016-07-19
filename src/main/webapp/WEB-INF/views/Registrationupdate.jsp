<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>

<head>

<title></title>

<style>
		<%@ include file="../css/home.css" %>
</style>

<title>発送指示更新画面</title>

<script
 src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<script type="text/javascript">
   function ShowFormGuide(obj,GuideSentence) {
      // 入力案内を表示
      if( obj.value == '' ) {
         obj.value = GuideSentence;
         obj.style.color = '#000000';
      }
   }
   function HideFormGuide(obj,GuideSentence) {
      // 入力案内を消す
      if( obj.value == GuideSentence ) {
         obj.value='';
         obj.style.color = '#000000';
      }
   }
</script>

</head>
<body  bgcolor="#FFD5EC">

<c:forEach items="${data}" var="obj">
<form:form modelAttribute="FormModel">

<div id="site-box2">


     <div id = "title2"><h2>発送指示確認画面</h2></div>

     <div id = "com10"><h4>商品番号:(非変更箇所):</h4></div>
     <div id = "com2"><h4><c:out value="${obj.modelnumber}" /></h4>
     </div>

     <div id = "com10"><h4>発注数(非変更箇所):</h4></div>
     <div id = "com2"><h4><c:out value="${obj.ordernumber}" /></h4>
     </div>

     <div id = "com1"><h4>郵便番号:</h4></div>
     <div id = "com2"><h4><input type="text" name="postalcode1" value="${obj.postalcode1}"
                                 onFocus="HideFormGuide(this,'${obj.postalcode1}');"
                                 onBlur="ShowFormGuide(this,'${obj.postalcode1}');">

                      <input type="text" name="postalcode2" value="${obj.postalcode2}"
                                 onFocus="HideFormGuide(this,'${obj.postalcode2}');"
                                 onBlur="ShowFormGuide(this,'${obj.postalcode2}');"></h4>
     </div>

     <div id = "com1"><h4>住所1(都道府県):</h4></div>
     <div id = "com2"><h4><input type="text" name="address1" value="${obj.address1}"
                                 onFocus="HideFormGuide(this,'${obj.address1}');"
                                 onBlur="ShowFormGuide(this,'${obj.address1}');"></h4>
     </div>

     <div id = "com1"><h4>住所2(市区町村、番地):</h4></div>
     <div id = "com2"><h4><input type="text" name="address2" value="${obj.address2}"
                                 onFocus="HideFormGuide(this,'${obj.address2}');"
                                 onBlur="ShowFormGuide(this,'${obj.address2}');"></h4>
     </div>

     <div id = "com1"><h4>住所3(建物名、アパート名など):</h4></div>
     <div id = "com2"><h4><input type="text" name="address3" value="${obj.address3}"
                                 onFocus="HideFormGuide(this,'${obj.address3}');"
                                 onBlur="ShowFormGuide(this,'${obj.address3}');"></h4>
     </div>

     <div id = "com1"><h4>電話番号:</h4></div>
     <div id = "com2"><h4><input type="text" name="tel" value="${obj.tel}"
                                 onFocus="HideFormGuide(this,'${obj.tel}');"
                                 onBlur="ShowFormGuide(this,'${obj.tel}');"></h4>
     </div>

     <div id = "com10"><h4>発注者(非変更箇所):</h4></div>
     <div id = "com2"><h4><c:out value="${obj.ordername}" /></h4>
     </div>

     <div id = "com4"><input type="submit" name="update" value="発送内容変更"></div>


</div>

<input type="hidden" name="id" value="${obj.orderid}">

</form:form>
</c:forEach>

</body>
</html>