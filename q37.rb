# get the next dice
def next_dice(dice)
    right = dice.slice!(0..(dice[0].to_i - 1)).tr('123456','654321')
    dice += right
  end
  
  count = 0
  (6**6).times{|i|
    # 1 to 6 by expressing in hexadecimal and adding "111111"
    dice = (i.to_s(6).to_i + 111111).to_s
    check = Hash.new
    j = 0
  
    # Find the next die until it loops
    while !check.has_key?(dice) do
      check[dice] = j
      dice = next_dice(dice)
      j += 1
    end
  
    # Check the looped position and count if not looped
    count += 1 if check[dice] > 0
  }
  puts count
  