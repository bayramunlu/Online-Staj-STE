<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="stajyerleri.aspx.cs" Inherits="OnlineStajSTE.stajyerleri" %>
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
									<li class="active">Blog</li>
								</ul>
							</div>
						</div>
					</div>
				</section>

				<div class="container py-4">

					<div class="row">
						<div class="col-lg-3 order-lg-2">
							<aside class="sidebar">															<h5 class="font-weight-semi-bold pt-4">Filtrele</h5>                                <div class="search-with-select">									<div class="search-form-wrapper input-group">
													<span class="input-group-append">
			<asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Value="01">Adana</asp:ListItem>
            <asp:ListItem Value="02">Adiyaman</asp:ListItem>
            <asp:ListItem Value="03">Afyonkarahisar</asp:ListItem>
            <asp:ListItem Value="04">Agri</asp:ListItem>
            <asp:ListItem Value="05">Amasya</asp:ListItem>
            <asp:ListItem Value="06">Ankara</asp:ListItem>
            <asp:ListItem Value="07">Antalya</asp:ListItem>
            <asp:ListItem Value="08">Artvin</asp:ListItem>
            <asp:ListItem Value="09">Aydin</asp:ListItem>
            <asp:ListItem Value="10">Balikesir</asp:ListItem>
            <asp:ListItem Value="11">Bilecik</asp:ListItem>
            <asp:ListItem Value="12">Bingol</asp:ListItem>
            <asp:ListItem Value="13">Bitlis</asp:ListItem>
            <asp:ListItem Value="14">Bolu</asp:ListItem>
            <asp:ListItem Value="15">Burdur</asp:ListItem>
            <asp:ListItem Value="16">Bursa</asp:ListItem>
            <asp:ListItem Value="17">Canakkale</asp:ListItem>
            <asp:ListItem Value="18">Cankırı</asp:ListItem>
            <asp:ListItem Value="19">Corum</asp:ListItem>
            <asp:ListItem Value="20">Denizli</asp:ListItem>
            <asp:ListItem Value="21">Diyarbakir</asp:ListItem>
            <asp:ListItem Value="22">Edirne</asp:ListItem>
            <asp:ListItem Value="23">Elazig</asp:ListItem>
            <asp:ListItem Value="24">Erzincan</asp:ListItem>
            <asp:ListItem Value="25">Erzurum</asp:ListItem>
            <asp:ListItem Value="26">Eskisehir</asp:ListItem>
            <asp:ListItem Value="27">Gaziantep</asp:ListItem>
            <asp:ListItem Value="28">Giresun</asp:ListItem>
            <asp:ListItem Value="29">Gümüshane</asp:ListItem>
            <asp:ListItem Value="30">Hakkari</asp:ListItem>
            <asp:ListItem Value="31">Hatay</asp:ListItem>
            <asp:ListItem Value="32">Isparta</asp:ListItem>
            <asp:ListItem Value="33">Mersin</asp:ListItem>
            <asp:ListItem Value="34">İstanbul</asp:ListItem>
            <asp:ListItem Value="35">İzmir</asp:ListItem>
            <asp:ListItem Value="36">Kars</asp:ListItem>
            <asp:ListItem Value="37">Kastamonu</asp:ListItem>
            <asp:ListItem Value="38">Kayseri</asp:ListItem>
            <asp:ListItem Value="39">Kirklareli</asp:ListItem>
            <asp:ListItem Value="40">Kirsehir</asp:ListItem>
            <asp:ListItem Value="41">Kocaeli</asp:ListItem>
            <asp:ListItem Value="42">Konya</asp:ListItem>
            <asp:ListItem Value="43">Kutahya</asp:ListItem>
            <asp:ListItem Value="44">Malatya</asp:ListItem>
            <asp:ListItem Value="45">Manisa</asp:ListItem>
            <asp:ListItem Value="46">Kahramanmaras</asp:ListItem>
            <asp:ListItem Value="47">Mardin</asp:ListItem>
            <asp:ListItem Value="48">Mugla</asp:ListItem>
            <asp:ListItem Value="49">Mus</asp:ListItem>
            <asp:ListItem Value="50">Nevsehir</asp:ListItem>
            <asp:ListItem Value="51">Nigde</asp:ListItem>
            <asp:ListItem Value="52">Ordu</asp:ListItem>
            <asp:ListItem Value="53">Rize</asp:ListItem>
            <asp:ListItem Value="54">Sakarya</asp:ListItem>
            <asp:ListItem Value="55">Samsun</asp:ListItem>
            <asp:ListItem Value="56">Siirt</asp:ListItem>
            <asp:ListItem Value="57">Sinop</asp:ListItem>
            <asp:ListItem Value="58">Sivas</asp:ListItem>
            <asp:ListItem Value="59">Tekirdag</asp:ListItem>
            <asp:ListItem Value="60">Tokat</asp:ListItem>
            <asp:ListItem Value="61">Trabzon</asp:ListItem>
            <asp:ListItem Value="62">Tunceli</asp:ListItem>
            <asp:ListItem Value="63">Sanliurfa</asp:ListItem>
            <asp:ListItem Value="64">Usak</asp:ListItem>
            <asp:ListItem Value="65">Van</asp:ListItem>
            <asp:ListItem Value="66">Yozgat</asp:ListItem>
            <asp:ListItem Value="67">Zonguldak</asp:ListItem>
            <asp:ListItem Value="68">Aksaray</asp:ListItem>
            <asp:ListItem Value="69">Bayburt</asp:ListItem>
            <asp:ListItem Value="70">Karaman</asp:ListItem>
            <asp:ListItem Value="71">Kirikkale</asp:ListItem>
            <asp:ListItem Value="72">Batman</asp:ListItem>
            <asp:ListItem Value="73">Sirnak</asp:ListItem>
            <asp:ListItem Value="74">Bartin</asp:ListItem>
            <asp:ListItem Value="75">Ardahan</asp:ListItem>
            <asp:ListItem Value="76">Igdir</asp:ListItem>
            <asp:ListItem Value="77">Yalova</asp:ListItem>
            <asp:ListItem Value="78">Karabuk</asp:ListItem>
            <asp:ListItem Value="79">Kilis</asp:ListItem>
            <asp:ListItem Value="80">Osmaniye</asp:ListItem>
            <asp:ListItem Value="81">Duzce</asp:ListItem>
        </asp:DropDownList>
														
														<button class="btn" onserverclick="Filtrele_click"  runat="server" type="submit">
															<i class="icons icon-magnifier header-nav-top-icon text-color-dark"></i>
														</button>
													</span>
												</div>
                                   </div>

							</aside>
						</div>
						<div class="col-lg-9 order-lg-1">
							<div class="blog-posts">



                                <asp:Repeater ID="Repeater1" runat="server">
                                    <ItemTemplate>
								<article class="post post-medium">
									<div class="row mb-3">
										<div class="col-lg-7">
											<div class="post-content">
												<h2 class="font-weight-semibold pt-4 pt-lg-0 text-5 line-height-4 mb-2"><a href="stajyeridetay.aspx?firma_id=<%#Eval("firma_id") %>"> <asp:Label ID="Label1" runat="server" Text='<%#Eval("firma_adi") %>'></asp:Label></a></h2>
												<p class="mb-0"> <asp:Label ID="Label4" runat="server" CssClass="clsWrap" Text='<%#Eval("firma_aciklama") %>'></asp:Label> [...]</p>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col">
											<div class="post-meta">
												<span><i class="far fa-calendar-alt"></i>  <asp:Label ID="Label5" CssClass="clsWrap" runat="server" Text='<%#Eval("firma_yayinlanma_tarihi") %>'></asp:Label> </span>
												<span><i class="far fa-user"></i> <a href="kullanici-profil.aspx?ogrenci_id=<%#Eval("ogrenci_id") %>"> <asp:Label ID="Label2" runat="server" Text='<%#Eval("ogrenci_adi") %>'></asp:Label></a> </span>
												
												<span>PUAN: <a > <asp:Label ID="Label3" runat="server" CssClass="clsWrap" Text='<%#Eval("firma_puan") %>'></asp:Label></a></span>
												<span class="d-block d-sm-inline-block float-sm-right mt-3 mt-sm-0"><a href="stajyeridetay.aspx?firma_id=<%#Eval("firma_id") %>" class="btn btn-xs btn-light text-1 text-uppercase">İncele</a></span>
											</div>
										</div>
									</div>
								</article>
                                        </ItemTemplate>
                                </asp:Repeater>



							</div>
						</div>
					</div>

				</div>
</asp:Content>
