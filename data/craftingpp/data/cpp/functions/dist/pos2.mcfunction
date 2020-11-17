clone ~ ~ ~ ~ ~ ~ ~ 255 ~
execute store result score #t cppValue run data get block ~ 255 ~ Items
loot insert ~ 255 ~ loot cpp:character/01
execute store result score #s cppValue run data get block ~ 255 ~ Items
setblock ~ 255 ~ air
execute if score #t cppValue = #s cppValue run tag @s add cpp_container_full
execute as @s[tag=!cpp_container_full] run function cpp:dist/dist
execute as @s[tag=!cpp_dist_success,tag=cpp_container_full] if block ~ ~ ~ #cpp:chests[type=right,facing=east] positioned ~ ~ ~-1 run function cpp:dist/double
execute as @s[tag=!cpp_dist_success,tag=cpp_container_full] if block ~ ~ ~ #cpp:chests[type=right,facing=west] positioned ~ ~ ~1 run function cpp:dist/double
execute as @s[tag=!cpp_dist_success,tag=cpp_container_full] if block ~ ~ ~ #cpp:chests[type=right,facing=south] positioned ~1 ~ ~ run function cpp:dist/double
execute as @s[tag=!cpp_dist_success,tag=cpp_container_full] if block ~ ~ ~ #cpp:chests[type=right,facing=north] positioned ~-1 ~ ~ run function cpp:dist/double
tag @s remove cpp_container_full