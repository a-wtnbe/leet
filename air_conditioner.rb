# 標準入力
# 複数形で受け取るため、readlines
# 値を保持するためinput_lines
input_lines = readlines

# 配列の0番目の要素を室内温度用の変数に代入
# input_linesの0番目の要素には、室内温度の値が格納されている
# それをroomという変数に代入(あとで計算に使うため、to_iで数値変換)
room = input_lines[0].to_i

# 配列の1番目の要素を設定温度用の変数に代入
air_conditioner = input_lines[1].to_i

# 配列の2番目の要素を風量用の変数に代入
air_flow = input_lines[2].to_i

# 室内温度と設定温度の差を絶対値で求め、温度差用の変数に格納
# .absは絶対値に変換するメゾット
temperature_diff = (room - air_conditioner).abs

# 設定温度になるまでの時間用の変数(require)を初期化する
require_time = 0

# 温度差が5みまんであるか？
if temperature_diff < 5

  # 時間用の変数に15を代入
  require_time = 15

# 温度差が5以上10未満であるか
elsif temperature_diff > 4 && temperature_diff < 10 then

  # 時間用の変数に30を代入
  require_time = 30

# 温度差が10以上であるか
elsif temperature_diff > 10 then

  # 時間用の変数に60を代入
  require_time = 60
end

case air_flow
when "1" then
  require_time
when "2" then
  require_time = require_time - 5
when "3" then
  require_time = require_time - 10
else
  p "風量の値は1〜3にしてください"
  exit
end

# 時間用の変数を出力
p require_time
