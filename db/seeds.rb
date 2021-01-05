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
  

3.times do |n|
  Category.all.each do |category|
    category.items.create!(
      name: "ケーキ",
      caption: "おいしい",
      excluding_price: "500",
      image: File.open('./app/assets/images/cake.jpg'),
      is_deleted: "販売中"
      )
  end
end