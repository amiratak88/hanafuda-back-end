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

 def self.match_cards( id1, id2)
   card1 = Card.find_by(id: id1)
   card2 = Card.find_by(id: id2)
   if card1.suit == card2.suit || card1.nature == card2.nature
     return {result: true}
   else
     return {result: false}
  end
end



#this ends the Card model
end
