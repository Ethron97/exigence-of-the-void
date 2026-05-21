# Menu that lets admin control game functions easily
#   Ie, increase treasure, berries, menace, hazard
#   Distribute specific enemy type for testing
#   Draw a card
#   Reset deck
#   Re-select echos

## CONSTRAINTS
#   AS player

#====================================================================================================

tellraw @s [{text:"------------------------------------------------",color:"dark_gray"}]

## QUEUES
tellraw @s [{text:"TREASURE   ",color:"gold"}\
,{text:"[",color:"dark_gray"},{text:"+1 🍪",color:"gold",click_event:{action:"run_command",command:"/function exigence:treasure/queue/add_to_queue {source:'admin',amount:1}"}},{text:"]   ",color:"dark_gray"}\
,{text:"[",color:"dark_gray"},{text:"+5 🍪",color:"gold",click_event:{action:"run_command",command:"/function exigence:treasure/queue/add_to_queue {source:'admin',amount:5}"}},{text:"]   ",color:"dark_gray"}\
,{text:"[",color:"dark_gray"},{text:"+10 🍪",color:"gold",click_event:{action:"run_command",command:"/function exigence:treasure/queue/add_to_queue {source:'admin',amount:10}"}},{text:"]   ",color:"dark_gray"}\
,{text:"[",color:"dark_gray"},{text:"+32 🍪",color:"gold",click_event:{action:"run_command",command:"/function exigence:treasure/queue/add_to_queue {source:'admin',amount:32}"}},{text:"]   ",color:"dark_gray"}\
]
tellraw @s [{text:"    EMBER   ",color:"aqua"}\
,{text:"[",color:"dark_gray"},{text:"+1 🔥",color:"aqua",click_event:{action:"run_command",command:"/scoreboard players add ember.queue game.dungeon.temp 1"}},{text:"]   ",color:"dark_gray"}\
,{text:"[",color:"dark_gray"},{text:"+5 🔥",color:"aqua",click_event:{action:"run_command",command:"/scoreboard players add ember.queue game.dungeon.temp 5"}},{text:"]   ",color:"dark_gray"}\
,{text:"[",color:"dark_gray"},{text:"+10 🔥",color:"aqua",click_event:{action:"run_command",command:"/scoreboard players add ember.queue game.dungeon.temp 10"}},{text:"]   ",color:"dark_gray"}\
,{text:"[",color:"dark_gray"},{text:"+32 🔥",color:"aqua",click_event:{action:"run_command",command:"/scoreboard players add ember.queue game.dungeon.temp 32"}},{text:"]   ",color:"dark_gray"}\
]
tellraw @s [{text:"    BERRY   ",color:"dark_green"}\
,{text:"[",color:"dark_gray"},{text:"+1 🍒",color:"dark_green",click_event:{action:"run_command",command:"/scoreboard players add berry.queue game.dungeon.temp 1"}},{text:"]   ",color:"dark_gray"}\
,{text:"[",color:"dark_gray"},{text:"+5 🍒",color:"dark_green",click_event:{action:"run_command",command:"/scoreboard players add berry.queue game.dungeon.temp 5"}},{text:"]   ",color:"dark_gray"}\
,{text:"[",color:"dark_gray"},{text:"+10 🍒",color:"dark_green",click_event:{action:"run_command",command:"/scoreboard players add berry.queue game.dungeon.temp 10"}},{text:"]   ",color:"dark_gray"}\
,{text:"[",color:"dark_gray"},{text:"+32 🍒",color:"dark_green",click_event:{action:"run_command",command:"/scoreboard players add berry.queue game.dungeon.temp 32"}},{text:"]   ",color:"dark_gray"}\
]
tellraw @s [{text:"   MENACE   ",color:"dark_purple"}\
,{text:"[",color:"dark_gray"},{text:"+1 m",color:"dark_purple",click_event:{action:"run_command",command:"/scoreboard players add menace.queue game.dungeon.temp 1"}},{text:"]   ",color:"dark_gray"}\
,{text:"[",color:"dark_gray"},{text:"+5 m",color:"dark_purple",click_event:{action:"run_command",command:"/scoreboard players add menace.queue game.dungeon.temp 5"}},{text:"]   ",color:"dark_gray"}\
,{text:"[",color:"dark_gray"},{text:"+10 m",color:"dark_purple",click_event:{action:"run_command",command:"/scoreboard players add menace.queue game.dungeon.temp 10"}},{text:"]   ",color:"dark_gray"}\
,{text:"[",color:"dark_gray"},{text:"+32 m",color:"dark_purple",click_event:{action:"run_command",command:"/scoreboard players add menace.queue game.dungeon.temp 32"}},{text:"]   ",color:"dark_gray"}\
]
tellraw @s [{text:"   HAZARD   ",color:"red"}\
,{text:"[",color:"dark_gray"},{text:"L1 ☢",color:"red",click_event:{action:"run_command",command:"/function exigence:hazard/proc_hazard {level:1,amount:1,type:'other'}"}},{text:"]   ",color:"dark_gray"}\
,{text:"[",color:"dark_gray"},{text:"L2 ☢",color:"red",click_event:{action:"run_command",command:"/function exigence:hazard/proc_hazard {level:2,amount:1,type:'other'}"}},{text:"]   ",color:"dark_gray"}\
,{text:"[",color:"dark_gray"},{text:"L3 ☢",color:"red",click_event:{action:"run_command",command:"/function exigence:hazard/proc_hazard {level:3,amount:1,type:'other'}"}},{text:"]   ",color:"dark_gray"}\
,{text:"[",color:"dark_gray"},{text:"L4 ☢",color:"red",click_event:{action:"run_command",command:"/function exigence:hazard/proc_hazard {level:4,amount:1,type:'other'}"}},{text:"]   ",color:"dark_gray"}\
]

