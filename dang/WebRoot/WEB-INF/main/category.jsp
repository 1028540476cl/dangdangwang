<%@page contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<div class="book_l_border1" id="__FenLeiLiuLan">
	<div class="book_sort_tushu">
		<h2>
			分类浏览
		</h2>
		
		<!--1级分类开始-->
		<s:iterator value="cats" var="c1">
			<div class="bg_old" onmouseover="this.className = 'bg_white';"
				onmouseout="this.className = 'bg_old';">
				<h3>
					[<a href='../main/booklist.action?pid=<s:property value="#c1.id"/>'><s:property value="#c1.name"/></a>]
				</h3>
			<s:iterator value="subCats" var="c2">
				<ul class="ul_left_list">

						<!--2级分类开始-->
					
						<li>
							<a href='../main/booklist.action?id=<s:property value="#c2.id"/>&pid=<s:property value="#c1.id"/>'><s:property value="#c2.name"/></a>
						</li>
					
						<!--2级分类结束-->

				</ul>
		    </s:iterator>	
				<div class="empty_left">
				</div>
			</div>

			<div class="more2">
			</div>
		</s:iterator>
			<!--1级分类结束-->

		<div class="bg_old">
			<h3>
				&nbsp;
			</h3>
		</div>
	</div>
</div>
