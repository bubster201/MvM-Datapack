#Center row
tag @s add mvm_fired

function mvm:classes/spy/knife_tracer
clear @s iron_sword{mvm_slot3:1b,mvm_weapon:1b}
effect clear @s invisibility

scoreboard players operation @s mvm_reload3 = @s mvm_reloadSpeed3
tag @s remove mvm_fired