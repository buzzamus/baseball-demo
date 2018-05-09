# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

player = PositionPlayer.create(name: "John1", position: "SS", singles: 106, doubles: 40, triples: 3,
                             hr: 40, at_bats: 608, walks: 83, hbp: 7, sac_flies: 2, rbis: 108, hits: 189)
player2 = PositionPlayer.create(name: "John2", position: "3B", singles: 93, doubles: 20, triples: 3,
                               hr: 20, at_bats: 600, walks: 33, hbp: 7, sac_flies: 2, rbis: 78, hits: 136)
player3 = PositionPlayer.create(name: "John3", position: "3B", singles: 93, doubles: 20, triples: 3,
                                hr: 20, at_bats: 600, walks: 33, hbp: 7, sac_flies: 2, rbis: 78, hits: 136)
player4 = PositionPlayer.create(name: "John4", position: "C", singles: 93, doubles: 20, triples: 3,
                                hr: 20, at_bats: 600, walks: 33, hbp: 7, sac_flies: 2, rbis: 78, hits: 136)
player5 = PositionPlayer.create(name: "John5", position: "2B", singles: 93, doubles: 20, triples: 3,
                                hr: 20, at_bats: 600, walks: 33, hbp: 7, sac_flies: 2, rbis: 78, hits: 136)
player6 = PositionPlayer.create(name: "John6", position: "DH", singles: 93, doubles: 20, triples: 3,
                                hr: 20, at_bats: 600, walks: 33, hbp: 7, sac_flies: 2, rbis: 78, hits: 136)
player7 = PositionPlayer.create(name: "John7", position: "CF", singles: 93, doubles: 20, triples: 3,
                                hr: 20, at_bats: 600, walks: 33, hbp: 7, sac_flies: 2, rbis: 78, hits: 136)
player8 = PositionPlayer.create(name: "John8", position: "LF", singles: 93, doubles: 20, triples: 3,
                                hr: 20, at_bats: 600, walks: 33, hbp: 7, sac_flies: 2, rbis: 78, hits: 136)
player9 = PositionPlayer.create(name: "John2", position: "3B", singles: 93, doubles: 20, triples: 3,
                                hr: 20, at_bats: 600, walks: 33, hbp: 7, sac_flies: 2, rbis: 78, hits: 136)

pitcher = Pitcher.create(name: "Joe1", arm: "lefty", er: 55, ip: 202.1, so: 208, walks: 58, hits: 189)
pitcher2 = Pitcher.create(name: "Joe2", arm: "Righty", er: 59, ip: 192.1, so: 187, walks: 68, hits: 199)
pitcher3 = Pitcher.create(name: "Joe3", arm: "lefty", er: 53, ip: 212.1, so: 234, walks: 48, hits: 169)
pitcher4 = Pitcher.create(name: "Joe4", arm: "lefty", er: 55, ip: 202.1, so: 208, walks: 58, hits: 189)
pitcher5 = Pitcher.create(name: "Joe5", arm: "Righty", er: 55, ip: 202.1, so: 208, walks: 58, hits: 189)
pitcher6 = Pitcher.create(name: "Joe6", arm: "lefty", er: 55, ip: 202.1, so: 208, walks: 58, hits: 189)
pitcher7 = Pitcher.create(name: "Joe7", arm: "lefty", er: 55, ip: 202.1, so: 208, walks: 58, hits: 189)
pitcher8 = Pitcher.create(name: "Joe8", arm: "lefty", er: 55, ip: 202.1, so: 208, walks: 58, hits: 189)
pitcher9 = Pitcher.create(name: "Joe9", arm: "lefty", er: 55, ip: 202.1, so: 208, walks: 58, hits: 189)
pitcher10 = Pitcher.create(name: "Joe10", arm: "lefty", er: 55, ip: 202.1, so: 208, walks: 58, hits: 189)
