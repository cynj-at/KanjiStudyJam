## KanjiStudyJam
This project started in my year in Japan, where I learned the Kanji with Heisig's method. At the moment the code is pretty chaotic because I had to finish the project for a performance quite quickly. But I will try to make it more readable from time to time.

### Small explanation and what you have to do:

1. You don't need to buy Max/Msp, but you have to download it, otherwise there won't be any sound output (https://cycling74.com/downloads).
2. In Max, please add the Folder "{Project-Folder}/Max/Samples/Selection" to your search path in Max/Msp -> options -> File Preferences -> Add Path (little "+" on bottom bar). If you don't, the main beat will be missing.
3. If you don't want the game to automatically start, please remove the line "./KanjiStudyJam" in the build.sh and type "./KanjiStudyJam" yourself after compiling.
4. If not, navigate to the project folder in your terminal and just type "./build.sh" -> as long as you have a c/c++ compiler ready, it should compile and start.
5. Except for Max/Msp there won't be any dependencies for the reason, that i won't update it permanently and so can assure, that all libraries work. If you still want to use later version of the dependencies, please feel free to change the "CMakeFiles.txt".
6. Before you start, please open the .maxpat files in the Max directory. Otherwise the osc-data won't be send.

The game itself is pretty self-explanatory. If there should be questions, just send me a message: laani@tutanota.com

Small cheat if you don't know the Kanji (yet):
if you just type "#" instead of the keyword, the answer will be correct, but you will be a cheater!:-)

And now: Enjoy minimal music while learning Kanji: 頑張って！