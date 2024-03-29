# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.new
user.email = ENV["ROMAN_EMAIL"]
user.password = ENV["ROMAN_PASSWORD"]
user.password_confirmation = ENV["ROMAN_PASSWORD"]
user.save!

Setting.create!(display_arts: false, display_antiques: false)
