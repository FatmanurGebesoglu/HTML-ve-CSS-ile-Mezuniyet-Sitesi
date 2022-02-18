<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Kayıt Ol</title>
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
                <h1>Kayıt Ol</h1>
                
                <div class="uye_islem">
                   <form action="kayit_islem_data.asp">
                    <div>
                        <input type="text" placeholder="Adın" name="isim" required>
                    </div>
                    <div>
                        <input type="text" placeholder="Soyadın" name="soyisim" required>
                    </div>
                    <div>
                        <input type="text" placeholder="Öğrenci numaran" name="ogrno" required>
                    </div>
                    <div>
                        <input type="text" placeholder="Mezun Olduğun Bölüm" name="bolum" required>
                    </div>
                    <div>
                        <input type="text" placeholder="Nerelisin?" name="sehir" required>
                    </div>
                    <div>
                        <textarea name="adres" placeholder="Adres Bilgilerin..."></textarea>
                    </div>
                    <div>
                        <input type="email" placeholder="e-mail" name="mail" required>
                    </div>
                    <div>
                        <input type="text" placeholder="Cep telefonu" name="telno" required>
                    </div>
                    <div class="cins">Cinsiyet: <br>
                        <input id="cinsiyet_radio" type="radio" name="cinsiyet">Kadın <br>
                        
                        <input id="cinsiyet_radio" type="radio" name="cinsiyet">Erkek
                    </div>
                    <div>
                        <select name="mezuniyetyili" size="1">
                            <option>2013-2014 mezunuyum</option>
                            <option>2014-2015 mezunuyum</option>
                            <option>2015-2016 mezunuyum</option>
                            <option>2016-2017 mezunuyum</option>
                            <option>2017-2018 mezunuyum</option>
                            <option>2018-2019 mezunuyum</option>
                            <option>2019-2020 mezunuyum</option>
                            <option>2020-2021 mezunuyum</option>
                            <option>2021-2022 mezunuyum</option>
                            <option>2022-2023 mezunuyum</option>
                            <option>2023-2024 mezunuyum</option>
                        </select>
                    </div>
                    <div>
                        <input type="text" placeholder="Mesleğin" name="meslek" required>
                    </div>
                    <div>
                        <input type="text" placeholder="Linkedin hesabın" name="sosyalmedya" required>
                    </div>
                    <div>
                        <input type="url" placeholder="Web sayfan" name="webadrs" >
                    </div>
                    <div>
                        <textarea name="tanitim" placeholder="Kendinden Bahset..." required></textarea>
                    </div>
                    <div>
                        <input type="password" placeholder="Şifre" name="sifre" required>
                    </div>
                    <div class="cins">Topluluk kurallarına uyacağıma dair söz veriyorum.
                        <input id="onay" type="checkbox" name="onay" value="evet" required>
                    </div>
                    <button type="submit">Kayıt Ol</button>
                    </form>
                </div>
            </main>
        </section>
        <footer>Tüm hakları saklıdır &copy; | 2021</footer>

    </div>
</body>

</html>
