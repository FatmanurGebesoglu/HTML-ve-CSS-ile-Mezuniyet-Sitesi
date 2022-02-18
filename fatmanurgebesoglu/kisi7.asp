<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Kişi Detay</title>
    <link rel="stylesheet" href="style.css">

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
</head>

<body>
    <div id="top">
        <font>Karabük Üniversitesi Mezunlar Topluluğu</font>
    </div>
    <div id="container">

        <section>
            <nav>
                <ul>
                    <li><a href="index.asp"><i class="fas fa-home"></i>Anasayfa</a></li>
                    <li><a href="kayit_ol.asp"><i class="fas fa-user-edit"></i>Kayıt Ol</a></li>
                    <li><a href="oturum_ac.asp"><i class="fas fa-user-check"></i>Oturum Aç</a></li>
                    <li><a href="kisiler_index.asp"><i class="fas fa-users"></i>Kişiler</a></li>
                    <li><a href="kim_nerede.asp"><i class="fas fa-eye"></i>Kim, Nerede, Ne yapıyor?</a></li>
                    <li><a href="forum.asp"><i class="fas fa-comments"></i>Forum</a></li>
                    <li><a href="foto_index.asp"><i class="fas fa-images"></i>Fotoğraflar</a></li>
                    <li><a href="video_index.asp"><i class="fas fa-play-circle"></i>Videolar</a></li>
                    <li><a href="harita.asp"><i class="fas fa-map-signs"></i>Harita</a></li>
                </ul>
            </nav>
           <main>
                <h1>Ayşegül Çiçek</h1>
                <div class="uye_islem">
                    <form action="kisiyediyorum.asp" method="POST">
                       <img width="70%" height="400px" src="resimler/kisi7.jpg" alt="" >
                        <div>
                            <input type="text" placeholder="Adınız" name="user" required>
                        </div>
                        <div>
                            <input type="text" placeholder="Bir şeyler yaz..." name="message" required>
                        </div>
                        <button type="submit">Gönder</button>
                    </form>
                
                  <div>

                        <%
               
Set Baglantim = Server.CreateObject("ADODB.Connection")
Baglantim.Open("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("moon.mdb"))
                Set Tablom = server. CreateObject("ADODB.Recordset")
                sql="select * from kisi_kayit where id=9"
                Tablom.Open sql,Baglantim

                
  %>
       <table class="uye_yorumları" style="border: 1px solid black; border-collapse:collapse; width:90%;" border="1">
                            <tr>

                                <td>İsim</td>
                                <td>Soyisim</td>
                                <td>Bölüm</td>
                                <td>Mezuniyet Yılı</td>
                                <td>Tanıtım</td>

                            </tr>
  <%
                          response.write "<tr>"
                       response.write "<td>" & Tablom("isim") & "</td>"
                       response.write "<td>" & Tablom("soyisim") & "</td>"
                       response.write "<td>" & Tablom("mezun_bol") & "</td>"
                       response.write "<td>" & Tablom("mezun_yil") & "</td>"
                       response.write "<td>" & Tablom("kisi_tanitim") & "</td>"
                    response.write "</tr>" 
                           
                            %>

                    </div>                                     

                    <div>

                        <%
                 
Set Baglantim = Server.CreateObject("ADODB.Connection")
Baglantim.Open("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("moon.mdb"))
                Set Tablom = server. CreateObject("ADODB.Recordset")
                Tablom.Open "kisi7_yorum",Baglantim,1,3
  %>
                        <table class="uye_yorumları" style="border: 1px solid black; border-collapse:collapse; width:90%; margin-top: 20px; margin-bottom: 20px;" border="1" >
                            <tr>

                                <td>ISIM</td>
                                <td>YORUM</td>
                                <td>TARIH</td>

                            </tr>

                            <%
                   do while not Tablom.eof
                   response.write "<tr>"
                       response.write "<td>" & Tablom("isim") & "</td>"
                       response.write "<td>" & Tablom("yorum") & "</td>"
                       response.write "<td>" & Tablom("tarih") & "</td>"
                    response.write "</tr>"   
                    Tablom.movenext
                   loop
                   %>

                        </table>
                    </div>
                </div>
            </main>
        </section>
        <footer>Tüm hakları saklıdır &copy; | 2021</footer>

    </div>
</body>

</html>