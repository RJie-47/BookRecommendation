<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/master1.master" AutoEventWireup="true" CodeFile="myaccount_orders.aspx.cs" Inherits="myaccount_orders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <link href="css/myaccount_orders.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <body>
		<div class="OperateTitle">
			<div> 【 我的订单 】 </div>
		</div>
		<div class="searchdiv">
			<span>订单单号：</span>
			<input type="text" />
			<span>订单状态：</span>
			<select>
				<option>交易成功</option>
				<option>未发货</option>
				<option>已发货</option>
				<option>未付款</option>
			</select>
			<span>订单日期：</span>
			<input type="text" />
			<img src="images/calendar1.gif" alt="begindate" />
			<span>-</span>
			<input type="text" />
			<img src="images/calendar1.gif" alt="enddate" />
			<input type="button" value="查询" />
		</div>
		<div>
			<table>
				<thead>
					<tr>
						<th class="orderno">订单号</th>
						<th class="ordersent">收货人</th>
						<th class="orderamount">订单金额</th>
						<th class="disamount">优惠金额</th>
						<th class="orderstatus">订单状态</th>
						<th class="orderdate">下单时间</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							<a href="orderinfo.html?oid=1996095480" target="_blank">4692222650</a>
						</td>
						<td>李四</td>
						<td>￥ 80.30</td>
						<td>￥ 36.70</td>
						<td>交易成功</td>
						<td>2010-12-17</td>
					</tr>
					<tr>
						<td>
							<a href="orderinfo.html?oid=1996095480" target="_blank">1996095480</a>
						</td>
						<td>张三</td>
						<td>￥ 60.90</td>
						<td>￥ 18.50</td>
						<td>已发货</td>
						<td>2011-01-17</td>
					</tr>
				</tbody>
			</table>
			<div class="amount">
				<span>订单总金额：</span>
				<span class="money">￥141.20</span>
				<span>优惠总金额：</span>
				<span class="money">￥55.50</span>
			</div>
			<div id="pages">
				<a href="#" class="hlfir"></a>
				<a href="#" class="hlp"></a>
				<a href="#" class="hln"></a>
				<a href="#" class="hlla"></a>
				<span class="current">1</span>
				<span class="allpages">/4</span>
				<span>跳转至</span>
				<select>
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>4</option>
				</select>
			</div>
		</div>
	</body>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContent" Runat="Server">
</asp:Content>

