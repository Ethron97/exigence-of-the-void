# Spawn wardens on level 3
# Setting sonic_boom_sound_cooldown high means the warden never "finishes" the sonic boom attack pattern. So it tries, but never actually uses the sonic boom. YAY

summon minecraft:warden -279.0 -63.0 -135.0 {NoAI:true,Tags:["DataMerge","L3"],CustomName:{text:"Enmity",color:"dark_purple",italic:false},PersistenceRequired:1b,Brain:{memories:{"minecraft:sniff_cooldown":{value:{},ttl:1000000L},"minecraft:dig_cooldown":{value:{},ttl:1000000L},"minecraft:sonic_boom_sound_cooldown":{value:{},ttl:1000000L}}}}
summon minecraft:warden -279.0 -63.0 -135.0 {NoAI:true,Tags:["DataMerge","L3"],CustomName:{text:"Bile",color:"dark_purple",italic:false},PersistenceRequired:1b,Brain:{memories:{"minecraft:sniff_cooldown":{value:{},ttl:1000000L},"minecraft:dig_cooldown":{value:{},ttl:1000000L},"minecraft:sonic_boom_sound_cooldown":{value:{},ttl:1000000L}}}}
#   Can appear on any level
summon minecraft:warden -279.0 -63.0 -135.0 {NoAI:true,Tags:["DataMerge"],CustomName:{text:"Spite",color:"dark_purple",italic:false},PersistenceRequired:1b,Brain:{memories:{"minecraft:sniff_cooldown":{value:{},ttl:1000000L},"minecraft:dig_cooldown":{value:{},ttl:1000000L},"minecraft:sonic_boom_sound_cooldown":{value:{},ttl:1000000L}}}}
