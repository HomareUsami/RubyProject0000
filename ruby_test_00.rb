# 変数
text = "こんにちは、世界！"
puts text

puts
# 入力処理と表示処理
# chomp!で改行を削除する
puts "入力してください:"
input = gets
puts "あなたが入力したのは: #{input.chomp!} です, 数値の場合は #{input.to_i} です。"

puts "入力値が10よりも小さいかどうか"
if input.to_i < 10
	puts "入力値は10よりも小さいです。"
elsif input.to_i == 10
	puts "入力値は10です。"
else
	puts "入力値は10以上です。"
end

# unlessはifの逆でfalse時に処理が通るようになる処理
# unless時にelsifは使えないように構造上サポートされていない。
# 理由は明確で、unless後のelsifは条件が明確になりきらずわかりづらくなってしまうため。
unless input.to_i < 10
	puts "入力値は10以上です。"
#elsif input.to_i == 10
#	puts "入力値は10です。"
else
	puts "入力値は10よりも小さいです。"
end

# case文
# caseの隣に数値を入れることでswitchのように使用可能。
case
when input.to_i < 10
	puts "入力値は10よりも小さいです。"
when input.to_i == 10
	puts "入力値は10です。"
else
	puts "入力値は10よりも大きいです。"
end

puts
# 配列と繰り返し文
Directions = ["東","西","南","北"]
Directions.each do |direction|
	puts "方向は#{direction}です。"
end

puts
# 関数検証
def create_mail(recv)
	puts "宛先: #{recv}"
	puts "件名: Rubyのテスト"
	puts "本文: Rubyのテストを実行しています。"
end

# 関数の呼び出し
create_mail("test@example.com")

puts
# Key検証
datas = [
	{:name => "test", :age => 20},
	{:name => "test2", :age => 30},
]

datas.each do |data|
	puts "名前: #{data[:name]}, 年齢: #{data[:age]}"
end

puts
# クラス検証と継承
class Animal
	def initialize()
		@name = "動物"
	end
	def speak
		puts "#{@name}が鳴きます。"
	end
end

class Dog < Animal
	def initialize()
		@name = "犬"
	end
	def speak
		super
		puts "わんわん"
	end
end

class Cat < Animal
	def initialize()
		@name = "猫"
	end
	def speak
		super
		puts "にゃーにゃー"
	end
end

dog = Dog.new
dog.speak

cat = Cat.new
cat.speak

# この後、Ruby On Rails対処予定