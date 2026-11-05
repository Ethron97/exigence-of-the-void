# Easily accessible function we can use to test things
say test

# Testing pot data merge for vault pot fills
#$data merge block -261 17 -31 {item:{id:"$(id)",Count:$(Count),tag:$(tag)}}

# Testing delay needed to teleport enemies spawned in the same tick
#function exigence:enemy/spawn_enemies
#schedule function exigence:enemy/distribute_ravagers 1t

# Check if two menace nodes are within 16 blocks (meaning both could be triggered at the same time)
#execute as @e[type=minecraft:armor_stand,tag=marker] at @s if entity @e[distance=..16,type=minecraft:marker,tag=MenaceNode] run say I need personal space

# Test for nonair around all echo nodes
#execute as @e[type=minecraft:marker,tag=EchoNode] at @s if function exigence:ember/setup/detect_nonair run tp Ethron97 @s


#$clear @s minecraft:paper[custom_data={card_name:"$(card_name)"}] 1
#$say $(card_name)

#summon minecraft:vex ~ ~ ~ {BoundX:-294,BoundY:22,BoundZ:-251}

# Spectator glitch test
#kill @s
#gamemode spectator @s
#schedule function exigence:player/game/refresh_spectate 2t


#advancement revoke @a[advancements={exigence:listener/pickup/coin/bonus_coin=true}] only exigence:listener/pickup/coin/bonus_coin
#$say $(Rotation)


#give Ethron97 copper_leggings[minecraft:attribute_modifiers=[{type:'minecraft:armor',id:'exigence:remove',amount:0.0,operation:'add_multiplied_base',slot:'legs'}]]

#scoreboard objectives modify ItemShopBelowName displayname [{sprite:"exigence:item/glint",atlas:"items",color:"white"}\
,{score:{name:"@s",objective:"shop.player.money_to_spend"},color:"aqua"},{text:" "},{sprite:"minecraft:item/prize_pottery_sherd",atlas:"items",color:"white"},{score:{name:"@s",objective:"shop.player.research_to_spend"},color:"light_purple"},{text:" "}]


#tellraw @s [{nbt:"lore",source:"storage",storage:'exigence:tellraw',interpret:true}]

#tellraw @s [{nbt:"SelectedItem.components.'minecraft:lore'",source:"entity",entity:"@s",interpret:true,separator:'{text:"\n"}'}]


tellraw @s [{sprite:"minecraft:item/diamond",atlas:"items",color:"white"}\
,{sprite:"minecraft:item/diamond",atlas:"items",color:"yellow"}\
,{sprite:"minecraft:item/diamond",atlas:"items",color:"gold"}\
,{sprite:"minecraft:item/diamond",atlas:"items",color:"red"}\
,{sprite:"minecraft:item/diamond",atlas:"items",color:"dark_red"}\
,{sprite:"minecraft:item/diamond",atlas:"items",color:"dark_purple"}\
,{sprite:"minecraft:item/diamond",atlas:"items",color:"light_purple"}\
,{sprite:"minecraft:item/diamond",atlas:"items",color:"aqua"}\
,{sprite:"minecraft:item/diamond",atlas:"items",color:"dark_aqua"}\
,{sprite:"minecraft:item/diamond",atlas:"items",color:"blue"}\
,{sprite:"minecraft:item/diamond",atlas:"items",color:"dark_blue"}\
,{sprite:"minecraft:item/diamond",atlas:"items",color:"black"}\
,{sprite:"minecraft:item/diamond",atlas:"items",color:"dark_gray"}\
,{sprite:"minecraft:item/diamond",atlas:"items",color:"gray"}\
,{sprite:"minecraft:item/diamond",atlas:"items",color:"green"}\
,{sprite:"minecraft:item/diamond",atlas:"items",color:"dark_green"}]

tellraw @s [{sprite:"minecraft:item/snowball",atlas:"items",color:"white"}\
,{sprite:"minecraft:item/snowball",atlas:"items",color:"yellow"}\
,{sprite:"minecraft:item/snowball",atlas:"items",color:"gold"}\
,{sprite:"minecraft:item/snowball",atlas:"items",color:"red"}\
,{sprite:"minecraft:item/snowball",atlas:"items",color:"dark_red"}\
,{sprite:"minecraft:item/snowball",atlas:"items",color:"dark_purple"}\
,{sprite:"minecraft:item/snowball",atlas:"items",color:"light_purple"}\
,{sprite:"minecraft:item/snowball",atlas:"items",color:"aqua"}\
,{sprite:"minecraft:item/snowball",atlas:"items",color:"dark_aqua"}\
,{sprite:"minecraft:item/snowball",atlas:"items",color:"blue"}\
,{sprite:"minecraft:item/snowball",atlas:"items",color:"dark_blue"}\
,{sprite:"minecraft:item/snowball",atlas:"items",color:"black"}\
,{sprite:"minecraft:item/snowball",atlas:"items",color:"dark_gray"}\
,{sprite:"minecraft:item/snowball",atlas:"items",color:"gray"}\
,{sprite:"minecraft:item/snowball",atlas:"items",color:"green"}\
,{sprite:"minecraft:item/snowball",atlas:"items",color:"dark_green"}]