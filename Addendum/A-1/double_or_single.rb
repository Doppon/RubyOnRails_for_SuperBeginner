# "" と '' で囲まれているテクストは扱いが違うよ！
# っと言うお話

puts "Hello\nBye"

puts 'Hello\nBye'

=begin
実行結果↓

$ ruby double_or_single.rb
Hello
Bye
Hello\nBye
$

=end
