execute store result score #facing cppValue run data get entity @s Rotation[0]
scoreboard players add #facing cppValue 225
execute if score #facing cppValue matches ..-1 run scoreboard players add #facing cppValue 360
execute if score #facing cppValue matches 360.. run scoreboard players remove #facing cppValue 360
scoreboard players operation #facing cppValue /= #90 cppValue

execute if score #facing cppValue matches 0 run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Fire:32767s,Tags:["cpp_blocks","cpp_need_fire"],Rotation:[0.0f,0.0f]}
execute if score #facing cppValue matches 1 run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Fire:32767s,Tags:["cpp_blocks","cpp_need_fire"],Rotation:[90.0f,0.0f]}
execute if score #facing cppValue matches 2 run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Fire:32767s,Tags:["cpp_blocks","cpp_need_fire"],Rotation:[180.0f,0.0f]}
execute if score #facing cppValue matches 3 run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Fire:32767s,Tags:["cpp_blocks","cpp_need_fire"],Rotation:[270.0f,0.0f]}
execute as @e[type=armor_stand,tag=cpp_blocks,distance=..0.5,limit=1] run function cpp:blocks/petrified_oak_slab_tag
