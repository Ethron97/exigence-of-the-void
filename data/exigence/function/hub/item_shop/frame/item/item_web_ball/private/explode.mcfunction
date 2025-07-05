# Called by tick_loop when the snowball is detected to have landed

## CONSTRAITNS
#   AS/AT Snowball marker

#=============================================================================================================

#say Exploding web ball

# Set max march distance
scoreboard players set max_march SnowballID 40

# Particles (DEBUG)
#particle minecraft:angry_villager ~ ~ ~ 0.3 0.3 0.3 0.1 20

particle minecraft:explosion ~ ~ ~ 0.3 0.3 0.3 0.1 2

playsound minecraft:block.cobweb.break block @a ~ ~ ~ 1 1
playsound minecraft:block.cobweb.place block @a ~ ~ ~ 1 1
playsound minecraft:block.cobweb.step block @a ~ ~ ~ 1 1

# Raycast / generate web casts
function exigence:hub/item_shop/frame/item/item_web_ball/private/web_ray/new
function exigence:hub/item_shop/frame/item/item_web_ball/private/web_ray/new
function exigence:hub/item_shop/frame/item/item_web_ball/private/web_ray/new
function exigence:hub/item_shop/frame/item/item_web_ball/private/web_ray/new
function exigence:hub/item_shop/frame/item/item_web_ball/private/web_ray/new

function exigence:hub/item_shop/frame/item/item_web_ball/private/web_ray/new
function exigence:hub/item_shop/frame/item/item_web_ball/private/web_ray/new
function exigence:hub/item_shop/frame/item/item_web_ball/private/web_ray/new
function exigence:hub/item_shop/frame/item/item_web_ball/private/web_ray/new
function exigence:hub/item_shop/frame/item/item_web_ball/private/web_ray/new

# Kill THIS snowball marker
kill @s[tag=SnowballMarker]
