#Center row
tag @s add mvm_fired

function mvm:classes/scout/fan_o_war_tracer
clear @s netherite_axe{mvm_slot3:1b,mvm_weapon:1b}

scoreboard players operation @s mvm_reload3 = @s mvm_reloadSpeed3
tag @s remove mvm_fired