<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="adminanasayfa.aspx.cs" Inherits="OnlineStajSTE.admin.adminanasayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .clsWrap
        {
            word-break: break-all;
        }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row clearfix progress-box">
				<div class="col-lg-3 col-md-6 col-sm-12 mb-30">
					<div class="card-box pd-30 height-100-p">
						<div class="progress-box text-center">
							 <input type="text" class="knob dial1" value="80" data-width="120" data-height="120" data-linecap="round" data-thickness="0.12" data-bgColor="#fff" data-fgColor="#1b00ff" data-angleOffset="180" readonly>
							<h5 class="text-blue padding-top-10 h5">Kayıt Olan Kullanıcı</h5>
							<span class="d-block">80%  <i class="fa fa-line-chart text-blue"></i></span>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-12 mb-30">
					<div class="card-box pd-30 height-100-p">
						<div class="progress-box text-center">
							 <input type="text" class="knob dial2" value="75" data-width="120" data-height="120" data-linecap="round" data-thickness="0.12" data-bgColor="#fff" data-fgColor="#00e091" data-angleOffset="180" readonly>
							<h5 class="text-light-green padding-top-10 h5">Eklenen Firma</h5>
							<span class="d-block">75%  <i class="fa text-light-green fa-line-chart"></i></span>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-12 mb-30">
					<div class="card-box pd-30 height-100-p">
						<div class="progress-box text-center">
							 <input type="text" class="knob dial3" value="90" data-width="120" data-height="120" data-linecap="round" data-thickness="0.12" data-bgColor="#fff" data-fgColor="#f56767" data-angleOffset="180" readonly>
							<h5 class="text-light-orange padding-top-10 h5">Tıklama</h5>
							<span class="d-block">90%  <i class="fa text-light-orange fa-line-chart"></i></span>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-12 mb-30">
					<div class="card-box pd-30 height-100-p">
						<div class="progress-box text-center">
							 <input type="text" class="knob dial4" value="65" data-width="120" data-height="120" data-linecap="round" data-thickness="0.12" data-bgColor="#fff" data-fgColor="#a683eb" data-angleOffset="180" readonly>
							<h5 class="text-light-purple padding-top-10 h5">Reklam Geliri</h5>
							<span class="d-block">65%  <i class="fa text-light-purple fa-line-chart"></i></span>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
					<div class="col-lg-4 col-md-6 col-sm-12 mb-30">
					<div class="card-box pd-30 pt-10 height-100-p">
						<h2 class="mb-30 h4">En iyi 5 firma</h2>
						<div class="browser-visits">
							<ul>


                                
        <asp:Repeater ID="Repeater1" runat="server"> <ItemTemplate>

								<li class="d-flex flex-wrap align-items-center">
									
									<div class="browser-name"><asp:Label ID="Label1" runat="server" CssClass="clsWrap" Text='<%#Eval("firma_adi") %>'></asp:Label></div>
									<div class="visit"><span class="badge badge-pill badge-primary"> <asp:Label ID="Label2" CssClass="clsWrap" runat="server" Text='<%#Eval("firma_puan") %>'></asp:Label></span></div>
								</li>

            </ItemTemplate></asp:Repeater>


							</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-8 col-md-6 col-sm-12 mb-30">
					<div class="card-box pd-30 pt-10 height-100-p">
						<h2 class="mb-30 h4">Harita</h2>
						<div id="browservisit" style="width:100%!important; height:380px"></div>
					</div>
				</div>
			</div>
</asp:Content>
