# Try to spellbind a single random card of any rarity

#=============================================================================================================

# DEBUG
#say Try spellbind (standard)

# Reset tracker score
scoreboard players set #did_spellbind Temp 0

# Get a card
#   Cannot be Played
#   Cannot be already Spellbound
#   Cannot be a Spellbinder or Instant card
execute positioned -302.42 2.00 -104.47 as @e[distance=..24,type=minecraft:armor_stand,tag=Card,scores={Deck=1..},tag=!Played,tag=!Spellbound,tag=!Spellbinder,tag=!Instant,limit=1,sort=random] run function exigence:cards/spellbind

# Display failure message if no card found
execute if score #did_spellbind Temp matches 0 run say No valid cards to spellbind
