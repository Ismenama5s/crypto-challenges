def challenge_2_my_way
  %w(1c0111001f010100061a024b53535009181c
     686974207468652062756c6c277320657965)
    .map { |s| Hex.new(s) }
    .inject(&:xor) == "746865206b696420646f6e277420706c6179"
end

def challenge_2
  xors = %w(1c0111001f010100061a024b53535009181c
           686974207468652062756c6c277320657965)
           .map(&:hex).inject(&:^).to_s(16) == "746865206b696420646f6e277420706c6179"
end
