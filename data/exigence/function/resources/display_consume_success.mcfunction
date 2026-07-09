$execute if score #used_cream game.resources matches 0 run title @s subtitle [$(green_consume),$(red_consume),$(aqua_consume)]
$execute if score #used_cream game.resources matches 1 run title @s subtitle [$(green_consume),$(red_consume),$(aqua_consume),{sprite:"minecraft:item/magma_cream",atlas:"items",color:"white"}]
#$title @a[tag=!ActivePlayer] subtitle [$(green_consume),$(red_consume),$(aqua_consume)]
