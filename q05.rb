cnt = 0
(0..2).each{|coin500|        # Upto 2 500 coins
  (0..10).each{|coin100|     # Upto 10 100 coins
    (0..15).each{|coin50|    # Upto 15 50 coins
      (0..15).each{|coin10|  # Upto 15 10 coins
        if coin500 + coin100 + coin50 + coin10 <= 15 then
          if coin500 * 500 + coin100 * 100 +
             coin50 * 50 + coin10 * 10 == 1000 then
            cnt += 1
          end
        end
      }
    }
  }
}
puts cnt
