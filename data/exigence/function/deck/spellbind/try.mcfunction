# Try to spellbind a single random card of any rarity

#====================================================================================================

# DEBUG
#say Try spellbind (standard)

# Reset tracker score
scoreboard players set #did_spellbind Temp 0

# Get a card
#   Cannot be Played
#   Cannot be already Spellbound
#   Cannot be a Spellbinder or Instant card
execute as @e[x=537,y=-1,z=531,dx=4,dy=1,dz=10,type=minecraft:armor_stand,scores={game.deck=1..},tag=Card,tag=!Played,tag=!Spellbound,tag=!Spellbinder,tag=!Instant,sort=random,limit=1] run function exigence:cards/spellbind

# Display failure message if no card found
execute if score #did_spellbind Temp matches 0 run say No valid cards to spellbind
