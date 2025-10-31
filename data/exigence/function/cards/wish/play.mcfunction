say [+5 minutes of a random effect. Reduce the capacity of one random resource by 2]

# Randomize the effect to be given
execute store result score #random Random run random value 1..14
execute if score #random Random matches 1 as @a[tag=ActivePlayer,scores={dead=0}] run function exigence:player/effects/add_effect_time_card {effect:"beastsense",duration:6000}
execute if score #random Random matches 2 as @a[tag=ActivePlayer,scores={dead=0}] run function exigence:player/effects/add_effect_time_card {effect:"circulation",duration:6000}
execute if score #random Random matches 3 as @a[tag=ActivePlayer,scores={dead=0}] run function exigence:player/effects/add_effect_time_card {effect:"detection",duration:6000}
execute if score #random Random matches 4 as @a[tag=ActivePlayer,scores={dead=0}] run function exigence:player/effects/add_effect_time_card {effect:"detectthoughts",duration:6000}
execute if score #random Random matches 5 as @a[tag=ActivePlayer,scores={dead=0}] run function exigence:player/effects/add_effect_time_card {effect:"farstep",duration:6000}
execute if score #random Random matches 6 as @a[tag=ActivePlayer,scores={dead=0}] run function exigence:player/effects/add_effect_time_card {effect:"flicker",duration:6000}
execute if score #random Random matches 7 as @a[tag=ActivePlayer,scores={dead=0}] run function exigence:player/effects/add_effect_time_card {effect:"glimmer",duration:6000}
execute if score #random Random matches 8 as @a[tag=ActivePlayer,scores={dead=0}] run function exigence:player/effects/add_effect_time_card {effect:"regen",duration:6000}
execute if score #random Random matches 9 as @a[tag=ActivePlayer,scores={dead=0}] run function exigence:player/effects/add_effect_time_card {effect:"invisibility",duration:6000}
execute if score #random Random matches 10 as @a[tag=ActivePlayer,scores={dead=0}] run function exigence:player/effects/add_effect_time_card {effect:"jump",duration:6000}
execute if score #random Random matches 11 as @a[tag=ActivePlayer,scores={dead=0}] run function exigence:player/effects/add_effect_time_card {effect:"jump4",duration:6000}
execute if score #random Random matches 12 as @a[tag=ActivePlayer,scores={dead=0}] run function exigence:player/effects/speed/add_effect_time_card {level:1,duration:6000}
execute if score #random Random matches 13 as @a[tag=ActivePlayer,scores={dead=0}] run function exigence:player/effects/speed/add_effect_time_card {level:2,duration:6000}
execute if score #random Random matches 14 as @a[tag=ActivePlayer,scores={dead=0}] run function exigence:player/effects/speed/add_effect_time_card {level:3,duration:6000}

execute if score #random Random matches 1 run tellraw @a[tag=ActivePlayer,scores={dead=0}] [{text:"Wish granted... +5 minutes of ",color:"gray"},{text:"Beastsense",color:"yellow"}]
execute if score #random Random matches 2 run tellraw @a[tag=ActivePlayer,scores={dead=0}] [{text:"Wish granted... +5 minutes of ",color:"gray"},{text:"Circulation",color:"yellow"}]
execute if score #random Random matches 3 run tellraw @a[tag=ActivePlayer,scores={dead=0}] [{text:"Wish granted... +5 minutes of ",color:"gray"},{text:"Clairvoyance",color:"yellow"}]
execute if score #random Random matches 4 run tellraw @a[tag=ActivePlayer,scores={dead=0}] [{text:"Wish granted... +5 minutes of ",color:"gray"},{text:"Detect Thoughts",color:"yellow"}]
execute if score #random Random matches 5 run tellraw @a[tag=ActivePlayer,scores={dead=0}] [{text:"Wish granted... +5 minutes of ",color:"gray"},{text:"Far Step",color:"yellow"}]
execute if score #random Random matches 6 run tellraw @a[tag=ActivePlayer,scores={dead=0}] [{text:"Wish granted... +5 minutes of ",color:"gray"},{text:"Flicker",color:"yellow"}]
execute if score #random Random matches 7 run tellraw @a[tag=ActivePlayer,scores={dead=0}] [{text:"Wish granted... +5 minutes of ",color:"gray"},{text:"Glimmer",color:"yellow"}]
execute if score #random Random matches 8 run tellraw @a[tag=ActivePlayer,scores={dead=0}] [{text:"Wish granted... +5 minutes of ",color:"gray"},{text:"Regeneration",color:"yellow"}]
execute if score #random Random matches 9 run tellraw @a[tag=ActivePlayer,scores={dead=0}] [{text:"Wish granted... +5 minutes of ",color:"gray"},{text:"Invisibility",color:"yellow"}]
execute if score #random Random matches 10 run tellraw @a[tag=ActivePlayer,scores={dead=0}] [{text:"Wish granted... +5 minutes of ",color:"gray"},{text:"Jump II",color:"yellow"}]
execute if score #random Random matches 11 run tellraw @a[tag=ActivePlayer,scores={dead=0}] [{text:"Wish granted... +5 minutes of ",color:"gray"},{text:"Jump IV",color:"yellow"}]
execute if score #random Random matches 12 run tellraw @a[tag=ActivePlayer,scores={dead=0}] [{text:"Wish granted... +5 minutes of ",color:"gray"},{text:"Speed I",color:"yellow"}]
execute if score #random Random matches 13 run tellraw @a[tag=ActivePlayer,scores={dead=0}] [{text:"Wish granted... +5 minutes of ",color:"gray"},{text:"Speed II",color:"yellow"}]
execute if score #random Random matches 14 run tellraw @a[tag=ActivePlayer,scores={dead=0}] [{text:"Wish granted... +5 minutes of ",color:"gray"},{text:"Speed III",color:"yellow"}]

# Reduce a random resource cap by 2
execute store result score #random Random run random value 1..3

execute if score #random Random matches 1 run scoreboard players remove Max.Green game.resources 2
scoreboard players operation Max.Green game.resources > 0 number
scoreboard players operation Current.Green game.resources < Max.Green game.resources
execute if score #random Random matches 1 run tellraw @a[tag=ActivePlayer] [{text:"Reduced resource maximums by ",color:"red"},{text:"❂❂",color:"dark_green"}]

execute if score #random Random matches 2 run scoreboard players remove Max.Red game.resources 2
scoreboard players operation Max.Red game.resources > 0 number
scoreboard players operation Current.Red game.resources < Max.Red game.resources
execute if score #random Random matches 2 run tellraw @a[tag=ActivePlayer] [{text:"Reduced resource maximums by ",color:"red"},{text:"❂❂",color:"dark_red"}]

execute if score #random Random matches 3 run scoreboard players remove Max.Aqua game.resources 2
scoreboard players operation Max.Aqua game.resources > 0 number
scoreboard players operation Current.Aqua game.resources < Max.Aqua game.resources
execute if score #random Random matches 3 run tellraw @a[tag=ActivePlayer] [{text:"Reduced resource maximums by ",color:"red"},{text:"❂❂",color:"aqua"}]
