<!-- BEGIN: main -->
<div class="table-responsive">
	<table class="table table-striped table-bordered">
		<caption><h1><i class="fa fa-envelope-open" style="margin-right:10px" aria-hidden="true"></i>{DATA.title}</h1></caption>
		<col class="w150" />
		<col />
		<tbody>
			<tr>
				<td>Khách hàng</td>
				<td><strong>{DATA.send_name}</strong></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><strong>{DATA.sender_email}</strong></td>
			</tr>
			<!-- BEGIN: sender_phone -->
			<tr>
				<td>{GLANG.phonenumber}</td>
				<td><strong>{DATA.sender_phone}</strong></td>
			</tr>
			<!-- END: sender_phone -->
			<tr>
				<td>Ngày gửi</td>
				<td><strong>{DATA.time}</strong></td>
			</tr>
			<!-- BEGIN: car_register -->
			<tr>
				<td>Xe đăng ký</td>
				<td><strong>{DATA.car_register}</strong></td>
			</tr>
			<!-- END: car_register -->
			<!-- BEGIN: address -->
			<tr>
				<td>{LANG.address}</td>
				<td><strong>{DATA.sender_address}</strong></td>
			</tr>
			<!-- END: address -->
			<!-- BEGIN: appointment_date -->
			<tr>
				<td>Ngày hẹn</td>
				<td><strong>{DATA.appointment_date}</strong></td>
			</tr>
			<!-- END: appointment_date -->
			<tr>
				<td>Địa chỉ IP</td>
				<td><strong>{DATA.sender_ip}</strong></td>
			</tr>
			<tr>
				<td>Nội dung tin nhắn</td>
				<td>{DATA.content}</td>
			</tr>
		</tbody>
	</table>
</div>
<div class="table-responsive">
	<table class="table table-striped table-bordered table-hover">
		<tbody>
			<tr>
				<td class="text-center">
					<!-- BEGIN: reply -->
					<a class="btn btn-default" href="{URL_REPLY}">{LANG.send_title}</a>&nbsp;
					<!-- END: reply -->
					<a class="btn btn-default" href="javascript:void(0);" onclick="nv_del_mess({DATA.id});">{GLANG.delete}</a>&nbsp;
					<a class="btn btn-default" href="{DATA.url_back}">{LANG.back_title}</a>&nbsp;
					<a class="btn btn-default" href="javascript:void(0);" onclick="mark_as_unread();">{LANG.mark_as_unread}</a>&nbsp;
					<a class="btn btn-default" href="{URL_FORWARD}"><em class="fa fa-share">&nbsp;</em> {LANG.mark_as_forward}</a>
				</td>
			</tr>
		</tbody>
	</table>
</div>
<!-- BEGIN: data_reply -->
<div class="table-responsive">
	<table class="table table-striped table-bordered table-hover">
		<caption><em class="fa fa-file-text-o">&nbsp;</em>Re: {DATA.title}</caption>
		<col class="w150" />
		<col />
		<tbody>
			<tr>
				<td style="vertical-align:top">{LANG.infor_user_send_title}</td>
				<td> {REPLY.reply_name} &lt;{REPLY.admin_email}&gt;
					<br />
					{REPLY.time} </td>
			</tr>
			<tr>
				<td>{LANG.reply_user_send_title}</td>
				<td>{REPLY.reply_time}</td>
			</tr>
			<tr>
				<td colspan="2">{REPLY.reply_content}</td>
			</tr>
		</tbody>
	</table>
</div>
<!-- END: data_reply -->
<!-- END: main -->