<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="adminfirma.aspx.cs" Inherits="OnlineStajSTE.admin.adminfirma" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .clsWrap
        {
            word-break: break-all;
        }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="pd-ltr-20 xs-pd-20-10">
    <div class="min-height-200px">
				<div class="page-header">
					<div class="row">
						<div class="col-md-6 col-sm-12">
							<div class="title">
								<h4>Firma Düzenleme</h4>
							</div>
						</div>
					</div>
				</div>
				<!-- Simple Datatable start -->
				<div class="card-box mb-30">
					<div class="pd-20">
						<h4 class="text-blue h4">Firma Silme/Güncelleme</h4>
				    </div>
					<div id="firma_liste" runat="server" class="pb-20">
						<table class="table stripe hover nowrap">
							<thead>
								<tr>
									<th class="table-plus datatable-nosort">Firma Adı</th>
									<th>Firma İl-İlçe</th>
									<th>Firma Email</th>
									<th>Firma Telefon</th>
									<th>Firma İşi</th>
									<th>Firma Beklentisi</th>
									<th>Firma Maaş Bilgisi</th>
									<th>Firma Eleman Sayısı</th>
									<th>Firma Stajyer Sınavı</th>
									<th>Firma Puanı</th>
									<th>Firma Stajyer Açıklaması</th>
									<th class="datatable-nosort">İşlem</th>
								</tr>
							</thead>
							<tbody>
                                
        <asp:Repeater ID="Repeater1" runat="server"> <ItemTemplate>
								<tr>
									<td class="table-plus"><asp:Label ID="Label1" runat="server" Text='<%#Eval("firma_adi") %>'></asp:Label></td>
									<td><asp:Label ID="Label2"  CssClass="clsWrap" runat="server" Text='<%#Eval("firma_il") %>'></asp:Label>/<asp:Label ID="Label13" runat="server" Text='<%#Eval("firma_ilce") %>'></asp:Label></td>
									<td><asp:Label ID="Label3" CssClass="clsWrap" runat="server" Text='<%#Eval("firma_email") %>'></asp:Label></td>
									<td><asp:Label ID="Label4" CssClass="clsWrap" runat="server" Text='<%#Eval("firma_telefon") %>'></asp:Label></td>
									<td><asp:Label ID="Label5" CssClass="clsWrap" runat="server" Text='<%#Eval("firma_konu") %>'></asp:Label></td>
									<td><asp:Label ID="Label6" CssClass="clsWrap" runat="server" Text='<%#Eval("firma_beklenti") %>'></asp:Label></td>
									<td><asp:Label ID="Label7" CssClass="clsWrap" runat="server" Text='<%#Eval("firma_stajer_maas") %>'></asp:Label></td>
									<td><asp:Label ID="Label8" CssClass="clsWrap" runat="server" Text='<%#Eval("firma_eleman") %>'></asp:Label></td>
									<td><asp:Label ID="Label9" CssClass="clsWrap" runat="server" Text='<%#Eval("firma_stajyer_kabul") %>'></asp:Label></td>
									<td><asp:Label ID="Label10" CssClass="clsWrap" runat="server" Text='<%#Eval("firma_puan") %>'></asp:Label></td>
									<td><div class="text"><asp:Label ID="Label11" CssClass="clsWrap" runat="server" Text='<%#Eval("firma_aciklama") %>'></asp:Label></div></td>
									<td>
										<div class="dropdown">
											<a class="btn btn-link font-24 p-0 line-height-1 no-arrow dropdown-toggle" href="#" role="button" data-toggle="dropdown">
												<i class="dw dw-more"></i>
											</a>
											<div class="dropdown-menu dropdown-menu-right dropdown-menu-icon-list">
												<a class="dropdown-item" href="adminfirma.aspx?did=<%#Eval("firma_id") %>"><i class="dw dw-edit2"></i> Düzenle</a>
												<a class="dropdown-item" href="adminfirma.aspx?sid=<%#Eval("firma_id") %>"><i class="dw dw-delete-3"></i> Sil</a>
											</div>
										</div>
									</td>
								</tr>
								</ItemTemplate></asp:Repeater>
							</tbody>
						</table>
					</div>
				</div>

         <div id="firma_guncelle" runat="server" class="col-lg-9">

							<h2 class="font-weight-bold line-height-3 text-7 mb-0"><asp:Label ID="Label7" runat="server" Text=""></asp:Label></h2>

                                
                                 <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 ">Firma Puanı</label>
							        <div class="col-lg-9">
							            <input id="firma_puan" runat="server" class="form-control text-3 h-auto py-2 clsWrap" type="text" name="firstName" value='<%#Eval("firma_puan") %>' />
							        </div>
							    </div>
							    <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 ">Firma Adı</label>
							        <div class="col-lg-9">
							            <input id="firma_adi" runat="server" class="form-control text-3 h-auto py-2 clsWrap" type="text" name="firstName" value='<%#Eval("firma_adi") %>' />
							        </div>
							    </div>

                                 <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 ">Firma İl</label>
							        <div class="col-lg-9">
							            <input id="firma_il" runat="server" class="form-control text-3 h-auto py-2 clsWrap" type="text" name="firstName" value='<%#Eval("firma_il") %>' />
							        </div>
							    </div>

                                 <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 ">Firma İlçe</label>
							        <div class="col-lg-9">
							            <input id="firma_ilce" runat="server" class="form-control text-3 h-auto py-2 clsWrap" type="text" name="firstName" value='<%#Eval("firma_ilce") %>' />
							        </div>
							    </div>

                                 <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 ">Firma Email</label>
							        <div class="col-lg-9">
							            <input id="firma_email" runat="server" class="form-control text-3 h-auto py-2 clsWrap" type="email" name="firstName" value='<%#Eval("firma_email") %>' />
							        </div>
							    </div>

                                 <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 ">Firma Telefon</label>
							        <div class="col-lg-9">
							            <input id="firma_telefon" runat="server" class="form-control text-3 h-auto py-2 clsWrap" type="text" name="firstName" value='<%#Eval("firma_telefon") %>' />
							        </div>
							    </div>

                                 <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 ">Firmanın İşi</label>
							        <div class="col-lg-9">
							            <input id="firma_konu" runat="server" class="form-control text-3 h-auto py-2 clsWrap" type="text" name="firstName" value='<%#Eval("firma_konu") %>' />
							        </div>
							    </div>

                                 <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 ">Firma Stajyerden Beklentisi</label>
							        <div class="col-lg-9">
							            <input id="firma_beklenti" runat="server" class="form-control text-3 h-auto py-2 clsWrap" type="text" name="firstName" value='<%#Eval("firma_beklenti") %>' />
							        </div>
							    </div>

                                 <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 ">Firma Maaş Veriyormu</label>
							        <div class="col-lg-9">
							            <input id="firma_stajer_maas" runat="server" class="form-control text-3 h-auto py-2 clsWrap" type="text" name="firstName" value='<%#Eval("firma_stajer_maas") %>' />
							        </div>
							    </div>

                                 <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 ">Firmanın Çalışan Sayısı</label>
							        <div class="col-lg-9">
							            <input id="firma_eleman" runat="server" class="form-control text-3 h-auto py-2 clsWrap" type="text" name="firstName"  value='<%#Eval("firma_eleman") %>' />
							        </div>
							    </div>

                            
                                 <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 ">Firma Stajyer Sınavı</label>
							        <div class="col-lg-9">
							            <input id="firma_stajyer_kabul" runat="server" class="form-control text-3 h-auto py-2 clsWrap" type="text" name="firstName"  value='<%#Eval("firma_stajyer_kabul") %>' />
							        </div>
							    </div>

                                <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 ">Stajyer Açıklama</label>
							        <div class="col-lg-9">
							             <textarea id="firma_aciklama" runat="server" value='<%#Eval("firma_aciklama") %>' class="form-control form-control-lg text-4 clsWrap" ></textarea>
							        </div>
							    </div>

							         <button onserverclick="Firma_guncelle_click" runat="server"  class="btn btn-dark btn-modern btn-block text-uppercase rounded-0 font-weight-bold text-3 py-3" >Güncelle</button>
						

						</div>

        </div>
        </div>
</asp:Content>
