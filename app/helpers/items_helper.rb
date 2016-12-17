module ItemsHelper
  def category_collection
    [
    "Chairs",
    "Paintings",
    "Lamps",
    "Tables",
    "Clocks",
    "Sofas" ].map do |x|
      [x, x]
    end
  end
  def price_collection
    [
    "10",
    "30",
    "70"].map do |x|
      y = x.to_i*100
      z = x + "€/m"
      [z,y]
    end
  end

  def materials_collection
    [
    "Wood",
    "Metal",
    "Plastic",
    "Canvas",
    "Leather",
    "Cotton"].map do |x|
      [x, x]
    end
  end

  def colors_collection
    [
    "Black",
    "White",
    "Brown",
    "Beige",
    "Gray",
    "Warm"].map do |x|
      [x, x]
    end
  end


end
