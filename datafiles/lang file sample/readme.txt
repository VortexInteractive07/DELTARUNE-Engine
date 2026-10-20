you can edit the lang file with any text editing program

use https://jsoneditoronline.org if you need help with getting the syntax right. usually clicking "auto-repair" fixes your issues. also only worry about the left part of the screen

if non-english characters aren't showing right in-game, try converting the lang file to utf-8 even if it says that it's already in it. you can find how to do it for your specific text editor of choice online

recommended string naming scheme for dialogue under "room" (replace all caps with a logical - or illogical lmao - name):
- intr_OBJECT for things you interact with
- npc_CHARACTER for npc dialogue
- csn_CUTSCENE for dialogue that plays during cutscenes
gaster variants:
- EXAMINE_
- BEING_
- EVENT_

make sure there are no duplicate string names per room and that you don't shy away from adding extra stuff to the string names to make what each one is for clearer such as if you're already writing dialogue for different routes (which won't be shown until around pt30)
ex: "npc_berdly" vs. "npc_berdly_weirdroute"

i included the en.lang for my fangame (dessappearance) if you'd like to look at that for whatever reason