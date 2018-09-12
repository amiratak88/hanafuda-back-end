class Card < ApplicationRecord

 def self.shuffle_cards
   shuffled = Card.all.shuffle
   return shuffled
 end

 def self.deal_cards
   shuffled = self.shuffle_cards
   hand = shuffled.slice!(0,8)
   table = shuffled.slice!(0,8)
   deck = shuffled
   dealt = {hand: hand, table: table, deck: deck}
   return dealt
 end




#this ends the Card model
end
