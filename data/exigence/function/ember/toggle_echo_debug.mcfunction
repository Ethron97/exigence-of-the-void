# 1. Toggle debug state
# Store in dummy so it doesn't instantly flip back
execute if data storage exigence:debug {echo:1} run data modify storage temp debug set value 0
execute if data storage exigence:debug {echo:0} run data modify storage temp debug set value 1

# Callout new debug value
execute if data storage exigence:debug {echo:1} run say Turning echo debug off
execute if data storage exigence:debug {echo:0} run say Turning echo debug on

# Update actual value
data modify storage exigence:debug echo set from storage temp debug


# 2. Run commands depending on debug state
$execute if data storage exigence:debug {echo:1} as @e[type=minecraft:armor_stand,tag=EchoNode,scores={ObjectLevel=$(levels)}] run data merge entity @s {Glowing:1b,CustomNameVisible:1b,Invisible:0b,Marker:0b}
execute if data storage exigence:debug {echo:0} as @e[type=minecraft:armor_stand,tag=EchoNode] run data merge entity @s {Glowing:0b,CustomNameVisible:0b,Invisible:1b,Marker:1b}

# Highlight nodes that need a EchoDifficulty score assigned as Green
$execute if data storage exigence:debug {echo:1} as @e[type=minecraft:armor_stand,tag=EchoNode,scores={EchoDifficulty=0,ObjectLevel=$(levels)}] run team join Hazard @s
execute if data storage exigence:debug {echo:0} as @e[type=minecraft:armor_stand,tag=EchoNode] run team join Echo @s

# Toggle text display with the EchoDifficulty above their name
$execute if data storage exigence:debug {echo:1} as @e[type=minecraft:armor_stand,tag=EchoNode,scores={ObjectLevel=$(levels)}] run function exigence:ember/private/summon_echo_difficulty_display
execute if data storage exigence:debug {echo:0} run kill @e[type=minecraft:text_display,tag=EchoDifficultyDisplay]

# Toggle winrate text display
$execute if data storage exigence:debug {echo:1} as @e[type=minecraft:armor_stand,tag=EchoNode,scores={ObjectLevel=$(levels)}] run function exigence:ember/private/summon_winrate_display
execute if data storage exigence:debug {echo:0} run kill @e[type=minecraft:text_display,tag=WinrateDisplay]