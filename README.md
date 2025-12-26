# space panda
### a game for j.ai and hack club's giftbox!!
--------
### _what is this?_
this is a simple game/experience where you're a panda (j.ai's OC!) and you find
notes/messages in the ship, while exploring and listening to relaxing ambient sounds and music.

### _what does it contain?_
it has 4 main scenes:
- **start screen**: the very first thing you see! here, you can change settings, play the
game or quit.
- **game**: the actual game!! here, you can explore, find notes, jump, and play around with
enemies and other mechanics.
- **note interface**: when you open a note, this will show up! it is customized, meaning each
note has a unique message. try to find all of them!!!
- **settings interface**: where you'll change the volume for your music and sfx!!

### _why?_
i thought it was appropriate. i didn't want a too ambitious project, and since it was 
a 2-3min experience, a relaxing game like this one was perfect. i also wanted to experiment
with godot, since this is my first actual project using it. finally, the design choices
(sprites, setting, notes, etc.) were decided based on what my giftbox recipient (j.ai) 
wanted/prefered/what i thought they would prefer!

### _how it works:_
im not quite sure what to explain here, since it works like any other godot game, but here
is a quick rundown:
- start screen buttons detect when pressed; start button changes scene to the game scene,
settings button makes the settings interface visible and quit the button... quits the game.
- game allows the player to move and jump with "lower" gravity. 
- note.gd makes it so that every note can have a custom Message, 
and the player can open it (make it visible) with E.
- bubble enemies emit a small knockback when player is in contact with them
- game plays sfx when touching the floor and walking (footsteps), when opening a note (paper), when
touching the bubbles (boing) and when pressing main buttons (select).
(_ohhh that was long_)

### _challenges and learning opportunities:_
-**i had to digest a LOT of content and "research"**. since this was my first godot game,
there were a lot of things i didn't know how to do, so tutorials, godot guides, and forums
were my best friends through this.
- **art**. simply art. im not an artist, so drawing sprites and keeping a consistent color
palette wasn't easy, EVEN if i didn't make the tileset or background - just the buttons,
font, logo, and character by themselves were hard enough.

----
_thank you!! to tongyu for #giftbox, to my hc fellas for motivation, and to all the
godot youtubers for making my life easier!! suggestions and feedback are highly appreciated!!!
again, this is my first godot ship, i hope you enjoy it <3_
