require 'pry'

class LookUp

  def initialize(filename)
    @ruby_data = JSON.parse(open(filename).read)
  end

  def plate(input)
    open("https://data.cityofnewyork.us/resource/dg7a-jiz2.json?dmv_plate_number=#{input}").read
  end

  def name(input)
     open("https://data.cityofnewyork.us/resource/dg7a-jiz2.json?name=#{input}").read

  end

  def license(input)
     open("https://data.cityofnewyork.us/resource/dg7a-jiz2.json?license_number=#{input}").read

  end

end
