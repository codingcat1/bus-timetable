#BUS TIMETABLE
------------
####Created by [Catherine Tran] (https://github.com/tranc489) and [Ruben Rhodes] (https://github.com/zoozoobaba)

#####Description:
A Bus Timetable app.  User(operator) should be able to add bus stations(to show where all buses go), bus lines(to track which lines go to which stations).  User(rider) should only be able to view lines and stations and which buses go where and where a line leads to. Additionally, we used this program to test out first attempts at capybara testing and basic authorization.


#####Instructions:
In terminal, clone by:
```console
$ git clone https://github.com/tranc489/bus-timetable.git
```
Install gems by running:
```console
$ bundle install
```
Create databases on current machine by running:
```console
$ rake db:create
$ rake db:migrate db:test:prepare
```
Start rails server by running:
```console
$ rails s
```
Enter `localhost:3000` in browser address bar.

Have fun!



#####Known Bugs/Functionalities not yet created, plus additional Notes:
- Can only add, edit, delete and view stations.  Have not yet created functionality for adding lines.
- Only a user who is an admin can add/edit/delete stations.
- Admin boolean can only be set manually through the local database, which may create problems.





####License:
MIT
