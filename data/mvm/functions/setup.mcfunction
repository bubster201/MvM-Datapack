scoreboard objectives add mvm_distance dummy
scoreboard objectives add mvm_timer dummy
scoreboard objectives add mvm_hit minecraft.custom:damage_dealt
scoreboard objectives add mvm_vars dummy
scoreboard objectives add mvm_map dummy
scoreboard objectives add mvm_class dummy
scoreboard objectives add mvm_node dummy

scoreboard objectives add mvm_ammo1 dummy
scoreboard objectives add mvm_ammo2 dummy
scoreboard objectives add mvm_ammo3 dummy
scoreboard objectives add mvm_reload1 dummy
scoreboard objectives add mvm_reload2 dummy
scoreboard objectives add mvm_reload3 dummy
scoreboard objectives add mvm_reloadSpeed1 dummy
scoreboard objectives add mvm_reloadSpeed2 dummy
scoreboard objectives add mvm_reloadSpeed3 dummy
scoreboard objectives add mvm_maxAmmo1 dummy
scoreboard objectives add mvm_maxAmmo2 dummy
scoreboard objectives add mvm_maxAmmo3 dummy
scoreboard objectives add mvm_id dummy
scoreboard objectives add mvm_demo_stickies dummy
scoreboard objectives add mvm_sticky_id dummy
scoreboard objectives add mvm_heavy_spread dummy
scoreboard objectives add mvm_blocksFilled dummy
scoreboard objectives add mvm_health dummy
scoreboard objectives add mvm_burnTime dummy
scoreboard objectives add mvm_maxHealth dummy
scoreboard objectives add mvm_metal dummy
scoreboard objectives add mvm_constructTime dummy
scoreboard objectives add mvm_applyDamage dummy
scoreboard objectives add mvm_damageDealer dummy
scoreboard objectives add mvm_metalReference dummy

scoreboard objectives add mvm_useIronAxe minecraft.used:minecraft.iron_axe
scoreboard objectives add mvm_useCrossbow minecraft.used:minecraft.crossbow
scoreboard objectives add mvm_useLingeringPotion minecraft.used:minecraft.lingering_potion
scoreboard objectives add mvm_hit minecraft.custom:damage_dealt
scoreboard objectives add mvm_crouch minecraft.custom:sneak_time
scoreboard objectives add mvm_useCarrotStick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add mvm_useBow minecraft.used:minecraft.bow

team add mvm_enemies
team add mvm_bomb
team modify mvm_enemies color blue
team modify mvm_bomb color blue
team add mvm_players
team modify mvm_players friendlyFire false

scoreboard players set $currentNode mvm_node 1
scoreboard players set $currentMap mvm_vars 1
scoreboard players set $2 mvm_vars 2
scoreboard players set $maxEnemies mvm_vars 5
scoreboard players set $27 mvm_vars 27
scoreboard players set $100 mvm_vars 100
scoreboard players set $130 mvm_vars 130
scoreboard players set $3 mvm_vars 3

gamerule mobGriefing false