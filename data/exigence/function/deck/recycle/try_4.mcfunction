# Try to recycle a single random played card

#====================================================================================================

# DEBUG
execute if score toggle.deck debug matches 1 if score debug.level debug matches 3.. run say (D3) Try recycle (legendary)

# Reset tracker score
scoreboard players set #did_recycle Temp 0

# Get a card
#   Cannot be Played, Spellbound, Recycler, Instant, or already Recycled this run
execute as @e[x=537,y=-1,z=531,dx=4,dy=1,dz=10,type=minecraft:armor_stand,scores={game.deck=1..,deck.card.rarity=4},tag=Card,tag=Played,tag=!Instant,tag=!Recycled,tag=!Recycler,tag=!Spellbound,sort=random,limit=1] run function exigence:cards/recycle

# Display message if no card found
execute if score #did_recycle Temp matches 0 run say No valid Legendary cards to recycle
