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
Tablom.Open "video2_yorum", Baglantim,1,3

Tablom.AddNew 
'Tablodaki alanlara veri aktarma
Tablom("isim") =request("user")
Tablom("yorum") =request("message")
Tablom("tarih") =now()
'aktarma islemi birince tablonun guncellenmesi:
Tablom.Update

'tablonun kapatilmasi:
  Tablom.close
  set Tablom= Nothing
'baglantinin kesilmesi:
  Baglantim.close
  set Baglantim= Nothing


response.redirect "video2.asp"

%>
</body>
</html>