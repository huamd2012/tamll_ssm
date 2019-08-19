<%--
  Created by IntelliJ IDEA.
  User: 90482
  Date: 2019/8/19
  Time: 7:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="../include/admin/adminHeader.jsp" %>
<%@include file="../include/admin/adminNavigator.jsp" %>

<title>编辑产品属性值</title>

<script>
    $(function () {
        $("input.pvValue").keyup(function () {
            var value = $(this).val();
            var page = "admin_propertyValue_update";
            var pvid = $(this).attr("pvid");
            var parentSpan = $(this).parent("span");
            parentSpan.css("border", "1px solid yellow");
            $.post(
                page,
                {"value": value, "id": pvid},
                function (result) {
                    if ("success" == result)
                        parentSpan.css("border", "1px solid green");
                    else
                        parentSpan.css("border", "1px solid red");
                }
            );
        });
    });
</script>

<div class="workingArea">
    <ol class="breadcrumb">
        <li><a href="admin_category_list">所有分类</a></li>
        <li><a href="admin_product_list?cid=${p.category.id}">${p.category.name}</a></li>
        <li class="active">${p.name}</li>
        <li class="active">编辑产品属性</li>
    </ol>

    <div class="editPVDiv">
        <c:forEach items="${pvs}" var="pv">
            <div class="eachPV">
                <span class="pvName">${pv.property.name}</span>
                <span class="pvValue"><input class="pvValue" pvid="${pv.id}" type="text" value="${pv.value}"></span>
            </div>
        </c:forEach>
        <div style="clear:both"></div>
    </div>
    <div class="panel panel-warning editDiv">
        <div class="panel-heading">编辑产品属性</div>
        <div class="panel-body">

            <table class="editTable">
                <tr>
                    <c:forEach items="${pvs}" var="pv">
                        <div class="eachPV">
                            <span class="pvName">${pv.property.name}</span>
                            <span class="pvValue"><input class="pvValue" pvid="${pv.id}" type="text"
                                                         value="${pv.value}"></span>
                        </div>
                    </c:forEach>
                </tr>
                <tr class="submitTR">
                    <td colspan="2" align="center">
                        <li><a href="admin_product_list?cid=${p.category.id}">
                            <button type="submit" class="btn btn-success">提 交</button>
                        </a></li>
                    </td>
                </tr>
            </table>
            </form>
        </div>
    </div>

</div>
