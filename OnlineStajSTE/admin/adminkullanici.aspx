<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="adminkullanici.aspx.cs" Inherits="OnlineStajSTE.admin.adminkullanici" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <style type="text/css">
        .clsWrap
        {
            word-break: break-all;
        }
</style>
    
	<link rel="stylesheet" type="text/css" href="src/plugins/datatables/css/dataTables.bootstrap4.min.css"/>
	<link rel="stylesheet" type="text/css" href="src/plugins/datatables/css/responsive.bootstrap4.min.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="pd-ltr-20 xs-pd-20-10">
    <div class="min-height-200px">
				<div class="page-header">
					<div class="row">
						<div class="col-md-6 col-sm-12">
							<div class="title">
								<h4>Üye Düzenleme</h4>
							</div>
						</div>
					</div>
				</div>
				<div class="card-box mb-30">
					<div class="pd-20">
						<h4 class="text-blue h4">Üye Silme/Güncelleme</h4>
				    </div>
					<div id="firma_liste" runat="server" class="pb-20">
						<table class=" table stripe hover nowrap">
							<thead>
								<tr>
									<th class="table-plus datatable-nosort">Üye Adı</th>
									<th>Üye Soyadı</th>
									<th>Üye Email</th>
									<th>Üye Parola</th>
									<th class="datatable-nosort">İşlem</th>
								</tr>
							</thead>
							<tbody>
                                
        <asp:Repeater ID="Repeater1" runat="server"> <ItemTemplate>
								<tr>
									<td class="table-plus"><asp:Label ID="Label1" runat="server" Text='<%#Eval("ogrenci_adi") %>'></asp:Label></td>
									<td><asp:Label ID="Label2" runat="server" CssClass="clsWrap" Text='<%#Eval("ogrenci_soyadi") %>'></asp:Label></td>
									<td><asp:Label ID="Label3" runat="server" CssClass="clsWrap" Text='<%#Eval("ogrenci_email") %>'></asp:Label></td>
									<td><asp:Label ID="Label4" runat="server" CssClass="clsWrap" Text='<%#Eval("ogrenci_parola") %>'></asp:Label></td>
									
									<td>
										<div class="dropdown">
											<a class="btn btn-link font-24 p-0 line-height-1 no-arrow dropdown-toggle" href="#" role="button" data-toggle="dropdown">
												<i class="dw dw-more"></i>
											</a>
											<div class="dropdown-menu dropdown-menu-right dropdown-menu-icon-list">
												<a class="dropdown-item" href="adminkullanici.aspx?did=<%#Eval("ogrenci_id") %>"><i class="dw dw-edit2"></i> Düzenle</a>
												<a class="dropdown-item" href="adminkullanici.aspx?sid=<%#Eval("ogrenci_id") %>"><i class="dw dw-delete-3"></i> Sil</a>
											</div>
										</div>
									</td>
								</tr>
								</ItemTemplate></asp:Repeater>
							</tbody>
						</table>
					</div>
				</div>

         <div id="ogrenci_guncelle" runat="server" class="col-lg-9">

							<h2 class="font-weight-bold line-height-3 text-7 mb-0"> <asp:Label ID="Label3" runat="server" Text=""></asp:Label></h2>

							    <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 ">Ad</label>
							        <div class="col-lg-9">
							            <input id="ogrenci_adi1" runat="server" class="form-control text-3 h-auto py-2 clsWrap" type="text"  value='<%#Eval("ogrenci_adi") %>' />
							        </div>
							    </div>
							    <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 ">Soyad</label>
							        <div class="col-lg-9">
							            <input id="ogrenci_soyadi1" runat="server" class="form-control text-3 h-auto py-2 clsWrap" type="text"  value='<%#Eval("ogrenci_soyadi") %>' />
							        </div>
							    </div>
							    <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 ">Email</label>
							        <div class="col-lg-9">
							            <input id="ogrenci_email1" runat="server" class="form-control text-3 h-auto py-2 clsWrap" type="email"  value='<%#Eval("ogrenci_email") %>' />
							        </div>
							    </div>
							   
							   
							    <div id="Div2" runat="server" class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 ">Parola</label>
							        <div class="col-lg-9">
							            <input id="ogrenci_parola1" runat="server" class="form-control text-3 h-auto py-2 clsWrap" type="text"   value='<%#Eval("ogrenci_parola") %>' />
							        </div>
							    </div>
							   
                            <button onserverclick="Ogrenci_guncelle_click" runat="server"  class="btn btn-dark btn-modern btn-block text-uppercase rounded-0 font-weight-bold text-3 py-3" >Güncelle</button>
						</div>




        </div>
        </div>
</asp:Content>
