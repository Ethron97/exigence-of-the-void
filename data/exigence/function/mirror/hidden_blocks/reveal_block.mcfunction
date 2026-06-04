# Call as hidden_block entity
tag @s add Revealed
tag @s add Discovered

execute if entity @s[tag=ReflectionNO] align x align z run summon minecraft:block_display ~ ~ ~ {Tags:["RevealedBlock","NewRevealedBlock"],block_state:{Name:"minecraft:glass"},Glowing:1b}
execute if entity @s[tag=ReflectionYES] align x align z run summon minecraft:block_display ~ ~ ~ {Tags:["RevealedBlock","NewRevealedBlock"],block_state:{Name:"minecraft:crying_obsidian"},Glowing:1b}

execute if entity @s[tag=ReflectionNO] run team join LightPurple @e[type=minecraft:block_display,tag=NewRevealedBlock,distance=..1]
execute if entity @s[tag=ReflectionYES] run team join Menace @e[type=minecraft:block_display,tag=NewRevealedBlock,distance=..1]

tag @e[type=minecraft:block_display,tag=NewRevealedBlock,distance=..1] remove NewRevealedBlock

execute if entity @s[tag=ReflectionNO] run playsound minecraft:block.end_portal_frame.fill block @a ~ ~ ~ 1 1.2
