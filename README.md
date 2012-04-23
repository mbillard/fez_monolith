*This project is no longer in development as the project has ended. Feel free to fork for other uses or message me for additional info.*

----

What is Fez Monolith?
====

Fez Monolith is the application that was used to help coordinate the efforts of thousands of users trying to find the sequence for the black monolith puzzle in the Xbox Live Arcade game Fez released on April 13, 2012.

Black Monolith?
====

Ars Technica wrote [an excellent article on the topic](http://arstechnica.com/gaming/news/2012/04/why-it-took-almost-a-week-for-the-world-to-completely-finish-fez.ars). I also wrote [an article about the puzzle and this application](http://www.crossbrowser.net/528/crowdsourced-brute-forcing-how-fez-was-a-coop-game-for-a-couple-of-hours/).

> The main theory for the last puzzle was that players had to stand at a very specific spot in the game and input a sequence of button presses. The standard sequences in the game are 8 inputs long and use up to 7 different buttons. Needless to say, no one wanted to try **2,097,152** different combinations, hence why players tried to make sense of some of the remaining mysteries in the game.

How does it work?
====

When I started developing the app, we already knew that the sequence was only 7 inputs long and most probably didn't require the left and right directional buttons. This reduced the number of probable sequences considerably to a more manageable size of 78,125. Using an an algorithm to generate a De Bruijn sequence (the algorithm can be found in the lib folder and can be used as is to generate any De Bruijn sequence), I created all possible sequences and present them 10 at the time in order to the users. The user can then enter the first sequence completely and then only the last input of each following sequence to test all 10 sequences using only 19 inputs (instead of 100), speeding up the process considerably.

The user then reports back the results, either the right sequence was found or they're wrong.

Related Links
====

* [Ars Technica's article on the puzzle](http://arstechnica.com/gaming/news/2012/04/why-it-took-almost-a-week-for-the-world-to-completely-finish-fez.ars)
* [Kotaku's article](http://kotaku.com/5903095/ridiculously-obscure-black-monolith-in-fez-rallies-gamers-to-a-group-effort)
* [My own blog post](http://www.crossbrowser.net/528/crowdsourced-brute-forcing-how-fez-was-a-coop-game-for-a-couple-of-hours/)
