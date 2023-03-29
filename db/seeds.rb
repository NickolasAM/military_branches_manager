# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@navy = MilitaryBranch.create!(name: "Navy", sea_based: true, year_established: 1938)
@usmc = MilitaryBranch.create!(name: "USMC", sea_based: true, year_established: 1917)
@army = MilitaryBranch.create!(name: "Army", sea_based: true, year_established: 1941)
@airforce = MilitaryBranch.create!(name: "AirForce", sea_based: true, year_established: 1947)
@lightning = Aircraft.create!(military_branch_id: @navy.id, name: "Lightning", fixed_wing: true, pilot_count: 2)
@osprey = Aircraft.create!(military_branch_id: @usmc.id, name: "Osprey", fixed_wing: false, pilot_count: 2)
@apache = Aircraft.create!(military_branch_id: @army.id, name: "Apache", fixed_wing: false, pilot_count: 2)
@warthog = Aircraft.create!(military_branch_id: @airforce.id, name: "Warthog", fixed_wing: true, pilot_count: 2)