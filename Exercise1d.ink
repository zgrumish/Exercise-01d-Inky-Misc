/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Morning, 1 Noon, 2 Night
VAR tide = -1 // 0 Flood tide, 1 High tide, 2 Low tide
-> beach

== beach ==
You are sitting on the beach. 

It is {advance_time() }
It is {tide_change() }

+ [Walk to the water] -> seashore
+ [Stroll down the beach] -> beach2
+ [Grab pale of sand] -> sand_pale
+ [Call it a day] -> end_day
-> DONE

== beach2 ==
This is further down the beach.

It is {tide_change() }
It is {advance_time() }
* { time==2 }{ tide ==2 }[Pick up some seashells] -> shells
+ [Go to the water] -> seashore
+ [Stroll back up the beach] -> beach

== seashore ==
You're at the water the waves crash infront of you.

It is {tide_change() }
It is {advance_time() }
* [Step into the water] -> water
+ [Stroll back up the beach] -> beach
+ [Stroll down the beach] -> beach2

== sand_pale ==
You're now holding a hefty pale of sand.

It is {tide_change() }
It is {advance_time() }
* [Build sandcastle] -> castle
+ [Go to the water] -> seashore
+ [Stroll down the beach] -> beach2

== end_day ==
You pack up your towel pale of sand and make your way towards the parking lot.

It is {tide_change() }
It is {advance_time() }
* [Look at the sea once more] -> look

== look == 
You look at the water once more remembering the fun memories you've shared at tis beach over the years. You close your eyes and hear the sounds of the waves crashing and inhale that salty air to take it all in. Then you leave.
->END

== castle ==
You push the pale into the sand and twist it. You lift and reveal a little dome now in the sand. It's kind of a sand castle. You tried that's all that matters.
-> beach

== water ==
You feel the water lapping at your legs its a little chilly at first but soothing.
-> seashore

== shells ==
You pick up the shells.
-> beach2

== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    
    
    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    
    }
    
    
        
    ~ return time
    
    == function tide_change ==

    ~ tide = tide + 1
    
    {
        - tide > 2:
            ~ tide = 0
    }    
    
    {    
        - tide == 0:
            ~ return "Flood tide"
        
        - tide == 1:
            ~ return "High tide"
        
        - tide == 2:
            ~ return "Low tide"
    
    }
    
    
        
    ~ return tide
    
    
    

    
