class Meal {
  final String mealTime, name, imagePath, kalorisi, timeTaken;
  final String hazirlanis;
  final List malzemeler;
  Meal(
      {this.mealTime,
      this.name,
      this.imagePath,
      this.kalorisi,
      this.timeTaken,
      this.hazirlanis,
      this.malzemeler});
}

final meals = [
  Meal(
      mealTime: "Kahvaltı",
      name: "Meyveli Granolo",
      kalorisi: "271 kcal",
      timeTaken: "10:00",
      imagePath: "assets/images/fruit_granola.jpg",
      malzemeler: [
        "1,5 su bardağı yulaf ezmesi",
        "yarım su bardağı ceviz",
        "yarım su bardağı çiğ fındık",
        "yarım su bardağı çiğ badem",
        "3-4 yemek kaşığı kabak çekirdeği içi",
        "yarım su bardağı çekirdeksiz üzüm kurusu",
        "yarım su bardağı pekmez",
        "3 yemek kaşığı bal",
        "1 çay kaşığı toz tarçın",
      ],
      hazirlanis:
          "Ceviz, badem ve fındığı iri parçalar halinde doğrayıp bir kap içinde alın.Üstüne yulaf ezmesi, tarçın ve kabak çekirdeğini ilave ederek karıştırın.Bal ve pekmezi bir kap içinde karıştırıp kuru malzemelere ekleyin ve hepsi pekmeze bulanıncaya kadar karıştırın.Fırın tepsisine yağlı kağıt serin granola karışımını tepsiye yayın.Fırına verdikten 6 dakika sonra tepsiyi çıkarın (dikkat edin sıcak) tepsideki malzemeyi spatula yardımıyla karıştırın ve tekrar fırına verin.5-6 dakika sonra tekrar aynı karıştırma işlemini yapın ve fırına verin.5 dakika daha fırınladıktan sonra fırını kapatın. Fırının kapağını açın ve tepsi içindeyken granolayı soğumaya bırakın.      Tamamen soğuyan granolayı elinizde ufalayarak kavanoza alın. İsteğe göre içine kuru meyve ilave ederek saklayın ve kahvaltılarda kullanın."),
  Meal(
      mealTime: "Akşam Yemeği",
      name: "Pestolu Makarna",
      kalorisi: "612 kcal",
      timeTaken: "15:00",
      imagePath: "assets/images/pesto_pasta.jpg",
      malzemeler: [
        "Yarım paket penne (kalem) makarna",
        "1 paket süt kreması",
        "2-3 yemek kaşığı hazır pesto sosu",
        "2 yemek kaşığı zeytinyağı veya sıvı yağ",
        "tuz",
      ],
      hazirlanis:
          "Genişçe bir tencereye bolca su alıp kaynatalım. Kaynayınca yarım tatlı kaşığı kadar tuz ekleyip makarnaları ilave edelim. Paketin üzerinde yazdığı gibi 9-10 dk pişmeye bırakalım. Makarnalar pişmeye yakın uygun bir tavaya az sıvı yağımızı alalım. Pesto sosumuzu ilave edip karıştıralım, süt kremasını da ekleyip ısıtalım. Çok fokur fokur kaynamasına gerek kalmadan hafifçe pişirelim ve bu sırada suyunu süzdüğümüz makarnaları da ilave edelim. Karıştırarak bütün makarnaların sosa bulanmasını sağlayalım. Pesto soslu makarna servise hazır, soğutmadan servis edelim. Şimdiden afiyet olsun"),
  Meal(
      mealTime: "Ara Öğün",
      name: "Ketozonik Atıştırmalık",
      kalorisi: "414 kcal",
      timeTaken: "16:00",
      imagePath: "assets/images/keto_snack.jpg",
      malzemeler: [
        "1 küçük boy brokoli",
        "2 çorba kaşığı zeytinyağı",
        "2 çorba kaşığı elma veya üzüm sirkesi",
        " 2 çorba kaşığı limon suyu",
        "4 çorba kaşığı tahin",
        "1 çay kaşığı kaya tuzu",
        "½ su bardağı tane nar",
        "1 sap ince kıyılmış taze sarımsak",
        "2 demet ince kıyılmış kuzu ıspanak yaprağı",
        "4 çorba kaşığı ince kıyılmış dereotu",
      ],
      hazirlanis:
          "1-Brokoliyi yıkayın, odunsu sap kısmını kesip kalan bölümü rondoda iri pirinç tanesi boyutuna gelene dek çekin. 2-Geniş, derin bir kapta tüm malzemeleri harmanlayıp servis edin. Not: Salataya susam veya ay çekirdeği içi de ilave edebilirsiniz."),
  Meal(
      mealTime: "Kahvaltı",
      name: "Tam Buğdaylı Krep",
      kalorisi: "227 kcal",
      timeTaken: "10:00",
      imagePath: "assets/images/krep.jpg",
      malzemeler: [
        "1adet yumurta",
        "1/2 bardak süt",
        "Bir tutam tuz",
        "3-4 yemek kaşığı tam buğday unu",
        "İçine domates 1-2 kibrit kutusu rendelenmiş peynir biraz maydanoz",
      ],
      hazirlanis:
          "Yumurta ve süt bir kapta iyice çırpıyoruz. Üstüne tam buğday ununu ve tuzu ekliyoruz Unu yavaşça ekliyoruz, kıvama gelince eklemeyi bırakıyoruz. (harcın kıvamını kontrol ederek unu eklemeliyiz). Kıvamı hafif akışkan olmalı. Az yağlanan tavaya harçtan bir kepçe eklenir ve önlü arkalı pişirilir. Harç bitene kadar bu işlem devam eder. Not: kısık ateşte yavaş yavaş pişirilir."),
  Meal(
      mealTime: "Akşam Yemeği",
      name: "Bakla Borani",
      kalorisi: "1553 kcal",
      timeTaken: "17:00",
      imagePath: "assets/images/bakla_borani.jpg",
      malzemeler: [
        "Zeytinyağı",
        "1 adet orta boy kuru soğan",
        "500 gr. taze bakla",
        "1 su bardağı su",
        "1 tutam un",
        "1 adet limon suyu",
        "Tuz",
        "Karabiber",
        "Sarımsaklı Yoğurt için Malzemeler",
        "1 su bardağı yoğurt",
        "2 diş sarımsak",
        "¾ bağ dereotu",
      ],
      hazirlanis:
          "Baklaları yıkayın ve temizleyin, 2 cm kalınlığında dilimleyin. Derin bir kaba limon suyu, un ve su karışımı yapın ve baklaları kararmaması için bu limonlu suyun içerisinde bekletin.   Tencerenizi ocağa alın ve ısıtın. Üzerine zeytinyağı ilave edip soğanlarınızı doğrayın ve ısıttığınız tavada soğanları kavurun, yeteri kadar kavrulan soğanlara limonlu suda beklettiğiniz baklaları suyundan arındırarak ilave edin ve kavurmaya devam edin. Hafif solan baklaları tuz ve karabiber ile tatlandırıp su ve limon suyunu ekleyin. Önce yüksek ateşte bir taşım kaynattıktan sonra kısık ateşte baklalar yumuşayana kadar pişirin. Pişen baklalarınızı ocaktan alın ve soğumaya bırakın.       Bir karıştırma kabına yoğurdunuzu alın, üzerine sarımsakları rendeleyin. Dereotlarını ince kıyıp yoğurda ilave edin ve karıştırın       Soğuyan baklalarınızı bir servis tabağına alın üzerine hazırladığınız sarımsaklı yoğurt karışımını dökün ve karıştırın"),
  Meal(
      mealTime: "Ara Öğün",
      name: "Meyveli Yoğurt",
      kalorisi: "231 kcal",
      timeTaken: "16:00",
      imagePath: "assets/images/meyveli_yogurt.jpg",
      malzemeler: [
        "1 muz",
        "1 armut",
        "1 tatlı kaşığı süzme bal",
        "1 çay kaşığının ucu kadar toz tarçın",
        "1 limon  kabuğu rendesi",
        "5 yemek kaşığı süzme yoğurt",
      ],
      hazirlanis:
          "İlk önce bir kaba süzme yoğurdunu alın. 4 yemek kaşığı su ekleyip karıştırın. Kıvamını alan yoğurdumuza bal, toz tarçını ekleyip iyice karıştıralım. Limon kabuğu rendesini ekleyip tekrar iyice karıştıralım. Meyvelerimizi küp küp doğrayalım. Bardağımıza bir sıra yoğurt bir sıra meyve koyup fındıkla süsleyelim. Bir saat dolapta dinlendirip keyifle tadalım."),
  Meal(
      mealTime: "Kahvaltı",
      name: "Peynirli Omlet",
      kalorisi: "205 kcal",
      timeTaken: "10:00",
      imagePath: "assets/images/peynirli_omlet.jpg",
      malzemeler: [
        "2 adet büyük boy yumurta",
        "1 yemek kaşığı tereyağı",
        "2 dilim beyaz peynir",
        "1 çay kaşığı nane",
        "1 çay kaşığı kekik",
        "1 tatlı kaşığı zeytinyağı",
        "1 tatlı kaşığı tuz",
        "1 çay kaşığı karabiber",
        "Maydanoz (isteğe göre)",
      ],
      hazirlanis:
          "Önce yumurtaları bir kasenin içine kırın ve çırpın. Üzerine peyniri ekleyerek karıştırmaya devam edin.Karışımın içine tereyağı ve zeytinyağı dışındaki malzemeleri ekleyin. Kabarcıklar çıkana kadar bu şekilde karıştırın.Yanmaz yapışmaz tavaya tereyağı ve zeytinyağını alın.Kısık ateşte tereyağı eriyene kadar bekleyin.Yağ eridiğinde kasedeki karışımı tavaya dökün. Peynirler bir arada toplanırsa, çatal yardımıyla dağıtın. Alt kısmının pişip pişmediğini kontrol edin. Pişmediyse, bir süre daha bekleyin. Altı piştiğinde omletin yarısını kaldırın ve diğerinin üzerine yerleştirin. Yarım ay şeklinde olacaktır. Omletin her tarafı eşit şekilde piştiğinde ocaktan alın. Üzerine ince kıyılmış maydanoz ekleyerek servis edin. Afiyet olsun"),
];
