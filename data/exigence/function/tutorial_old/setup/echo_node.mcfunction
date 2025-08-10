tag @e[type=minecraft:armor_stand,tag=ChosenEchoNode] remove ChosenEchoNode

# Activate node
execute as @e[type=minecraft:armor_stand,scores={ObjectLevel=10},tag=EchoNode] run tag @s add ChosenEchoNode
execute as @e[type=minecraft:armor_stand,tag=ChosenEchoNode] run function exigence:ember/private/activate_echo_node

# Change name
data modify storage exigence:compass name set value [{text:"Tutorial Echo Locator",color:"blue",italic:false}]
data modify storage exigence:compass lore set value []

# Give player compass
execute as @a[tag=Tutorial] run function exigence:player/give/compass with storage exigence:compass

# Drop embers
function exigence:ember/drop_embers
function exigence:ember/drop_embers
function exigence:ember/drop_embers
function exigence:ember/drop_embers
function exigence:ember/drop_embers

function exigence:ember/drop_embers
function exigence:ember/drop_embers
function exigence:ember/drop_embers
function exigence:ember/drop_embers
function exigence:ember/drop_embers

