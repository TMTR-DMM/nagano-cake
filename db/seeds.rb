Customer.create!(
  last_name: "山田",
  first_name: "太郎",
  kana_last_name: "ヤマダ",
  kana_first_name: "タロウ",
  email: "yamada@yamada.com",
  password: "123456",
  phone_number: "09012345678",
  postcode: "111222",
  address: "東京都足立区",
  )

Customer.create!(
  last_name: "田中",
  first_name: "花子",
  kana_last_name: "タナカ",
  kana_first_name: "ハナコ",
  email: "tanaka@tanaka.com",
  password: "123456",
  phone_number: "09012345679",
  postcode: "123456",
  address: "東京都品川区",
  )

Customer.create!(
  last_name: "佐藤",
  first_name: "五郎",
  kana_last_name: "サトウ",
  kana_first_name: "ゴロウ",
  email: "sato@sato.com",
  password: "123456",
  phone_number: "09012385679",
  postcode: "126456",
  address: "東京都江戸川区",
  )

Customer.create!(
  last_name: "中川",
  first_name: "優子",
  kana_last_name: "ナカガワ",
  kana_first_name: "ユウコ",
  email: "nakagawa@nakagawa.com",
  password: "123456",
  phone_number: "09012348564",
  postcode: "126457",
  address: "東京都杉並区",
  )

Admin.create!(
   email: "admin@admin.jp",
   password:  "123456",
   password_confirmation: "123456",
   )
   
Category.create!(
    category: "ケーキ"
  )

Category.create!(

  category: "プリン"
  )
  
Category.create!(
  category: "焼き菓子"
  )
  
Category.create!(
  category: "キャンディ"
  )
  

