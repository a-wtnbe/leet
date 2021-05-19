# 標準入力
# gets：キーボードから入力された値を取得するメゾット
input_line = gets

# 標準入力の値を1文字ずつ要素として配列化
# .to_:標準入力の値を文字列へ変換
# .split(''):文字を格納。(''')引数を空にしているため、1文字ずつ区切る
strings = input_line.to_s.split('')

# 置き換え文字列を格納するための配列を初期化
convert = []

# 配列の中を1つずつ取り出し、ループするー＞ループ終了(each文にて！)
strings.each do |chara|
  
  # 取り出した要素の文字列がA,E,G,I,Oであるか？
  # 比較対象が1こだけだからcaseを使用。
  # case：caseに指定したものと、後ろに出てくるwhenに指定したものを比較していく
  case chara
    when "A" then
      
      # 置き換え文字列を格納するて目の配列に置き換え後の文字列を追加
      # .push:配列に要素を追加するメゾット。引数に指定したものを追加
      convert.push("4")
    when "E" then
      convert.push("3")
    when "G" then
      convert.push("6")
    when "I" then
      convert.push("1")
    when "O" then
      convert.push("0")
    else
      convert.push(chara)
    end
    
end

# 配列の要素を全て文字列連結をする
# joinメゾット：配列の要素を連結して文字列を作り出す
output = convert.join
puts output