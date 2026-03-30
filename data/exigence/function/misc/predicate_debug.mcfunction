# Update actionbar to display current location

## CONSTRAINTS
#   AS player (not in the game)

#====================================================================================================

# VAULT DEBUG
## LEVEL 1
execute if data storage exigence:debug {vault:1} as @s[predicate=exigence:vault/1/host] run return run title @s actionbar {text:"Vault: Host"}
execute if data storage exigence:debug {vault:1} as @s[predicate=exigence:vault/1/raiser] run return run title @s actionbar {text:"Vault: Raiser"}
execute if data storage exigence:debug {vault:1} as @s[predicate=exigence:vault/1/rib] run return run title @s actionbar {text:"Vault: Rib"}
execute if data storage exigence:debug {vault:1} as @s[predicate=exigence:vault/1/shaper] run return run title @s actionbar {text:"Vault: Shaper"}
execute if data storage exigence:debug {vault:1} as @s[predicate=exigence:vault/1/tide] run return run title @s actionbar {text:"Vault: Tide"}
execute if data storage exigence:debug {vault:1} as @s[predicate=exigence:vault/1/wayfinder] run return run title @s actionbar {text:"Vault: Wayfinder"}
## LEVEL 2
execute if data storage exigence:debug {vault:1} as @s[predicate=exigence:vault/2/sentry] run return run title @s actionbar {text:"Vault: Sentry"}
execute if data storage exigence:debug {vault:1} as @s[predicate=exigence:vault/2/snout] run return run title @s actionbar {text:"Vault: Snout"}
execute if data storage exigence:debug {vault:1} as @s[predicate=exigence:vault/2/wild] run return run title @s actionbar {text:"Vault: Wild"}
execute if data storage exigence:debug {vault:1} as @s[predicate=exigence:vault/2/vex] run return run title @s actionbar {text:"Vault: Vex"}
execute if data storage exigence:debug {vault:1} as @s[predicate=exigence:vault/2/coast] run return run title @s actionbar {text:"Vault: Coast"}
execute if data storage exigence:debug {vault:1} as @s[predicate=exigence:vault/2/ward] run return run title @s actionbar {text:"Vault: Ward"}

# MIRROR DEBUG
execute if data storage exigence:debug {mirror:1} as @s[predicate=exigence:mirror/stairs] run return run title @s actionbar {text:"Mirror: Stairs"}
# Tunnel mirror parkours:
execute if data storage exigence:debug {mirror:1} as @s[predicate=exigence:mirror/3wide] run return run title @s actionbar {text:"Mirror: Three Wide"}
execute if data storage exigence:debug {mirror:1} as @s[predicate=exigence:mirror/4wide] run return run title @s actionbar {text:"Mirror: Four Wide"}
execute if data storage exigence:debug {mirror:1} as @s[predicate=exigence:mirror/3way] run return run title @s actionbar {text:"Mirror: Intersection"}
execute if data storage exigence:debug {mirror:1} as @s[predicate=exigence:mirror/45d] run return run title @s actionbar {text:"Mirror: 45 Degress"}

execute if data storage exigence:debug {mirror:1} as @s[predicate=exigence:mirror/lower_left] run return run title @s actionbar {text:"Mirror: Lower Left"}
execute if data storage exigence:debug {mirror:1} as @s[predicate=exigence:mirror/upper_left] run return run title @s actionbar {text:"Mirror: Upper Left"}
execute if data storage exigence:debug {mirror:1} as @s[predicate=exigence:mirror/upper_right] run return run title @s actionbar {text:"Mirror: Upper Right"}
execute if data storage exigence:debug {mirror:1} as @s[predicate=exigence:mirror/bookshelf] run return run title @s actionbar {text:"Mirror: Bookshelf"}

# DOOR DEBUG
execute if data storage exigence:debug {door:1} as @s[predicate=exigence:door/level1] run return run title @s actionbar {text:"Door: Level 1"}

# LEVEL DEBUG
execute as @s[predicate=exigence:level/1] run return run title @s actionbar {text:"Level 1"}
execute as @s[predicate=exigence:level/2] run return run title @s actionbar {text:"Level 2"}
execute as @s[predicate=exigence:level/3] run return run title @s actionbar {text:"Level 3"}
execute as @s[predicate=exigence:level/4] run return run title @s actionbar {text:"Level 4"}
