<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
    

<%

Set Baglantim = Server.CreateObject("ADODB.Connection")
Baglantim.Open("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("moon.mdb"))
Set Tablom = server. CreateObject("ADODB.Recordset")
Tablom.Open "kisi_kayit", Baglantim,1,3

Tablom.AddNew 
'Tablodaki alanlara veri aktarma
Tablom("isim") =request("isim")
Tablom("soyisim") =request("soyisim")
Tablom("ogrenci_num") =request("ogrno")
Tablom("mezun_bol") =request("bolum")
Tablom("sehir") =request("sehir")
Tablom("adres") =request("adres")
Tablom("mail") =request("mail")
Tablom("cep_no") =request("telno")
Tablom("cinsiyet") =request("cinsiyet")
Tablom("mezun_yil") =request("mezuniyetyili")
Tablom("meslek") =request("meslek")
Tablom("sosyalmedya") =request("sosyalmedya")
Tablom("web_adres") =request("webadrs")
Tablom("kisi_tanitim") =request("tanitim")
Tablom("sifre") =request("sifre")
'aktarma islemi birince tablonun guncellenmesi:
Tablom.Update

'tablonun kapatilmasi:
  Tablom.close
  set Tablom= Nothing
'baglantinin kesilmesi:
  Baglantim.close
  set Baglantim= Nothing


response.redirect "kayit_ol.asp"

%>
</body>
</html>