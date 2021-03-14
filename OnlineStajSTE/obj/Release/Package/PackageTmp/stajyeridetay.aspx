<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="stajyeridetay.aspx.cs" Inherits="OnlineStajSTE.stajyeridetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .clsWrap
        {
            word-break: break-all;
        }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="page-header page-header-modern bg-color-light-scale-1 page-header-md">
					<div class="container">
						<div class="row">
							<div class="col-md-12 align-self-center order-1">
								<ul class="breadcrumb d-block text-center">
									<li><a href="anasayfa.aspx">Anasayfa</a></li>
								</ul>
							</div>
						</div>
					</div>
				</section>

				<div class="container py-4">

					<div class="row">
						<div class="col">
							<div class="blog-posts single-post">
                                 <asp:Repeater ID="Repeater1" runat="server" ><ItemTemplate>
								<article class="post post-large blog-single-post border-0 m-0 p-0">                                   
                                   
									<div class="post-date ml-0">
										<span class="day"><asp:Label ID="Label1" runat="server" Text='<%#Eval("firma_puan") %>'></asp:Label></span>
										<span class="month"></span>
									</div>

									<div class="post-content ml-0">

										<h2 class="font-weight-semi-bold"><a href="blog-post.html"><asp:Label ID="Label2" runat="server" Text='<%#Eval("firma_adi") %>'></asp:Label></a></h2>

										<div class="post-meta">
											<span><i class="far fa-user"></i>  <a href="kullanici-profil.aspx?ogrenci_id=<%#Eval("ogrenci_id") %>"><asp:Label ID="Label3" runat="server" Text='<%#Eval("ogrenci_adi") %>'></asp:Label></a> </span>
										</div>                                        <p>Konum:<br /><asp:Label ID="Label12" runat="server" CssClass="clsWrap" Text='<%#Eval("firma_ilce") %>'></asp:Label>/<asp:Label ID="Label5" runat="server" Text='<%#Eval("firma_il") %>'></asp:Label></p>
                                        <p>Email:<br /><asp:Label ID="Label6" runat="server" CssClass="clsWrap" Text='<%#Eval("firma_email") %>'></asp:Label></p>
                                        <p>Telefon:<br /><asp:Label ID="Label7" runat="server" CssClass="clsWrap" Text='<%#Eval("firma_telefon") %>'></asp:Label></p>
                                        <p>Konu:<br /><asp:Label ID="Label8" runat="server" CssClass="clsWrap" Text='<%#Eval("firma_konu") %>'></asp:Label></p>
                                        <p>Staj yerinin beklentisi:<br /><asp:Label ID="Label9" CssClass="clsWrap" runat="server" Text='<%#Eval("firma_beklenti") %>'></asp:Label></p>
                                        <p>Maaş Bilgisi:<br /><asp:Label ID="Label10" CssClass="clsWrap"  runat="server" Text='<%#Eval("firma_stajer_maas") %>'></asp:Label></p>
										<p>Staj yerinde çalışan eleman sayısı:<br /><asp:Label ID="Label4" CssClass="clsWrap" runat="server" Text='<%#Eval("firma_eleman") %>'></asp:Label></p>
                                        
										<p>Stajyer seçimleri:<br /><asp:Label ID="Label11" runat="server" CssClass="clsWrap" Text='<%#Eval("firma_stajyer_kabul") %>'></asp:Label></p>
                                        
                                        
										<p>Açıklama:<br /><asp:Label ID="Label17"   runat="server" CssClass="clsWrap"  Text='<%#Eval("firma_aciklama") %>'></asp:Label></p>
                                        
										
								</article>
                                     </ItemTemplate>
                                        </asp:Repeater>
							</div>
						</div>
					</div>
                    
				</div>
</asp:Content>
