class String
  def zundoko
    if self != '氷川きよし'
      print 'あなたは氷川きよしではありません'
      return
    end
    
    array = []
    loop do
      if rand(2) % 2 == 0
        print 'ズン' 
        array << 'ズン'
      else
        print 'ドコ'
        array << 'ドコ'
      end 

      if !array[-5..-1].nil?
        if array[-5..-1].join == 'ズンズンズンズンドコ' 
          print 'キ・ヨ・シ!'
          break
        else
          array.shift
        end
      end
    end
  end
end

# 黒魔術でStringを拡張してzundokoメソッドを追加
# 'つるの剛士'.zundoko() # => error
# '氷川きよし'.zundoko() # => zundoko発動!!