1.times do |n|
  Category.all.each do |category|
    category.items.create!(
      name: "スペシャル苺ショート",
      caption: "新鮮な卵の力を最大限に引き出すために時間をかけて、生地を丁寧に、きめ細かく泡立て、その気泡をつぶさないようにじっくりと焼き上げることで、素材の味が活き、ふわふわとした食感のスポンジになりました。ミルク本来の風味が活きたコク豊かですっきりとした口溶けのホイップクリームとフレッシュ苺を最もおいしいと感じられるバランスでサンドしました。ホイップクリームを絞り、苺を飾った定番の苺ショートケーキです。",
      excluding_price: "300",
      image: File.open('./app/assets/images/cake1.jpg'),
      is_deleted: "販売中"
      )
      category.items.create!(
      name: "クレープ・オ・フリュイ",
      caption: "卵の風味豊かなクレープ皮で、苺・マンゴー・キウイフルーツの色とりどりのフルーツ入りソース、カスタード入りホイップクリームとホイップクリームを重ねました。クリームのやさしい甘さ・クレープ皮のくちどけの良さ、ジューシーなフルーツのおいしさを合わせたクレープケーキです。",
      excluding_price: "300",
      image: File.open('./app/assets/images/cake2.jpg'),
      is_deleted: "販売中"
      )
      category.items.create!(
      name: "まんまるみかんケーキ ",
      caption: "鮮やかなオレンジ色のまんまるなみかんをモチーフにし、秋の実りを感じる見た目にもかわいいケーキに仕上げました。ケーキケース内で目を引くようなインパクトのある商品です。ふんわり焼き上げたマドレーヌの上にホイップクリームと甘くて濃厚な味の「せとか」のソースを重ね、その上に甘酸っぱい温州みかん果汁をたっぷり使用したやさしい甘味のみかんムースを入れた、みかんづくしの逸品です。香ばしいホワイトクッキークランチとやさしくふんわりとした甘味のみかんムースがよく合います。",
      excluding_price: "360",
      image: File.open('./app/assets/images/cake3.jpg'),
      is_deleted: "販売中"
      )
      category.items.create!(
      name: "かわいいくまちゃん",
      caption: "可愛いくまちゃんをイメージした動物スイーツです。お子様のおやつにおすすめな商品です。チョコスポンジにチョコチップを散りばめ、たっぷりのチョコクリームで包みました。小さい可愛いくまさんをイメージし、チョコレートで飾り付けました。チョコレート好きのお子様におすすめな、チョコ尽くしの動物スイーツです。",
      excluding_price: "260",
      image: File.open('./app/assets/images/cake4.jpg'),
      is_deleted: "販売中"
      )
      category.items.create!(
      name: "スフレチーズケーキ",
      caption: "口の中でふわっとほどけ、スッと溶けるような食感をお楽しみいただけるチーズケーキです。チーズのコクと口どけが合わさることで、濃厚で飽きのこない味に仕上げました。",
      excluding_price: "200",
      image: File.open('./app/assets/images/cake5.jpg'),
      is_deleted: "販売中"
      )
      category.items.create!(
      name: "キッズショート",
      caption: "ミルク本来の風味が活きたコク豊かですっきりとした口溶けのホイップクリームとスポンジで苺クリームをサンドし、かわいい動物の砂糖菓子を飾りました。動物の砂糖菓子は「うさぎ」「パンダ」「とら」「くま」の4種類ございます。(動物のご指定はお受けできない場合がございます。)",
      excluding_price: "100",
      image: File.open('./app/assets/images/cake6.jpg'),
      is_deleted: "販売中"
      )
      category.items.create!(
      name: "ふんわり厚切りロール",
      caption: "契約農場より仕入れる新鮮な卵を使用し、キメ細かく焼き上げた口溶けのよいスポンジで、たっぷりのホイップクリームとホイップクリーム入りカスタードクリームを巻きました。贅沢に厚切りにカットした、こだわりのロールケーキです。",
      excluding_price: "100",
      image: File.open('./app/assets/images/cake7.jpg'),
      is_deleted: "販売中"
      )
      category.items.create!(
      name: "プレミアムプリン",
      caption: "なめらかさと卵のコクにこだわったプレミアムプリンです。独自開発した特別飼育卵の卵黄をより多く使うことで濃厚な味わいとなり、臭みが少なく、卵本来のコクが味わえます。さらに、北海道産純生クリーム入り特製クリームをプリンの上にたっぷりとかけ、卵との相性が絶妙となっております。また、今回、独自製法の開発に成功し、今までにないなめらかさ、まろやかさが実現しました。",
      excluding_price: "150",
      image: File.open('./app/assets/images/pudding1.jpg'),
      is_deleted: "販売中"
      )
      category.items.create!(
      name: "無添加たまごプリン",
      caption: "卵、牛乳、素材の味わいにこだわった無添加の焼きプリンです。飼料にこだわり、コクと旨みを追求したシャトレーゼオリジナルの卵を使用したプリンです。牛乳、卵、砂糖、無添加だからこそ味わえる素材の持つ素直なおいしさをお楽しみください。",
      excluding_price: "100",
      image: File.open('./app/assets/images/pudding2.jpg'),
      is_deleted: "販売中"
      )
      category.items.create!(
      name: "コーヒー牛乳プリン",
      caption: "お子様のおやつとしてお楽しみいただけるスイーツです。八ヶ岳高原のしぼりたて牛乳を使用したやさしい味わいのコーヒー牛乳プリンにミルクコーヒーソースをたっぷりとかけました。お子様の大好きなコーヒー牛乳をスイーツにしました。",
      excluding_price: "120",
      image: File.open('./app/assets/images/pudding3.jpg'),
      is_deleted: "販売中"
      )
      category.items.create!(
      name: "マンゴープリン",
      caption: "マンゴーづくしのマンゴープリンです。濃厚な味わいが特徴のアルフォンソマンゴーのピューレをたっぷり使用した、なめらかな食感のカップスイーツです。",
      excluding_price: "120",
      image: File.open('./app/assets/images/pudding4.jpg'),
      is_deleted: "販売中"
      )
      category.items.create!(
      name: "キャラメルナッツクリーム",
      caption: "純生クリームを使用したプリンに、ほんのりビターなキャラメル風味の純生クリームをのせ、ナッツをトッピングした大満足のプリンです。おいしさそのままに、1個当たり糖質量を2.6g(エリスリトール、マルチトールを除く。)に抑え、日本食品標準成分表2015年版七訂カスタードプリンと比較して糖質を82%カットしました。ダイエットや糖質が気になる方、夜食べるスイーツとしておすすめです。",
      excluding_price: "160",
      image: File.open('./app/assets/images/pudding5.jpg'),
      is_deleted: "販売中"
      )
      category.items.create!(
      name: "マドレーヌ",
      caption: "北海道産生クリームとバターをたっぷりと使用し、瀬戸内産レモン果汁やペースト、ゼスト、甘みとコクが良い卵を使用した、原料にこだわった生地を、ふんわりと焼き上げました。独自の小麦粉ブレンドによりしっとりだけど口の中でほどける食感に仕上げております。トップにふんわりと香るレモン、バターと生クリーム、希少糖のコクと旨味が後に残ります。サイズ、焼成方法も変更し、ふんわりしっりこんがりと焼きこんだマドレーヌです。バターの香りとレモンの香りが程よくあった、味わい深い焼き菓子です。",
      excluding_price: "120",
      image: File.open('./app/assets/images/confectionery1.jpg'),
      is_deleted: "販売中"
      )
      category.items.create!(
      name: "フィナンシェ ",
      caption: "2種の自社挽きアーモンドプードル、アーモンドペーストを使用することで、コクと香ばしさを出しました。高温短時間焼成で、中に水分を閉じ込め、しっとりとした食感の焼き菓子に仕上げました。バニラを加え、ふんわりしっとりこんがりと焼きこんだ風味豊かなフィナンシェです。バターとバニラ・アーモンドの香りが程よくあった、味わい深い焼き菓子です。",
      excluding_price: "120",
      image: File.open('./app/assets/images/confectionery2.jpg'),
      is_deleted: "販売中"
      )
      category.items.create!(
      name: "無添加バウムクーヘン",
      caption: "ドイツの伝統的な製法に基づいて作った、バウムクーヘンです。香料や膨張剤といった添加物を一切使用していないにもかかわらず、しっとりと口溶けのよい食感に仕上げてあります。食べやすい手軽な大きさにカットしました。",
      excluding_price: "120",
      image: File.open('./app/assets/images/confectionery3.jpg'),
      is_deleted: "販売中"
      )
      category.items.create!(
      name: "無添加ワッフル プレーン",
      caption: "お客様の健康志向を受けた、添加物を使用していない、体と心を想った安全・安心な『無添加商品』です。新鮮な牛乳と卵をふんだんに使用して、ほんのりしっとりした食感に仕上げました。砂糖は、精製度合いの低い甘蔗分蜜糖を使用しています。またオリゴ糖も配合しています。ベーシックなプレーン味の、食べやすいサイズのワッフルです。乳化剤、膨脹剤、保存料などの添加物は使用しておりません。",
      excluding_price: "80",
      image: File.open('./app/assets/images/confectionery4.jpg'),
      is_deleted: "販売中"
      )
      category.items.create!(
      name: "豊酪 チェダー&エダム",
      caption: "やさしい味わいのエダムチーズと酸味、さわやかな風味のチェダーチーズの角切りチーズをブレンドしクリームにあわせました。日本人にもっともポピュラーで馴染みのあるチーズを使用し、甘味と塩味のバランスの取れたクリームに仕上げました。ふんわりブッセの甘味とエダムチーズ＆チェダーチーズの程よい塩味のあるチーズクリームが絶妙です。",
      excluding_price: "100",
      image: File.open('./app/assets/images/confectionery5.jpg'),
      is_deleted: "販売中"
      )
      category.items.create!(
      name: "森のともだち",
      caption: "毎日届けられる新鮮なうみたて卵と、バターをたっぷり使用し、素材の風味を活かしたサブレの詰合せをリニューアルしました。ふんわりとバターの香りが広がるサックリ食感のバターサブレとやさしい甘さとココアのほろ苦さが広がるココアサブレを詰合せました。素材の風味を活かし、こんがり焼き上げた風味豊かなサックリ食感のサブレです。",
      excluding_price: "300",
      image: File.open('./app/assets/images/confectionery6.jpg'),
      is_deleted: "販売中"
      )
      category.items.create!(
      name: "ドラえもんMIX",
      caption: "みんな大好きドラえもんがCANDYにドラミちゃんも登場",
      excluding_price: "560",
      image: File.open('./app/assets/images/candy1.jpg'),
      is_deleted: "販売中"
      )
      category.items.create!(
      name: "ちびまる子ちゃん",
      caption: "世代を越えて愛されるちびまる子ちゃんがキャンディーに",
      excluding_price: "560",
      image: File.open('./app/assets/images/candy2.jpg'),
      is_deleted: "販売中"
      )
      category.items.create!(
      name: "ハローキティ",
      caption: "ハローキティのキュートなキャンディー",
      excluding_price: "560",
      image: File.open('./app/assets/images/candy3.jpg'),
      is_deleted: "販売中"
      )
      category.items.create!(
      name: "ぼのぼの×ガチャピンコラボ",
      caption: "世代を問わず親しまれているキャラクターのぼのぼのとガチャピン・ムックを職人さんたちが可愛いキャンディーに仕上げました。",
      excluding_price: "560",
      image: File.open('./app/assets/images/candy4.jpg'),
      is_deleted: "販売中"
      )
  end
end