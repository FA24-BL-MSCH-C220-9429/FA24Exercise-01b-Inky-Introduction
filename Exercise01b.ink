/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Basic Choices
 - Knot structure
 - Recurring choices
 - Basic Choices*
 - Knot structure*
 - Recurring choices*
 - Conditionals in descriptions
 - Conditionals in choices
 

@@ -14,4 +14,68 @@ This exercise will demonstrate the following in the example video:
 - Add at least one more conditional
*/

This is our basic story example! Goodbye!
-> cave_mouth

== cave_mouth ==
You are at the entrance to a cave. {not torch_pickup:There is a torch on the floor.} You see some old weapons too.{not weapon_pickup: You notice a sword among them.} The cave extends to the east and west.
+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
* [Pick up the torch] -> torch_pickup
* [Pick up an old but usable sword] -> weapon_pickup


== east_tunnel ==
You are in the east tunnel. It is very dark and you can't see anything.
* {torch_pickup} [Light Torch] -> east_tunnel_lit
+ [Go Back] -> cave_mouth 
-> END

== west_tunnel ==
You are in the west tunnel. It is very dark and you can't see anything but two glowing red eyes
+ [Go Back] -> cave_mouth 
* {torch_pickup} [Light Torch] -> west_tunnel_lit
-> END

=== torch_pickup ===
You now have a torch. May it light your way.
*[Go Back] -> cave_mouth
-> END

== weapon_pickup ==
You now have a weapon to defend yourself with.
*[Go Back] -> cave_mouth

== east_tunnel_lit ==
The light of your torch glints off of the thousand of coins in the room.
-> END

== west_tunnel_lit ==
The light of your torch glints off of the narrow in the room. A towering statue with glowing eyes infront of you. It speaks to you: "Who dares enter my masters property!"
*[You run back to the entrance] -> cave_mouth
*[speak to the statue] -> conservation_with_statue
-> END

== conservation_with_statue ==
The statue lets you speak, but warns not to lie
*[You lie] -> statue_attacks
*[You tell the truth] -> continue_talking
-> END

== statue_attacks==
The statue strikes at you
+ [dodge and strike] -> attack_statue
-> END

== attack_statue ==
It does some damage and you run out
*[Go Back] -> cave_mouth
-> END
== continue_talking ==
You tell the statue on how you entered a cave that let you here. The statue seems surpised as you speak. He tells you that there was once a large castle and that this was his master's dungeon where he stands guard
*[you continue to speak] -> continued_talking
-> END

== continued_talking ==
You explain that centuries have passed and that his master is likely long died. The statue looks sad, but accepts it. He tell you to go back to the entrance and take the east entrance there you will find his master's treasue. You nod, thank him.
*[Go Back] -> cave_mouth
-> END
