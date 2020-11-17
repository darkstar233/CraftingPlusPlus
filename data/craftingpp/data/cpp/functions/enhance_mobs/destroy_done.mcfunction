execute if block ~1 ~ ~ #cpp:zombie_can_destroy run setblock ~1 ~ ~ air destroy
execute if block ~-1 ~ ~ #cpp:zombie_can_destroy run setblock ~-1 ~ ~ air destroy
execute if block ~ ~ ~1 #cpp:zombie_can_destroy run setblock ~ ~ ~1 air destroy
execute if block ~ ~ ~-1 #cpp:zombie_can_destroy run setblock ~ ~ ~-1 air destroy
scoreboard players reset @s cppTick
