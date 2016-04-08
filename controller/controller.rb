require 'open-uri'
require 'JSON'
require_relative '../view/view'
require_relative '../models/models'

class Controller

  attr_accessor :ruby_data

  def initialize
    @view = View.new
    @lookup = LookUp.new('https://data.cityofnewyork.us/resource/dg7a-jiz2.json')
    run
  end

  def run
    @view.title
    @view.greet
    input = gets.chomp.downcase
      if input == "yes"
        @view.ask
      elsif input == "no"
        @view.goodbye
      end
        input = gets.chomp.downcase
      if input.include?("plate")
        @view.ask_for_information
        input = gets.chomp.downcase
        @view.display_final_info(@lookup.plate(input))
      elsif input.include?("name")
        @view.ask_for_information
        input = gets.chomp.downcase
        @view.display_final_info(@lookup.name(input))
      elsif input.include?("license")
        @view.ask_for_information
        input = gets.chomp.downcase
        @view.display_final_info(@lookup.license(input))
      end
    end
  end
