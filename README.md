# README
Ruby version 3.4.1
rails version: 8.0.1

commands to run the code:

    git clone https://github.com/n8terz/pestTRA.git
    cd pestTRA
    bundle install
    rails db:create db:migrate
    rake doall
    rails server
    go to http://localhost:3000


Brief description:
    Designs:
        For my design decisions I just tried to complete steps one at a time learning how to use 
        ruby on rails. I started with creating the database migrate files, then updated my routes to 
        make my one schedule page my root page. I got my rake file to import all the data from the CSVs
        into my db. Then worked on creating my grid and getting all the work orders to fill the corresponding 
        locations. Lastly I got the available minutes to work after getting everything else working which was 
        one of my most struggling topics.

    Problems faced:
        Struggled to my index.html.erb work using new ruby on rails syntax

        Within the index.html.erb I need to get the available minutes in between each time slot

        Overall the biggest struggle for me was getting the available minutes in between the work order
        with all the various different cases that needed to get accounted for that I didn't initially account for 

    Possible Future Improvements
        Could modify the current code to work for multiple days. Also could add it so users can book themselves 
        some time slots

