# Reset node tags
execute as @e[type=minecraft:armor_stand,tag=VaultNode,tag=Opened] run tag @s remove Opened
execute as @e[type=minecraft:armor_stand,tag=VaultNode,tag=PickedUp] run tag @s remove PickedUp

# Kill any vault key hovers
kill @e[type=minecraft:item_display,tag=VaultHandleKey]

# Kill old door handls
kill @e[type=minecraft:item_display,tag=VaultHandle]
kill @e[type=minecraft:interaction,tag=VaultHandle]

# Clean lingering antechamber displays
function exigence:door/vault/_trial/_cleanup_displays {vault_code:1,vault_name:'Bolt'}
function exigence:door/vault/_trial/_cleanup_displays {vault_code:2,vault_name:'Dune'}
function exigence:door/vault/_trial/_cleanup_displays {vault_code:3,vault_name:'Silence'}
function exigence:door/vault/_trial/_cleanup_displays {vault_code:4,vault_name:'Eye'}
function exigence:door/vault/_trial/_cleanup_displays {vault_code:5,vault_name:'Spire'}
function exigence:door/vault/_trial/_cleanup_displays {vault_code:6,vault_name:'Flow'}

# Reset tags
tag @a[tag=Trial] remove Trial
tag @a[tag=Crucible] remove Crucible

## Close vaults
# Level 1
function exigence:door/vault/host/close
function exigence:door/vault/raiser/close
function exigence:door/vault/rib/close
function exigence:door/vault/shaper/close
function exigence:door/vault/tide/close
function exigence:door/vault/wayfinder/close
# Level 2
function exigence:door/vault/snout/close
function exigence:door/vault/wild/close
function exigence:door/vault/sentry/close
function exigence:door/vault/vex/close
function exigence:door/vault/coast/close
function exigence:door/vault/ward/close
# Level 3
function exigence:door/vault/bolt/close
function exigence:door/vault/dune/close
function exigence:door/vault/silence/close
function exigence:door/vault/eye/close
function exigence:door/vault/spire/close
function exigence:door/vault/flow/close


## Setup vault
# Level 1
execute as @e[type=marker,tag=PotMarker,tag=host] at @s run function exigence:door/vault/host/setup_pots
execute as @e[type=marker,tag=PotMarker,tag=raiser] at @s run function exigence:door/vault/raiser/setup_pots
execute as @e[type=marker,tag=PotMarker,tag=rib] at @s run function exigence:door/vault/rib/setup_pots
execute as @e[type=marker,tag=PotMarker,tag=shaper] at @s run function exigence:door/vault/shaper/setup_pots
execute as @e[type=marker,tag=PotMarker,tag=tide] at @s run function exigence:door/vault/tide/setup_pots
execute as @e[type=marker,tag=PotMarker,tag=wayfinder] at @s run function exigence:door/vault/wayfinder/setup_pots
# Level 2
execute as @e[type=marker,tag=PotMarker,tag=snout] at @s run function exigence:door/vault/snout/setup_pots
execute as @e[type=marker,tag=PotMarker,tag=wild] at @s run function exigence:door/vault/wild/setup_pots
execute as @e[type=marker,tag=PotMarker,tag=sentry] at @s run function exigence:door/vault/sentry/setup_pots
execute as @e[type=marker,tag=PotMarker,tag=vex] at @s run function exigence:door/vault/vex/setup_pots
execute as @e[type=marker,tag=PotMarker,tag=coast] at @s run function exigence:door/vault/coast/setup_pots
execute as @e[type=marker,tag=PotMarker,tag=ward] at @s run function exigence:door/vault/ward/setup_pots
# Level 3 pot setups handled on trial win


## Recreate door handles
# Level 1
function exigence:door/vault/host/setup_handle
function exigence:door/vault/raiser/setup_handle
function exigence:door/vault/rib/setup_handle
function exigence:door/vault/shaper/setup_handle
function exigence:door/vault/tide/setup_handle
function exigence:door/vault/wayfinder/setup_handle
# Level 2
function exigence:door/vault/snout/setup_handle
function exigence:door/vault/wild/setup_handle
function exigence:door/vault/sentry/setup_handle
function exigence:door/vault/vex/setup_handle
function exigence:door/vault/coast/setup_handle
function exigence:door/vault/ward/setup_handle
# Level 3
function exigence:door/vault/bolt/setup_handle
function exigence:door/vault/dune/setup_handle
function exigence:door/vault/silence/setup_handle
function exigence:door/vault/eye/setup_handle
function exigence:door/vault/spire/setup_handle
function exigence:door/vault/flow/setup_handle

# Reset tags
tag @a remove Openinghost
tag @a remove Openingraiser
tag @a remove Openingrib
tag @a remove Openingshaper
tag @a remove Openingtide
tag @a remove Openingwayfinder

tag @a remove Openingsnout
tag @a remove Openingwild
tag @a remove Openingsentry
tag @a remove Openingvex
tag @a remove Openingcoast
tag @a remove Openingward

tag @a remove Openingbolt
tag @a remove Openingdune
tag @a remove Openingsilence
tag @a remove Openingeye
tag @a remove Openingspire
tag @a remove Openingflow
