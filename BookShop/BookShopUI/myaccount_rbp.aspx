﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/master1.master" AutoEventWireup="true" CodeFile="myaccount_rbp.aspx.cs" Inherits="myaccount_rbp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <link href="css/myaccount_rbp.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <body>
		<div class="OperateTitle">
			<div>
				【 收货地址 】（可保存5个）
			</div>
		</div>
		<div class="manage">
			<div id="address">
				<div class="gw_shwzl_div">
					<input type="radio" checked="checked" name="radioname" id="radioname">
					<label for="radiobutton">
                </label> 陕西省西安市长安区三桥经济技术开发区疏导线58号 收货人:李四 电话：13348032921
					<font>[
						<a href="#" style="">删除</a>] [
						<a id="18" href="javascript:void(0);" class="linkEdit" style="">编辑</a>]</font>
				</div>
				<div class="gw_shwzl_div">
					<input type="radio" name="radioname" id="radio1">
					<label for="radiobutton">
                </label> 四川省成都市某街道某小区 收货人:张三 收货人:李四 电话：13948032921
					<font>[
						<a href="#" style="">删除</a>] [
						<a id="A1" href="javascript:void(0);" class="linkEdit" style="">编辑</a>]</font>
				</div>
				<div class="gw_shwzl2">
					<input type="button" value="设为默认" />
					<input type="button" value="添加地址" />
				</div>
				<div id="divUserAddress">
					<p>
						填写正确的收货人详细资料，保证您收货的准确性。<span class="required">* 为必填项</span></p>
					<p>
						<span class="required">*</span> 地 区：
						<select>
							<option>四川</option>
							<option>陕西</option>
						</select>
						<select>
							<option>成都</option>
							<option>德阳</option>
						</select>
					</p>
					<p>
						<span class="required">*</span> 邮政编码：
						<input type="text" />
					</p>
					<p>
						<span class="required">*</span> 电子邮件：
						<input type="text" />
					</p>
					<p class="address">
						<span class="required">*</span> 街道地址：
						<input type="text" />
					</p>
					<p>
						<span class="required">*</span> 收货姓名：
						<input type="text" />
					</p>
					<p>
						<span class="required">*</span> 收货手机：
						<input type="text" />
					</p>
					<p class="btns">

						<input type="button" value="提交" />
						<input type="button" value="放弃" />
					</p>
				</div>
			</div>
		</div>
	</body>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContent" Runat="Server">
</asp:Content>

