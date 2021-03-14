<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="kullaniciprofili.aspx.cs" Inherits="OnlineStajSTE.kullaniciprofili" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="page-header page-header-modern bg-color-light-scale-1 page-header-lg">
					<div class="container">
						<div class="row">

							<div class="col-md-12 align-self-center p-static order-2 text-center">


								<h1 class="font-weight-bold text-dark"> <asp:Label ID="Label4" runat="server" Text=""></asp:Label></h1>

							</div>

							<div class="col-md-12 align-self-center order-1">


								<ul class="breadcrumb d-block text-center">
									<li><a href="anasayfa.aspx">Anasayfa</a></li>
									<li class="active"> <asp:Label ID="Label5" runat="server" Text=""></asp:Label></li>
								</ul>
							</div>
						</div>
					</div>
				</section>

				<div class="container pt-3 pb-2">

					<div class="row pt-2">
						<div class="col-lg-3 mt-4 mt-lg-0">

							<div class="d-flex justify-content-center mb-4">
								<div class="profile-image-outer-container">
									<div class="profile-image-inner-container bg-color-primary">
                                        <asp:Image ID="Image1" runat="server" />
										<span id="imagebutton" runat="server" class="profile-image-button bg-color-dark">
											<i class="fas fa-camera text-light"></i>
										</span>
									</div>
                                    <asp:FileUpload ID="FileUpload1" runat="server" class="profile-image-input" />
                                    
								
								</div>
							</div>

							<aside class="sidebar mt-2" id="sidebar">
								<ul class="nav nav-list flex-column mb-5">
									<li id="profilisim" runat="server" class="nav-item"><a onserverclick="Profil_click" runat="server" class="nav-link text-dark active">
                                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label></a></li>
                                   
									<li id="profilguncelle" runat="server" class="nav-item"><a  onserverclick="Profil_guncelle_click" runat="server" class="nav-link">Profilimi Güncelle</a></li>
									<li id="stjyeriliste"  runat="server" class="nav-item"><a onserverclick="Staj_yeri_click" runat="server" class="nav-link">Staj Yeri</a></li>
                                    <li id="stajguncelle" runat="server" class="nav-item"><a  onserverclick="Staj_yeri_guncelle_click" runat="server" class="nav-link">Staj Yerimi Güncelle</a></li>

								</ul>
							</aside>

						</div>






						<div id="ogrenci" runat="server" class="col-lg-9">

							<h2 class="font-weight-bold line-height-3 text-7 mb-0"> <asp:Label ID="Label2" runat="server" Text=""></asp:Label></h2>

							    <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 ">Ad</label>
							        <div class="col-lg-9">
							            <input id="ogrenci_adi" runat="server" class="form-control text-3 h-auto py-2" type="text" name="firstName" disabled="disabled" value='<%#Eval("ogrenci_adi") %>' />
							        </div>
							    </div>
							    <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 ">Soyad</label>
							        <div class="col-lg-9">
							            <input id="ogrenci_soyadi" runat="server" class="form-control text-3 h-auto py-2" type="text" name="lastName" disabled="disabled" value='<%#Eval("ogrenci_soyadi") %>' />
							        </div>
							    </div>
							    <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 ">Email</label>
							        <div class="col-lg-9">
							            <input id="ogrenci_email" runat="server" class="form-control text-3 h-auto py-2" type="email" name="email" disabled="disabled" value='<%#Eval("ogrenci_email") %>' />
							        </div>
							    </div>
							   
							   

						</div>


                        <div id="ogrenci_guncelle" runat="server" class="col-lg-9">

							<h2 class="font-weight-bold line-height-3 text-7 mb-0"> <asp:Label ID="Label3" runat="server" Text=""></asp:Label></h2>

							    <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 ">Ad</label>
							        <div class="col-lg-9">
							            <input id="ogrenci_adi1" runat="server" class="form-control text-3 h-auto py-2" type="text"  value='<%#Eval("ogrenci_adi") %>' />
							        </div>
							    </div>
							    <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 ">Soyad</label>
							        <div class="col-lg-9">
							            <input id="ogrenci_soyadi1" runat="server" class="form-control text-3 h-auto py-2" type="text"  value='<%#Eval("ogrenci_soyadi") %>' />
							        </div>
							    </div>
							    <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 ">Email</label>
							        <div class="col-lg-9">
							            <input id="ogrenci_email1" runat="server" class="form-control text-3 h-auto py-2" type="email"  value='<%#Eval("ogrenci_email") %>' />
							        </div>
							    </div>
							   
							   
							    <div id="Div2" runat="server" class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 ">Parola</label>
							        <div class="col-lg-9">
							            <input id="ogrenci_parola1" runat="server" class="form-control text-3 h-auto py-2" type="text"  value='<%#Eval("ogrenci_parola") %>' />
							        </div>
							    </div>
							   
                            <button onserverclick="Guncelle_click" runat="server"  class="btn btn-dark btn-modern btn-block text-uppercase rounded-0 font-weight-bold text-3 py-3" >Güncelle</button>
						</div>





						<div id="firma" runat="server" class="col-lg-9">

							<h2 class="font-weight-bold line-height-3 text-7 mb-0"><asp:Label ID="Label6" runat="server" Text=""></asp:Label></h2>

                                
                                 <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 ">Firma Puanı</label>
							        <div class="col-lg-9">
							            <input id="firma_puan1" runat="server" class="form-control text-3 h-auto py-2" type="text" name="firstName" disabled="disabled" value='<%#Eval("firma_puan") %>' />
							        </div>
							    </div>
							    <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 ">Firma Adı</label>
							        <div class="col-lg-9">
							            <input id="firma_adi1" runat="server" class="form-control text-3 h-auto py-2" type="text" name="firstName" disabled="disabled" value='<%#Eval("firma_adi") %>' />
							        </div>
							    </div>

                                 <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 ">Firma İl</label>
							        <div class="col-lg-9">
							            <input id="firma_il1" runat="server" class="form-control text-3 h-auto py-2" type="text" name="firstName" disabled="disabled" value='<%#Eval("firma_il") %>' />
							        </div>
							    </div>

                                 <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 ">Firma İlçe</label>
							        <div class="col-lg-9">
							            <input id="firma_ilce1" runat="server" class="form-control text-3 h-auto py-2" type="text" name="firstName" disabled="disabled" value='<%#Eval("firma_ilce") %>' />
							        </div>
							    </div>

                                 <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 ">Firma Email</label>
							        <div class="col-lg-9">
							            <input id="firma_email1" runat="server" class="form-control text-3 h-auto py-2" type="email" name="firstName" disabled="disabled" value='<%#Eval("firma_email") %>' />
							        </div>
							    </div>

                                 <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 ">Firma Telefon</label>
							        <div class="col-lg-9">
							            <input id="firma_telefon1" runat="server" class="form-control text-3 h-auto py-2" type="text" name="firstName" disabled="disabled" value='<%#Eval("firma_telefon") %>' />
							        </div>
							    </div>

                                 <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 ">Firmanın İşi</label>
							        <div class="col-lg-9">
							            <input id="firma_konu1" runat="server" class="form-control text-3 h-auto py-2" type="text" name="firstName" disabled="disabled" value='<%#Eval("firma_konu") %>' />
							        </div>
							    </div>

                                 <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 ">Firma Stajyerden Beklentisi</label>
							        <div class="col-lg-9">
							            <input id="firma_beklenti1" runat="server" class="form-control text-3 h-auto py-2" type="text" name="firstName" disabled="disabled" value='<%#Eval("firma_beklenti") %>' />
							        </div>
							    </div>

                                 <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 ">Firma Maaş Veriyormu</label>
							        <div class="col-lg-9">
							            <input id="firma_stajer_maas1" runat="server" class="form-control text-3 h-auto py-2" type="text" name="firstName" disabled="disabled" value='<%#Eval("firma_stajer_maas") %>' />
							        </div>
							    </div>

                                 <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 ">Firmanın Çalışan Sayısı</label>
							        <div class="col-lg-9">
							            <input id="firma_eleman1" runat="server" class="form-control text-3 h-auto py-2" type="text" name="firstName" disabled="disabled"  value='<%#Eval("firma_eleman") %>' />
							        </div>
							    </div>

                            
                                 <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 ">Firma Stajyer Sınavı</label>
							        <div class="col-lg-9">
							            <input id="firma_stajyer_kabul1" runat="server" class="form-control text-3 h-auto py-2" type="text" name="firstName" disabled="disabled"  value='<%#Eval("firma_stajyer_kabul") %>' />
							        </div>
							    </div>

                                <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 ">Stajyer Açıklama</label>
							        <div class="col-lg-9">
							             <textarea id="firma_aciklama1" runat="server" value='<%#Eval("firma_aciklama") %>' disabled="disabled" class="form-control form-control-lg text-4" ></textarea>
							        </div>
							    </div>

							   

						</div>



                        <div id="firma_guncelle" runat="server" class="col-lg-9">

							<h2 class="font-weight-bold line-height-3 text-7 mb-0"><asp:Label ID="Label7" runat="server" Text=""></asp:Label></h2>

                                
                                 <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 ">Firma Puanı</label>
							        <div class="col-lg-9">
                                        <asp:DropDownList ID="DropDownList1" class="form-control text-3 h-auto py-2" runat="server"></asp:DropDownList>
							        </div>
							    </div>
							    <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 ">Firma Adı</label>
							        <div class="col-lg-9">
							            <input id="firma_adi" runat="server" class="form-control text-3 h-auto py-2" type="text" name="firstName" value='<%#Eval("firma_adi") %>' />
							        </div>
							    </div>

                     

                                 <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 ">Firma Email</label>
							        <div class="col-lg-9">
							            <input id="firma_email" runat="server" class="form-control text-3 h-auto py-2" type="email" name="firstName" value='<%#Eval("firma_email") %>' />
							        </div>
							    </div>

                                 <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 ">Firma Telefon</label>
							        <div class="col-lg-9">
							            <input id="firma_telefon" runat="server" class="form-control text-3 h-auto py-2" type="text" name="firstName" value='<%#Eval("firma_telefon") %>' />
							        </div>
							    </div>

                                 <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 ">Firmanın İşi</label>
							        <div class="col-lg-9">
							            <input id="firma_konu" runat="server" class="form-control text-3 h-auto py-2" type="text" name="firstName" value='<%#Eval("firma_konu") %>' />
							        </div>
							    </div>

                                 <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 ">Firma Stajyerden Beklentisi</label>
							        <div class="col-lg-9">
							            <input id="firma_beklenti" runat="server" class="form-control text-3 h-auto py-2" type="text" name="firstName" value='<%#Eval("firma_beklenti") %>' />
							        </div>
							    </div>

                                 <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 ">Firma Maaş Veriyormu</label>
							        <div class="col-lg-9">
							            <input id="firma_stajer_maas" runat="server" class="form-control text-3 h-auto py-2" type="text" name="firstName" value='<%#Eval("firma_stajer_maas") %>' />
							        </div>
							    </div>

                                 <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 ">Firmanın Çalışan Sayısı</label>
							        <div class="col-lg-9">
							            <input id="firma_eleman" runat="server" class="form-control text-3 h-auto py-2" type="text" name="firstName"  value='<%#Eval("firma_eleman") %>' />
							        </div>
							    </div>

                            
                                 <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 ">Firma Stajyer Sınavı</label>
							        <div class="col-lg-9">
							            <input id="firma_stajyer_kabul" runat="server" class="form-control text-3 h-auto py-2" type="text" name="firstName"  value='<%#Eval("firma_stajyer_kabul") %>' />
							        </div>
							    </div>

                                <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 ">Stajyer Açıklama</label>
							        <div class="col-lg-9">
							             <textarea id="firma_aciklama" runat="server" value='<%#Eval("firma_aciklama") %>' class="form-control form-control-lg text-4" ></textarea>
							        </div>
							    </div>

							         <button onserverclick="Firma_guncelle_click" runat="server"  class="btn btn-dark btn-modern btn-block text-uppercase rounded-0 font-weight-bold text-3 py-3" >Güncelle</button>
						

						</div>







					</div>

				</div>
</asp:Content>
