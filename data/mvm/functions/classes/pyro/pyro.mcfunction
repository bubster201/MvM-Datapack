execute as @s[scores={mvm_useCarrotStick=1..,mvm_ammo1=1..},nbt={SelectedItem:{tag:{slot1:1b}}}] at @s positioned ~ ~1.5 ~ run function mvm:classes/pyro/pyro_fire1

execute as @e[type=marker,name="mvm_FireParticle"] at @s run function mvm:classes/pyro/fire_particle