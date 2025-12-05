# Easily accessible function we can use to test things

# Testing pot data merge for vault pot fills
#$data merge block -261 17 -31 {item:{id:"$(id)",Count:$(Count),tag:$(tag)}}

# Testing delay needed to teleport enemies spawned in the same tick
#function exigence:enemy/spawn_enemies
#schedule function exigence:enemy/distribute_ravagers 1t

# Check if two menace nodes are within 16 blocks (meaning both could be triggered at the same time)
#execute as @e[type=armor_stand,tag=MenaceNode] at @s if entity @e[distance=..16,type=armor_stand,tag=MenaceNode] run say I need personal space


# Testing CartCache en masse
#tag @e[type=armor_stand,tag=CartCache] remove CartCache
#execute as @e[type=minecraft:armor_stand,tag=VarianceNode,tag=Minecart] run function exigence:cards/cart_cache/cart_trigger

# Test for nonair around all echo nodes
#execute as @e[type=armor_stand,tag=EchoNode] at @s if function exigence:ember/setup/detect_nonair run tp Ethron97 @s


#$clear @s minecraft:paper[custom_data={card_name:"$(card_name)"}] 1
#$say $(card_name)

#summon minecraft:vex ~ ~ ~ {BoundX:-294,BoundY:22,BoundZ:-251}

# Spectator glitch test
#kill @s
#gamemode spectator @s
#schedule function exigence:player/game/refresh_spectate 2t

say test
#advancement revoke @a[advancements={exigence:listener/pickup/coin/bonus_coin=true}] only exigence:listener/pickup/coin/bonus_coin
$say $(Rotation)