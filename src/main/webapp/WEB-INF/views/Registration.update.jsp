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
<body>

<div id="site-box">

<div id="site-box1">

<div id = "title"><h2>Menu</h2></div>

<br>
     <h4><input type="button" value="発注登録"></h4>
     <h4><input type="button" value="進捗確認"></h4>
     <h4><input type="button" value="部品注文"></h4>
     <h4><input type="button" value="発送準備"></h4>
</div>

<div id="site-box2">


     <div id = "title2"><h2>発送指示確認画面</h2></div>

     <div id = "com10"><h4>品番(非変更箇所):</h4></div>
     <div id = "com2"><h4>(更新前の数値が入ります)</h4>
     </div>

     <div id = "com10"><h4>発注数(非変更箇所):</h4></div>
     <div id = "com2"><h4>(更新前の数値が入ります)</h4>
     </div>
     <div id = "com1"><h4>郵便番号:</h4></div>
     <div id = "com2"><h4><input type="text" value="(更新前の数値が入ります)"
                                 onFocus="HideFormGuide(this,'(更新前の数値が入ります)');"
                                 onBlur="ShowFormGuide(this,'(更新前の数値が入ります)');"></h4>
     </div>
     <div id = "com1"><h4>住所1(都道府県):</h4></div>
     <div id = "com2"><h4><input type="text" value="(更新前の数値が入ります)"
                                 onFocus="HideFormGuide(this,'(更新前の数値が入ります)');"
                                 onBlur="ShowFormGuide(this,'(更新前の数値が入ります)');"></h4>
     </div>
     <div id = "com1"><h4>住所2(市区町村、番地):</h4></div>
     <div id = "com2"><h4><input type="text" value="(更新前の数値が入ります)"
                                 onFocus="HideFormGuide(this,'(更新前の数値が入ります)');"
                                 onBlur="ShowFormGuide(this,'(更新前の数値が入ります)');"></h4>
     </div>
     <div id = "com1"><h4>住所3(建物名、アパート名など):</h4></div>
     <div id = "com2"><h4><input type="text" value="(更新前の数値が入ります)"
                                 onFocus="HideFormGuide(this,'(更新前の数値が入ります)');"
                                 onBlur="ShowFormGuide(this,'(更新前の数値が入ります)');"></h4>
     </div>
     <div id = "com1"><h4>電話番号:</h4></div>
     <div id = "com2"><h4><input type="text" value="(更新前の数値が入ります)"
                                 onFocus="HideFormGuide(this,'(更新前の数値が入ります)');"
                                 onBlur="ShowFormGuide(this,'(更新前の数値が入ります)');"></h4>
     </div>
     <div id = "com10"><h4>発注者(非変更箇所):</h4></div>
     <div id = "com2"><h4>(更新前の数値が入ります)</h4>
     </div>


     <div id = "com4"><input type="button" value="内容変更"></div>


</div>
</div>

</body>
</html>