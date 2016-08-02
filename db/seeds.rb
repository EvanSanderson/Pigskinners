# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Team.destroy_all
Player.destroy_all

cute_baby_turtles = Team.create(name: "Cute Baby Turtles", owner: "Evan", img_url: "http://www.tehcute.com/pics/201109/baby-turtle-eats-strawberry.jpg", wins: 0, losses: 0)

Player.create(name: "DeAndre Hopkins", position: "WR", p_team: "Houston Texans", notes: "WANNTTT", team: cute_baby_turtles)
