<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../includes/includes.jsp"%>
<!DOCTYPE HTML>
<head>
<c:choose>
	<c:when test="${'edit'==type}">
		<title>葡萄藤轻游戏-修改密码</title>
	</c:when>
	<c:when test="${'email'==type}">
		<title>葡萄藤轻游戏-找回密码</title>
	</c:when>
	<c:when test="${'forget'==type}">
		<title>葡萄藤轻游戏-重设密码</title>
	</c:when>
	<c:otherwise>
		<title>葡萄藤轻游戏-注册</title>
	</c:otherwise>
</c:choose>
<input type="hidden" value="${type}" id="type" />


</head>

<body>

	<div class="signin" id="regedit">
		<div class="content clearfix">

			<c:choose>
				<c:when test="${'edit'==type}">
					<form:form modelAttribute="user" action="/player/regedit "
						method="post">



						<spring:bind path="user.id">
							<input name="id" value="${user.id}" id="id" type="hidden"
								readonly />
						</spring:bind>

						<h1>修改昵称/密码</h1>
						<div class="signin-action">
							<label for="name">name</label>
							<spring:bind path="user.name">
								<input type="text" id="name" name="name" placeholder="Name"
									class="sign" value="${user.name}">
							</spring:bind>
							<label for="email">email</label>
							<spring:bind path="user.email">
								<input type="text" id="email" name="email" placeholder="Email"
									class="sign" value="${user.email}" readonly>
							</spring:bind>

							<label for="password">password</label>
							<spring:bind path="user.password">
								<input type="password" id="password" name="password"
									placeholder="Password" class="sign" value="${user.password}">
							</spring:bind>
						</div>
						<div class="signin-action">
							<input class="btn btn-primary btn-large pull-right" type="submit"
								id="submit" />
						</div>
						<div id="escape"></div>


						<a href="/player/detail" class="return">取消</a>
		</div>
		<div class="regedit_hint">
			<label class="hint" id="reg_hint"><spring:message
					code="${code}" /></label>
		</div>
		</form:form>

		</c:when>

		<c:when test="${'forget'==type}">
			<form:form modelAttribute="user" action="/player/regedit"
				method="post">



				<spring:bind path="user.id">
					<input name="id" value="${user.id}" id="id" type="hidden" readonly />
				</spring:bind>

				<h1>修改密码</h1>
				<div class="signin-action">
					<label for="name">name</label>
					<spring:bind path="user.name">
						<input type="text" id="name" name="name" placeholder="Name"
							class="sign" value="${user.name}" readonly>
					</spring:bind>
					<label for="email">email</label>
					<spring:bind path="user.email">
						<input type="text" id="email" name="email" placeholder="Email"
							class="sign" value="${user.email}" readonly>
					</spring:bind>

					<label for="password">password</label>
					<spring:bind path="user.password">
						<input type="password" id="password" name="password"
							placeholder="Password" class="sign" value="${user.password}">
					</spring:bind>
				</div>
				<div class="signin-action">
					<input class="btn btn-primary btn-large pull-right" type="submit"
						id="submit" />
				</div>
				<div id="escape"></div>

				<a href="/" class="return">重新登录</a>
	</div>
	<div class="regedit_hint">
		<label class="hint" id="reg_hint"><spring:message
				code="${code}" /></label>
	</div>
	</form:form>

	</c:when>



	<c:when test="${'email'==type}">
		<form action="/player/forget" method="post">


			<h1>找回密码</h1>
			<div class="signin-action">
				<label for="mail">email</label> <input type="text" id="mail"
					name="mail" placeholder="Email" class="sign" value="">
			</div>
			<div class="signin-action">
				<input class="btn btn-primary btn-large pull-right" type="submit"
					id="submit" />
			</div>
			<p>请输入注册邮箱,五分钟之内登录邮箱并点击链接,即可修改密码</p>
			<div id="escape"></div>

			<a href="/" class="return">返回首页</a>

		</form>
	</c:when>






	<c:otherwise>
		<form:form modelAttribute="user" action="/player/regedit"
			method="post">



			<spring:bind path="user.id">
				<input name="id" value="${user.id}" id="id" type="hidden" readonly />
			</spring:bind>

			<h1>创建帐户</h1>


			<div class="signin-action">

				<label for="name">name</label>
				<spring:bind path="user.name">
					<input type="text" id="name" name="name"
						placeholder="昵称,可任意填写并随时更改" class="sign" value="${user.name}">
				</spring:bind>
				<label for="email">email</label>
				<spring:bind path="user.email">
					<input type="text" id="email" name="email"
						placeholder="邮箱,非常重要,用于登录及找回密码" class="sign" value="${user.email}">
				</spring:bind>

				<label for="password">password</label>
				<spring:bind path="user.password">
					<input type="password" id="password" name="password"
						placeholder="密码" class="sign" value="${user.password}">
				</spring:bind>
			</div>
			<div class="signin-action">
				<input class="btn btn-primary btn-large pull-right" type="submit"
					id="submit" />
			</div>
			<div id="escape"></div>


		

			<div class="regedit_hint">
				<label class="hint" id="reg_hint"><spring:message
						code="${code}" /></label>
			</div>
		</form:form>

	</c:otherwise>
	</c:choose>






	</div>
	</div>





</body>

<script src="/r/j-src/web/listall/init.js"></script>
<script src="<%=request.getContextPath()%>/r/j-src/util/httpUtil2.js"></script>
<!-- Le styles -->

<link href="/r/css/reboot.css" rel="stylesheet">
<link href="/r/css/theme.css" rel="stylesheet">
</html>
