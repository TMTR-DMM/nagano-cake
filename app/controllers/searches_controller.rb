class SearchesController < ApplicationController
  
  def search
    @customer = Customer.new
    @item = Item.new
    @value = params["search"]["value"] #検索にかけた文字列を@valueに代入
    @model = params["search"]["model"] #選択したmodelを@modelに代入
    @how = params["search"]["how"] #選択した検索方法howを@howに代入
    @datas = search_for(@model, @value, @how) #@datasに最終的な検索結果が入る
  end
  
  private
  
  def match(model, value) #search_forでhowがmatchだった場合の処理
    if model == 'customer'
      Customer.where(['last_name OR first_name', "#{value}", "#{value}"]) #上手くいかない
    elsif model == 'item'
      Item.where(name: value) #whereでvalueと完全一致するnameを探す
    end
  end
  
  def forward(model, value)
    if model == 'customer'
      Customer.where(['last_name LIKE ? OR first_name LIKE ?' , "#{value}%", "#{value}%"])
    elsif model == 'item'
      Item.where('name LIKE ?', "#{value}%")
    end
  end
  
  def backward(model, value)
    if model == 'customer'
      Customer.where(['last_name LIKE ? OR first_name LIKE ?', "%#{value}", "%#{value}"])
    elsif model == 'item'
      Item.where('name LIKE ?', "%#{value}")
    end
  end
  
  def partical(model, value)
    if model == 'customer'
      Customer.where(['last_name LIKE ? OR first_name LIKE ?', "%#{value}%" "%#{value}%"])
    elsif model == 'item'
      Item.where('name LIKE ?', "%#{value}%")
    end
  end
  
  def search_for(model, value, how)
    case how
    when 'match'
      match(model, value)
    when 'forward'
      forward(model, value)
    when 'backward'
      backward(model, value)
    when 'partical'
      partical(model, value)
    end
  end
  
end
