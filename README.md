# Rock, Paper, Scissors Weekend Challenge


## To Play

1. Please navigate to your chosen directory in your Terminal and insert the following:

- git clone https://github.com/marudine/rps-challenge.git

This will download the necessary files to your machine.

2. type 'cd rps-challenge'

3. Type 'bundle install' to download the external libraries (gems) you will need to run this application.

4. Type 'rspec --init' to set up your test components.

5. Type 'rspec' in order to run the unit and feature tests.

6. Type 'rackup' in order to start the server. The output will tell you which port to use for the next step.

7. In your browser, type 'localhost: ' followed by whatever port number the server has specified.

8. Play!


## Styling

* I decided to move the Scissors button to the middle of the three even though it doesn't read as expected (Rock, Scissors, Paper?). I did this because being the longest word it stuck out at the end and was graphically jarring. At this eye-candy stage in the game I felt the user would notice the asymmetry before the odd word order.



## For a more advanced iteration I would...

  * Implement a best-of-three game as per the accepted game rules, perhaps using an array to store scores temporarily within the Game class.

  * Make the game a touch more intuitive. After the initial play, when clicking the **Try Again** button, the user is taken back to the same greeting page as before as if visiting the site for the first time. This needs to be changed.
