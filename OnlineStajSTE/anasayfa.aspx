<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="anasayfa.aspx.cs" Inherits="OnlineStajSTE.anasayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section class="section bg-color-light-scale-2 position-relative border-0 m-0">
					<div class="position-absolute top-0 left-0 w-50pct w-lg-auto d-none d-xl-block">
						<img src="dunya-haritasi.png" class="w-100 appear-animation" data-appear-animation="fadeInRightShorter" data-appear-animation-delay="1000" data-appear-animation-duration="1s" alt="dd"/>
					</div>
					<div class="position-absolute top-0 right-0 w-50pct w-lg-auto d-none d-xl-block">
						<img src="dunya-haritasi.png" class="w-100 appear-animation" data-appear-animation="fadeInLeftShorter" data-appear-animation-delay="1000" data-appear-animation-duration="1s" alt="dd"/>
					</div>
					<div class="container py-5 my-5">
						<div class="row justify-content-center py-3">
							<div class="col-lg-7 text-center">
								<div class="d-flex flex-column align-items-center justify-content-center h-100">
									<h1 class="text-color-dark font-weight-extra-bold text-10 text-md-12-13 line-height-1 mb-2 appear-animation" data-appear-animation="blurIn" data-appear-animation-delay="500" data-plugin-options="{'minWindowWidth': 0}">Türkiyenin Her Yerinde</h1>
									<h1 class="text-color-dark font-weight-extra-bold text-10 text-md-12-13 line-height-1 mb-2 appear-animation" data-appear-animation="blurIn" data-appear-animation-delay="500" data-plugin-options="{'minWindowWidth': 0}">Staj Yeri</h1>
									<p class="text-4-5 text-color-dark font-weight-light opacity-7 text-center mb-4"  data-plugin-options="{'startDelay': 1000, 'minWindowWidth': 0, 'animationSpeed': 30}">Staj Yerinizi Siz Seçin.</p>
									<div class="search-with-select">
												<a href="#" class="mobile-search-toggle-btn mr-2" data-porto-toggle-class="open">
													<i class="icons icon-magnifier text-color-dark text-color-hover-primary"></i>
												</a>
												<div class="search-form-wrapper input-group">
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
															<i class="icons icon-magnifier header-nav-top-icon text-color-dark"></i>ARA
														</button>
													</span>
												</div>
											</div>



								</div>
							</div>
						</div>
					</div>
				</section>
				<div class="home-intro home-intro-quaternary" id="home-intro">
					<div class="container">

						<div class="row text-center">
							<div class="col">
								<p class="mb-0">
									Standartlarınıza uygun, kendinizi geliştirmek istediğiniz alana yönelik <span class="highlighted-word highlighted-word-animation-1 highlighted-word-animation-1-light text-color-light font-weight-semibold text-5">Staj Yeri</span>
									<span>Seçiminiz için Staj Değerlendirmelerini okuyabilirsiniz.</span>
								</p>
							</div>
						</div>

					</div>
				</div>

    <div id="examples" class="container py-2">
        <div class="row mt-3 pb-4">
							<div class="col text-center">
								<h2 class="font-weight-bold mb-0">Öne Çıkan Staj Yerleri</h2>
								<p class="lead text-4 pt-2 font-weight-normal">Değerlendirme formlarına göre ilk 3 'e girmeyi başaran en güncel staj yerleri </p>
							</div>
						</div>
    <div class="row mb-5 pb-3">
						



        <asp:Repeater ID="Repeater1" runat="server"> <ItemTemplate>


						<div class="col-md-6 col-lg-4 mb-5 mb-lg-0 appear-animation" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="200">
						

							<div class="card flip-card text-center rounded-0">
								<div class="flip-front p-5">
									<div class="flip-content my-4">
										<strong class="font-weight-extra-bold text-color-dark line-height-1 text-13 mb-3 d-inline-block">

                                            <asp:Label ID="Label2" runat="server" Text='<%#Eval("firma_puan") %>'></asp:Label>

										</strong>
										<h4 class="font-weight-bold text-color-primary text-4"> 

                                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("firma_adi") %>'></asp:Label>

										</h4>
										<p> <asp:Label ID="Label3" runat="server" Text='<%#Eval("firma_ilce") %>'></asp:Label>/ <asp:Label ID="Label4" runat="server" Text='<%#Eval("firma_il") %>'></asp:Label></p>	
									<p>Mail: <asp:Label ID="Label5" runat="server" Text='<%#Eval("firma_email") %>'></asp:Label></p>
                                        <p>Telefon: <asp:Label ID="Label6" runat="server" Text='<%#Eval("firma_telefon") %>'></asp:Label></p>
                                    </div>
								</div>
								<div class="flip-back d-flex align-items-center p-5" style="background-image: url(img/generic/generic-corporate-17-1.jpg); background-size: cover; background-position: center;">
									<div class="flip-content my-4">
										<h4 class="font-weight-bold text-color-light">   <asp:Label ID="Label7" runat="server" Text='<%#Eval("firma_adi") %>'></asp:Label> </h4>
										<p class="font-weight-light text-color-light opacity-5">Aylık Maaaş <asp:Label ID="Label8" runat="server" Text='<%#Eval("firma_stajer_maas") %>'></asp:Label> olmak ile beraber <asp:Label ID="Label9" runat="server" Text='<%#Eval("firma_konu") %>'></asp:Label> işleri yaptık.</p>
										<a href="stajyeridetay.aspx?firma_id=<%#Eval("firma_id") %>" class="btn btn-light btn-modern text-color-dark font-weight-bold">İncele</a>
									</div>
								</div>
							</div>
						</div>
						
        </ItemTemplate></asp:Repeater>





					</div>
        </div>
</asp:Content>
