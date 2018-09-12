class Card < ApplicationRecord

 def shuffle_cards
   shuffled = Card.all.shuffle
   return shuffled
 end

 def deal_cards
   hand = shuffled.slice(1..8)
   table = shuffled.slice(1..8)
   deck = shuffled
 end




#this ends the Card model
end
