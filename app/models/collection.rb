class Collection < ApplicationRecord

  def  self.scoring(ids)
    #map the array of id's from the front end
    arr = ids.map do |id|
      #turn into an araay of objects
      Card.find(id)
    end

    res = []
     #pass those objects into my scoring
     if self.is_goko?(arr)
      res << {yaku: "Goko", points: 15}
    end
    if self.is_shiko?(arr)
      res << {yaku: "Shiko", points: 10}
    end
    if self.is_ame_shiko?(arr)
      res << {yaku: "Ame Shiko", points: 8}
    end
    if self.is_sanko?(arr)
      res << {yaku: "Sanko", points: 6}
    end
    if self.is_aotan?(arr)
      res << {yaku: "Aotan", points: 6}
    end
    if self.is_akatan?(arr)
      res << {yaku: "Akatan", points: 6}
    end
    if self.is_ino_shika_cho?(arr)
      res << {yaku: "Ino Shika Cho", points: 5}
    end
    if self.is_tane?(arr)
      res << {yaku: "Tane", points: 1}
    end
    if self.is_tanzaku?(arr)
      res << {yaku: "tanzaku", points: 1}
    end
    if self.is_kasu(arr)
      res << {yaku: "kasu", points: 1}
    end

    # res << {yaku: "Hana Fuda", suits: [], points: 0}
    #
    # self.hana_fuda(arr).each do |suit|
    #   res[-1][:suits] << suit
    #   res[-1][points] += 4
    # end
    res
  end
  def self.is_goko?(c_arr)
    goko = c_arr.select do |card|
      card.nature == "Bright"
    end
    goko.length == 5
  end

  def self.is_shiko?(c_arr)
    shiko = c_arr.select do |card|
      card.nature == "Bright" && card.sub_nature != "Rain Man"
    end
    shiko.length == 4
  end

  def self.is_ame_shiko?(c_arr)
    collection = c_arr.select do |card|
      card.nature == "bright"
  end
    ame_shiko = collection.find do |card|
      card.sub_nature == "rain man"
  end
    ame_shiko != nil && collection.length == 4
  end

  def self.is_sanko?(c_arr)
    sanko = c_arr.select do |card|
      card.nature == "Bright" && card.sub_nature != "Rain Man"
    end
    sanko.length == 3
  end

  def self.is_aotan?(c_arr)
    aotan = c_arr.select do |card|
      card.nature == "Ribbon" && card.sub_nature == "Blue"
    end
    aotan.length == 3
  end

  def self.is_akatan?(c_arr)
    akatan = c_arr.select do |card|
      card.nature == "Ribbon" && card.sub_nature == "Poem"
    end
    akatan.length == 3
  end

  def self.is_ino_shika_cho?(c_arr)
    ino_shika_cho = c_arr.select do |card|
      card.nature == "Animal" && card.sub_nature != nil
    end
     ino_shika_cho.length == 3
  end

  def self.is_tane?(c_arr)
    tane = c_arr.select do |card|
      card.nature == "Animal"
    end
    tane.length == 5
  end

  def self.is_tanzaku?(c_arr)
    tanzaku = c_arr.select do |card|
      card.nature == "Ribbon"
    end
    tanzaku.length == 5
  end

  def self.is_kasu(c_arr)
    kasu = c_arr.select do |card|
      card.nature == nil
    end
    kasu.length == 10
  end

  def self.hana_fuda(arr)
    hash = Hash.new(0)
    arr.each do |card|
      hash[card[:suit]] += 1
    end
    hash.select do |suit, num|
      num == 4
    end.keys
  end













# this ends the Collection model
end
