def zundoko
  array = [] 
  loop do
    # ランダム値生成。２で割った余りでズン or ドコを出し分けている
    if rand(10) % 2 == 0
      print 'ズン'
      # 2で割れればズンを入れる。<< は破壊的。
      array << 'ズン'
    else
      print 'ドコ'
      array << 'ドコ'
    end 

    if !array[-5..-1].nil?
      if array[-5..-1].join == 'ズンズンズンズンドコ'
        print 'キ・ヨ・シ!'
        break;
      else
        array.shift
      end
    end
  end
end

zundoko()
