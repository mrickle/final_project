# final_project
## Selected topic and reasoning
We chose the topic of football win totals based on previous season hisotrical data. We chose this to see if we could use multiple linear regression analysis that is close to the predicted win O/U win totals presented by Vegas casinos before the start of the regular NFL season.
## Source
We will be collecting historical team data as well as betting data from the previous season and uploading into an excel file and creating SQL database tables. in these tables will be based on the previous season win totals, headcoach return, total offensive ranking, total defensive ranking, Team QBR rating, OC remains, and DC remains
## Questions we hope to answer
We hope to answer the question of what goes into the over/under totals that are given to teams. We want to know what the most important factor on if a team can be good or if a bad over under total can spark a team to a better record then was projected. and most importantly do these metrics lead to a team being over the projected total.
## ETL
After completing the initial phase of extracting and collecting NFL data we realized the need to increase the size of our dataset. 
We increased the dataset by increasing the number of teams from 16 to all 32 teams of the NFL. 
The dataset was also increased by expanding the data to include 3 years (2021, 2020, & 2019) instead of 1 year.
Our original 6 tables were joined in SQL and connected to our Jupyter notebook
## Machine Learning
We divided our dataset into a 30/70 split within our linear regression model. 
Features:
Team Defensive Ranking (2019 -2021)
Team Offensive Ranking (2019 -2021)
Quarterback Rating (2019 -2021)
Head Coach Return (2019 -2021)

Based on our linear regression model output we were able to very accurately predict the upcoming seasonal win totals using the selected features. 

For Example: NFC South

Carolina(4) had a projected win total of 4.87. Vegas O/U is 5.5. Very little changes to team.

Atlanta (1) predicted is 5.97 and Vegas O/U is 5 only changing QB

New Orleans(22) was 11.3, over under in Vegas is 7.5 but they had a change in coach and QB. 

Tampa Bay(29) predicted 10.16, 11.5 from Vegas with a Head Coach change.