tellraw @s [{text:""}]

## GIVE ITEMS
tellraw @s [{text:"GIVE   ",color:"green"}\
,{text:"[",color:"dark_gray"},{text:"🔘",color:"gold",click_event:{action:"run_command",command:"/function exigence:player/give/many/coin"}},{text:"]   ",color:"dark_gray"}\
,{text:"[",color:"dark_gray"},{text:"💎",color:"gold",click_event:{action:"run_command",command:"/function exigence:player/give/many/money"}},{text:"]   ",color:"dark_gray"}\
,{text:"[",color:"dark_gray"},{text:"🕮",color:"light_purple",click_event:{action:"run_command",command:"/function exigence:player/give/many/research"}},{text:"]   ",color:"dark_gray"}\
,{text:"[",color:"dark_gray"},{text:"🔥",color:"aqua",click_event:{action:"run_command",command:"/function exigence:player/give/many/ember"}},{text:"]   ",color:"dark_gray"}\
,{text:"[",color:"dark_gray"},{sprite:"minecraft:item/host_armor_trim_smithing_template",atlas:"items",color:"dark_aqua",click_event:{action:"run_command",command:"/function exigence:door/admin/give_level_1_vault_keys"}},{text:"] ",color:"dark_gray"}\
,{text:"[",color:"dark_gray"},{sprite:"minecraft:item/wild_armor_trim_smithing_template",atlas:"items",color:"green",click_event:{action:"run_command",command:"/function exigence:door/admin/give_level_2_vault_keys"}},{text:"] ",color:"dark_gray"}\
,{text:"[",color:"dark_gray"},{sprite:"minecraft:item/bolt_armor_trim_smithing_template",atlas:"items",color:"blue",click_event:{action:"run_command",command:"/function exigence:door/admin/give_level_3_vault_keys"}},{text:"]   ",color:"dark_gray"}\
,{text:"[",color:"dark_gray"},{sprite:"minecraft:item/trial_key",atlas:"items",color:"white",click_event:{action:"run_command",command:"/function exigence:door/admin/give_level_keys"}},{text:"]   ",color:"dark_gray"}\
]
#,{text:"[",color:"dark_gray"},{text:"🍒",color:"dark_green",click_event:{action:"run_command",command:"/function exigence:player/give/many/ember"}},{text:"]   ",color:"dark_gray"}\

tellraw @s [{text:""}]

## OTHER
tellraw @s [{text:"RELOAD ♻   ",color:"red"}\
,{text:"[",color:"dark_gray"},{text:"ENEMIES",color:"dark_red",click_event:{action:"run_command",command:"/function exigence:misc/triggers/admin/private/reset_enemies"}},{text:"]",color:"dark_gray"}\
]

tellraw @s [{text:""}]

# PROFILE DIFFICULTY
function exigence:misc/triggers/admin/private/profile_difficulty

# Reset trigger score
scoreboard players reset @s AdminGameMenu
scoreboard players enable @s AdminGameMenu