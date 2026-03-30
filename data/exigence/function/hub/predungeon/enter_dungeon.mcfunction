# Called from try_enter_dungeon

# Tags
tag @a[tag=Predungeon] add ActivePlayer
tag @a[tag=Predungeon] add PrimaryPlayer
tag @a[tag=Predungeon] remove Predungeon

# Coop?
data modify storage exigence:dungeon is_coop set value 0
execute if entity @a[tag=Coop] run data modify storage exigence:dungeon is_coop set value 1
tag @a[tag=Coop] add ActivePlayer
tag @a[tag=Coop] remove Coop


# Begin game
function exigence:game/game_on

# Remind player of how many resources they need
tellraw @a [{text:"\nResources Needed: ",color:"gray"},{"score":{"name":"Green.Consume","objective":"deck.analysis"},color:"dark_green"}," ",{"score":{"name":"Red.Consume","objective":"deck.analysis"},color:"red"}," ",{"score":{"name":"Aqua.Consume","objective":"deck.analysis"},color:"aqua"}]

# Initialize resources needed
function exigence:bossbar/resource/update_title
