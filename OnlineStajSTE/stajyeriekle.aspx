<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="stajyeriekle.aspx.cs" Inherits="OnlineStajSTE.stajyeriekle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container">

					<div class="row">
						<div class="col">
							<ul class="breadcrumb breadcrumb-dividers-no-opacity font-weight-bold text-6 justify-content-center my-5">
								<li class="text-transform-none mr-2">
									<a href="anasayfa.aspx" class="text-decoration-none text-color-dark text-color-hover-primary">Anasayfa
									</a>
								</li>
								<li class="text-transform-none text-color-dark mr-2">
									<a href="stajyeriekle.aspx" class="text-decoration-none text-color-primary">Staj Yeri Ekleme Formu</a>
								</li>
							</ul>
						</div>
					</div>



						<div class="row">
							<div class="col-lg-7 mb-4 mb-lg-0">

								
								<div class="form-row">
											<div class="form-group col">
												<label class="text-color-dark text-3">Bu Firmaya Vereceğiniz Puan <span class="text-color-danger">*</span></label>
												 <asp:DropDownList ID="DropDownList4" runat="server" class="form-control form-control-lg text-4"></asp:DropDownList>
											</div>
										</div>

                                        <div class="form-row">
											<div class="form-group col">
												<label class="text-color-dark text-3">Firmanın Adı <span class="text-color-danger">*</span></label>
												<input id="text2" runat="server" type="text" value="" class="form-control form-control-lg text-4" />
											</div>
										</div>

                                        <div class="form-row">
											<div class="form-group col">
                                                
												<label class="text-color-dark text-3">Firmanın Olduğu İl <span class="text-color-danger">*</span></label>
                                                <asp:DropDownList ID="DropDownList1" runat="server"  class="form-control form-control-lg text-4" AutoPostBack="True" 
        onselectedindexchanged="Ddlselect_Changed" ></asp:DropDownList>
                                               
									
											</div>
										</div>

										<div class="form-row">
											<div class="form-group col">
                                               
												<label class="text-color-dark text-3">Firmanın Olduğu İlçe <span class="text-color-danger">*</span></label>
                                                <asp:DropDownList ID="DropDownList2" runat="server" class="form-control form-control-lg text-4"></asp:DropDownList>
												
											</div>
										</div>


                                        <div class="form-row">
											<div class="form-group col">
												<label class="text-color-dark text-3">Firmanın Email Adresi <span class="text-color-danger">*</span></label>
												<input id="text6" runat="server" type="email" value="" class="form-control form-control-lg text-4" />
											</div>
										</div>

                                        <div class="form-row">
											<div class="form-group col">
												<label class="text-color-dark text-3">Firmanın Telefon Numarası <span class="text-color-danger">*</span></label>
												<input id="text7" runat="server" type="text" value="" class="form-control form-control-lg text-4" />
											</div>
										</div>

                                        <div class="form-row">
											<div class="form-group col">
												<label class="text-color-dark text-3">Firmanın Yaptığı İş <span class="text-color-danger">*</span></label>
												<input id="text8" runat="server" type="text" value="" class="form-control form-control-lg text-4" />
											</div>
										</div>

                                        <div class="form-row">
											<div class="form-group col">
												<label class="text-color-dark text-3">Firmanın Stajyerden Beklentisi <span class="text-color-danger">*</span></label>
												<input id="text9" runat="server" type="text" value="" class="form-control form-control-lg text-4" />
											</div>
										</div>

                                        <div class="form-row">
											<div class="form-group col">
												<label class="text-color-dark text-3">Firma Stajyere Maaş Ödüyormu <span class="text-color-danger">*</span></label>
                                                <asp:DropDownList ID="DropDownList3"  class="form-control form-control-lg text-4"  runat="server">
                                                    <asp:ListItem>Ödendi</asp:ListItem>
                                                    <asp:ListItem>Ödenmedi</asp:ListItem>
                                                </asp:DropDownList>
											</div>
										</div>

                                        <div class="form-row">
											<div class="form-group col">
												<label class="text-color-dark text-3">Firma Eleman Sayısı <span class="text-color-danger">*</span></label>
												<input id="text11" runat="server" type="text" value="" class="form-control form-control-lg text-4"/>
											</div>
										</div>

                                        <div class="form-row">
											<div class="form-group col">
												<label class="text-color-dark text-3">Firma Stajyer Kabulu için Yaptığı işlem <span class="text-color-danger">*</span></label>
												<input id="text12" runat="server" type="text" value="" class="form-control form-control-lg text-4" />
											</div>
										</div>

                                        <div class="form-row">
											<div class="form-group col">
												<label class="text-color-dark text-3">Firma için Diyecekleriniz Neler? <span class="text-color-danger">*</span></label>
                                                <textarea id="text13" runat="server" value="" class="form-control form-control-lg text-4" ></textarea>
											</div>
										</div>
										
										<div class="form-row">
											<div class="form-group col">
												<button onserverclick="Stj_ekleclick" runat="server"  class="btn btn-dark btn-modern btn-block text-uppercase rounded-0 font-weight-bold text-3 py-3" >Ekle</button>
											
											</div>
										</div>


							</div>
						</div>

				</div>
</asp:Content>
