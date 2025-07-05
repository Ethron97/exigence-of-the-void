# Called when player plays a spellbound card by using it from their inventory

# Copy item to storage so we can clear it later
execute if score #slot Temp matches 2 run data modify storage exigence:give card_name set from entity @s equipment.mainhand.components."minecraft:custom_data".card_name
execute if score #slot Temp matches 1 run data modify storage exigence:give card_name set from entity @s equipment.offhand.components."minecraft:custom_data".card_name

# Get card entity that matches card name and is spellbound/not played
#$tag @e[type=minecraft:armor_stand,tag=Card,tag=!Played,tag=Spellbound,limit=1,sort=random,nbt={mainhand:{components:{"minecraft:custom_data":{card_name:'$(card_name)'}}}}] add Spellslinging

# Get all card entities matching this card name
$execute as @e[type=armor_stand,tag=Card,tag=!Played,tag=Spellbound] if items entity @s weapon.* paper[custom_data~{card_name:'$(card_name)'}] run tag @s add CanSpellslinging
# Tag a random one with filters
execute as @e[type=armor_stand,tag=CanSpellslinging,sort=random,limit=1] run tag @s add Spellslinging
# Remove local
tag @e[type=armor_stand,tag=Card,tag=CanSpellslinging] remove CanSpellslinging

# Copy item over from hand to armorstand so that costs are on the armorstand
execute if score #slot Temp matches 2 run item replace entity @e[type=armor_stand,tag=Spellslinging,limit=1] weapon.mainhand from entity @s weapon.mainhand
execute if score #slot Temp matches 1 run item replace entity @e[type=armor_stand,tag=Spellslinging,limit=1] weapon.mainhand from entity @s weapon.offhand

# Clear 
scoreboard players set #remove Temp 1

# Clear single copy from co-op players
data modify storage exigence:give index set value 0
data modify storage exigence:give type set value 'hotbar'
execute as @a[tag=ActivePlayer,tag=!Spellslinging] run function exigence:player/clear/spellbound with storage exigence:give

# Play spellbound sound
execute at @s positioned ~ ~1000 ~ run playsound minecraft:item.trident.return ambient @a ~ ~ ~ 1000 1

# Call functions common to Drawing a card
execute as @e[type=armor_stand,tag=Spellslinging] run function exigence:cards/spellsling

# Update displays
function exigence:deck/update_card_counter
function exigence:bossbar/deck/update_data
function exigence:bossbar/resource/update_title
function exigence:deck/update_last_played_bossbar with storage exigence:last_card
