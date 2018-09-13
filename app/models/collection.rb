class Collection < ApplicationRecord

  def  self.scoring(collection)
     #map the array of id's from the front end
     c_arr = collection.map do |id|
     #turn into an araay of objects
     Card.find(id)
   end
     #pass those objects into my scoring
     if is_goko?(c_arr)
      return {yaku: "Goko", points: 15}
     elsif is_shiko?(c_arr)
      return {yaku: "Shiko", points: 10}
    elsif is_ame_shiko?(c_arr)
      return {yaku: "Ame Shiko", points: 8}
    elsif is_sanko?(c_arr)
      return {yaku: "Sanko", points: 6}
    elsif is_aotan?(c_arr)
      return {yaku: "Aotan", points: 6}
    elsif is_akatan?(c_arr)
      return {yaku: "Akatan", points: 6}
    elsif is_ino_shika_cho?(c_arr)
      return {yaku: "Ino Shika Cho", points: 5}
    elsif is_tane?(c_arr)
      return {yaku: "Tane", points: 1}
    elsif is_tanzaku?(c_arr)
      return {yaku: "tanzaku", points: 1}
    elsif is_kasu(c_arr)
      return {yaku: "kasu", points: 1}
    end
  end

  def is_goko?(c_arr)
    goko = c_arr.select do |card|
      card.nature == "Bright"
    end
    goko.length == 5
  end

  def is_shiko?(c_arr)
    shiko = c_arr.select do |card|
      card.nature == "Bright" && card.sub_nature != "Rain Man"
    end
    shiko.length == 4
  end

  def is_ame_shiko?(c_arr)
    collection = c_arr.select do |card|
      card.nature == "bright"
  end
    ame_shiko = collection.find do |card|
      card.sub_nature == "rain man"
  end
    ame_shiko != nil && collection.length == 4
  end

  def is_sanko?(c_arr)
    sanko = c_arr.select do |card|
      card.nature == "Bright" && card.sub_nature != "Rain Man"
    end
    sanko.length == 3
  end

  def is_aotan?(c_arr)
    aotan = c_arr.select do |card|
      card.nature == "Ribbon" && card.sub_nature == "Blue"
    end
    aotan.length == 3
  end

  def is_akatan?(c_arr)
    akatan = c_arr.select do |card|
      card.nature == "Ribbon" && card.sub_nature == "Poem"
    end
    akatan.lenght == 3
  end

  def is_ino_shika_cho?(c_arr)
    ino_shika_cho = c_arr.select do |card|
      card.nature == "Animal" && card.sub_nature != nil
    end
     ino_shika_cho.length == 3
  end

  def is_hanafuda?(c_arr)
    hanafuda = c_arr.select do |card|
      card.suit ==
    end
  end

  def is_tane?(c_arr)
    tane = c_arr.select do |card|
      card.nature == "Animal"
    end
    tane.length == 5
  end

  def is_tanzaku?(c_arr)
    tanzaku = c_arr.select do |card|
      card.nature == "Ribbon"
    end
    tanzaku.length == 5
  end

  def is_kasu(c_arr)
    kasu = c_arr.select do |card|
      card.natue == nil
    end
    kasu.length == 10
  end
















# this ends the Collection model
end
