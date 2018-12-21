# Awake
![awake homepage](https://i.ibb.co/4pg8Qps/awake.png)
Awake is a full-stack web app that enables a user to cultivate deeper self-awareness through logged journal entries, a meditation timer, affirmative support and visually aggregated data to monitor and identify potential positive and negative triggers — in the hopes to develop an enriching lifestyle in alignment with the user's goals and values.

## Database 
I used `Ruby 2.5.1` along with bcrypt, jwt, active model serializers and rack cors gems to develop version one of the *Awake* API. The database models include two one-to-many relationships between the user and logs, and the user and timed logs — allowing the user to record their journal entries and meditation times.

The backend also hosts a proxy API to allow each user to fetch their personalized daily horoscope. Serializers were included to create nested JSON data for the one-to-many relationships.

## Front-End
Built using React and JavaScript, I implemented Redux and MaterialUI to centralize state and support stronger JSS (and therefore UI/UX) features. To play around with the demo, click [here](http://awake.us-east-2.elasticbeanstalk.com/).

## Upcoming
I'd like to develop a more minfully-inspired quotes API for the users dashboard as well as add more meditation timer features including: multiple starting and ending bell options, alpha wave frequencies, and potentially abient background sound.

*If you have any suggestions or stumble upon any bugs in the process of playing, please create an issue. Much appreciated!*
