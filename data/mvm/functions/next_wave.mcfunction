scoreboard players set $waveActive mvm_vars 0
execute as @e[type=armor_stand,name="mvm_WaveMarker"] at @s if block ~ ~ ~1 minecraft:air run tp @e[type=armor_stand,name="mvm_Reader"] ~ ~ ~1
execute as @e[type=armor_stand,name="mvm_WaveMarker"] at @s if block ~ ~ ~1 minecraft:air run tp @s ~ ~ ~1
function mvm:wave_reset