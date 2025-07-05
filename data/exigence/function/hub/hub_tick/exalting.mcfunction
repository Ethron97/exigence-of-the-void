# Called from hub_tick if players are "exalting" in the dungeon after a campaign win

# Check if they clicked with the carrot on a stick
execute if entity @a[tag=Exalting,scores={CarrotOnStick=1..}] as @a[tag=Exalting] run function exigence:hub/hub_tick/private/done_exalting

# kill carrot on stick on ground
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]

# Give new stick if they don't have one
give @a[tag=Exalting,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick"}]}] minecraft:carrot_on_a_stick[custom_name=[{text:"Return to Hub",color:"aqua",italic:false}]]

# Replace actionbar with "Use the XXX item to return to the hub when ready"
# (This happens in the hub/update_actionbar logic)
