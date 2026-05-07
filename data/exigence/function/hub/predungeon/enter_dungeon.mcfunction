# Called from try_enter_dungeon

# Tags
tag @a[tag=Predungeon] add ActivePlayer
tag @a[tag=Predungeon] add PrimaryPlayer
tag @a[tag=Predungeon] remove Predungeon

# Begin game
function exigence:game/game_on

# Remind player of how many resources they need
tellraw @a [{text:"\nResources Needed: ",color:"gray"},{"score":{"name":"resource.green.consume","objective":"deck.analysis"},color:"dark_green"}," ",{"score":{"name":"resource.red.consume","objective":"deck.analysis"},color:"red"}," ",{"score":{"name":"resource.aqua.consume","objective":"deck.analysis"},color:"aqua"}]

# Initialize resources needed
function exigence:bossbar/resource/update_title
