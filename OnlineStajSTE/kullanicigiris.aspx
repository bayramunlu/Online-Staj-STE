<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="kullanicigiris.aspx.cs" Inherits="OnlineStajSTE.kullanicigiris" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    	<div class="container py-4">

					<div class="row justify-content-center">
						<div class="col-md-6 col-lg-5 mb-5 mb-lg-0">
							<h2 class="font-weight-bold text-5 mb-0">Giriş</h2>
								<div class="form-row">
									<div class="form-group col">
										<label class="text-color-dark text-3">Email  <span class="text-color-danger">*</span></label>
                                  
										<input id="g_email" runat="server" type="text" value="" class="form-control form-control-lg text-4" />
									</div>
								</div>
								<div class="form-row">
									<div class="form-group col">
										<label class="text-color-dark text-3">Parola <span class="text-color-danger">*</span></label>
                                       
										<input id="g_parola" runat="server" type="password" value="" class="form-control form-control-lg text-4" />
									</div>
								</div>
								<div class="form-row justify-content-between">
									<div class="form-group col-md-auto">
										<div class="custom-control custom-checkbox">
											<input  id="g_benihatirla" runat="server" type="checkbox" >
											<label >Beni Hatırla</label>
										</div>
									</div>
								</div>
								<div class="form-row">
									<div class="form-group col">
										<button onserverclick="Giris_click" id="giris" runat="server" type="submit" class="btn btn-dark btn-modern btn-block text-uppercase rounded-0 font-weight-bold text-3 py-3" data-loading-text="Yükleniyor...">Giriş</button>
									</div>
								</div>
						</div>
						<div class="col-md-6 col-lg-5">
							<h2 class="font-weight-bold text-5 mb-0">Kayıt Ol</h2>
                            <div class="form-row">
									<div class="form-group col">
										<label class="text-color-dark text-3">Ad <span class="text-color-danger">*</span></label>
										<input id="Text1" runat="server" type="text" value="" class="form-control form-control-lg text-4" />
									</div>
								</div>
                            <div class="form-row">
									<div class="form-group col">
										<label class="text-color-dark text-3">Soyad <span class="text-color-danger">*</span></label>
										<input id="Text2" runat="server" type="text" value="" class="form-control form-control-lg text-4" />
									</div>
								</div>
								<div class="form-row">
									<div class="form-group col">
										<label class="text-color-dark text-3">Email <span class="text-color-danger">*</span></label>
										<input id="k_email" runat="server" type="text" value="" class="form-control form-control-lg text-4" />
									</div>
								</div>
								<div class="form-row">
									<div class="form-group col">
										<label class="text-color-dark text-3">Parola <span class="text-color-danger">*</span></label>
										<input id="k_parola" runat="server" type="password" value="" class="form-control form-control-lg text-4" />
									</div>
								</div>
								<div class="form-row">
									<div class="form-group col">
										<button onserverclick="Kayit_click"  id="kayit" runat="server" type="submit" class="btn btn-dark btn-modern btn-block text-uppercase rounded-0 font-weight-bold text-3 py-3" data-loading-text="Yükleniyor...">Kayıt Ol</button>
									</div>
								</div>
						</div>
					</div>

				</div>
</asp:Content>
