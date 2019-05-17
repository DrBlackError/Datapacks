tellraw @s [{"text":"-----------------------------------------------------","color":"aqua"}]

tellraw @s [{"text":"                     Timber Datapack by Moggla                      "}]

tellraw @s [{"text":"-----------------------------------------------------","color":"aqua"}]

tellraw @s [{"text":"The Timber Datapack allows you to chop down a tree just by breaking one log."}]

tellraw @s [{"text":"Sneaking while breaking will not chop the tree."}]

tellraw @s [{"text":"Destroy Leaves "},{"text":"[On]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:destroy_leaves_on"}},{"text":" "},{"text":"[Off]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:destroy_leaves_off"}}]

tellraw @s [{"text":"-----------------------------------------------------","color":"aqua"}]

gamerule sendCommandFeedback false