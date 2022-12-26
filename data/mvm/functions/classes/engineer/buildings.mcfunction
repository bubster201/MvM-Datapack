execute as @s[name="mvm_SentryGun"] run function mvm:classes/engineer/sentry
execute as @s[name="mvm_Dispenser"] run function mvm:classes/engineer/dispenser
execute as @s[scores={mvm_health=-10000..0}] at @s run function mvm:classes/engineer/building_destroy_self