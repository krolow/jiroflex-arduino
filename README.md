jiroflex-arduino
================

Arduino client for Jiroflex

This project is a client of Jiroflex, Jiroflex is a server and client notification of Jira.

The backend team of company that I currently work has 7 members and we use one whiteboard for our kanban, and in this whiteboard, each member of the team has one post-it color and one avatar, so the man idea behind this project is add leds in each avatar of user in the whiteboard, to make one control of who is with a task in progress status in Jira and who is not... as kind of alert system.

Ruby will be used as the client for the jiroflex REST server and will talk with the arduino over serial port.

Each guy of team will correspond to a led, when the status is in progress the led will be on, otherwise the led will blink as crazy is possible... maybe some buzzer will be added too but let's see if it will not disturbe the other guys of the office...

We have the idea to add more features in the future, such as a LCD display will the currents tasks in progress, etc...