create database skysports;

show databases;

use skysports;
select * from s1;
select * from s2;

select team from s1;

# SQL query to show name of team which has rank 1 from group 7 

select team from s1
where 'group' = 7 and 'rank' = 1;

#for count for team
select count(team) from s1;

select matches_played, team from s1;

# SQL query to show team, percent of wins with respect to matches_played by each team 
#and name the resulting column as wins_percent
select team, 100 *(wins/matches_played) as wins_percent from s1;

#SQL query to show which team has maximum goals_scored and their count 
select team, goals_scored from s1
where goals_scored = (select max(goals_scored) from s1);

#SQL query to show percent of draws with respect to matches_played round of to 2 digits by each team
select team, round(100 *(draws/matches_played),2) as draws_percent from s1;

# SQL query to show which team has minimum goals_scored and their count
select team, goals_scored from s1
where goals_scored = (select min(goals_scored) from s1);

# SQL query to show percent of losses with respect to matches_played by each team 
#in ascending order by losses and name the resulting column as losses_percent
select team, 100 *(losses/matches_played) as losses_percent from s1
order by losses asc;

# SQL query to show the average goal_difference
select avg(goal_difference) from s1; 

# SQL query to show name of the team where points are 0 
select team, points from s1
where points = 0;


# SQL query to show all data where expected_goal_scored is less than exp_goal_conceded
select * from s1
where expected_goal_scored < exp_goal_conceded;

# SQL query to show data where exp_goal_difference is in between -0.5 and 0.5
select * from s1
where exp_goal_difference between -0.5 and 0.5;


# SQL query to show all data in ascending order by exp_goal_difference_per_90
select * from s1
order by  exp_goal_difference_per_90 asc;

# SQL query to show team which has maximum number of players_used
select team,players_used from s2
where players_used = (select max(players_used) from s2);

# SQL query to show each team name and avg_age in ascending order by avg_age
select team, avg_age from s2
order by avg_age asc;

# sql query to show average possession of teams

select team, avg(possession) from s2
group by team;

# SQL query to show team which has played atleast 5 games
select team,games from s2
where games >= 5;


#SQL query to show all data for which minutes is greater than 600
select * from s2
where minutes > 600;


# SQL query to show team, goals, assists in ascending order by goals
select team, goals, assists from s2
order by goals asc;


# SQL query to show team, pens_made, pens_att in descending order by pens_made
select team, pens_made, pens_att from s2
order by pens_made;


# SQL query to show team, cards_yellow, cards_red where cards_red
# is equal to 1 in ascending order by cards_yellow 
select team, cards_yellow,cards_red from s2
where cards_red =1
order by cards_yellow asc;

# SQL query to show team, goals_per90, assists_per90, 
#goals_assists_per90 in descending order by goals_assists_per90 
select team, goals_per90, assists_per90, goals_assists_per90 from s2
order by goals_assists_per90 desc;

#SQL query to show team, shots, shots_on_target, shots_on_target_pct where shots_on_target_pct
# is less than 30 in ascending order by shots_on_target_pct 
select team, shots, shots_on_target, shots_on_target_pct from s2 
where shots_on_target_pct < 30 
order by shots_on_target_pct asc;

# SQL query to show team, shots_per90, shots_on_target_per90 for team Belgium
select team, shots_per90, shots_on_target_per90 from s2
where team = 'belgium';

# SQL query to show team, errors, touches for which errors is 0 and touches is less than 1500 
select team,errors,touches from s2
where touches < 1500 and errors = 0;

#SQL query to show team, fouls which has maximum number of fouls
select team,fouls from s2
where fouls = (select max(fouls) from s2);

# SQL query to show team, offisdes which has offsides less than 10 or greater than 20
select team, offsides from s2
where offsides <10 or offsides > 20;

# SQL query to show number of teams each group has!
select  gp,count(team) 
from s1
group by gp;



# SQL query to show team names group 6 has
select team, gp from s1
where gp= 6;


# SQL query to show Australia belongs to which group 
select team,gp from s1
where team = 'australia';

#SQL query to show group, average wins by each group 
select gp, avg(wins) from s1
group by gp
order by avg(wins);

#SQL query to show group, maximum expected_goal_scored by 
#each group in ascending order by expected_goal_scored
select gp, max(expected_goal_scored) megs from s1
group by gp
order by megs asc;

#SQL query to show group, minimum exp_goal_conceded by each group in descending order by exp_goal_conceded 
select gp, min(exp_goal_conceded) ec from s1
group by gp
order by ec;

# SQL query to show group, average exp_goal_difference_per_90 
#for each group in ascending order by exp_goal_difference_per_90 
select gp, avg(exp_goal_difference_per_90) egdp90 from s1
group by gp
order by egdp90;

#SQL query to show which team has equal number of goals_scored and goals_against 
select team,goals_scored, goals_against from s1
where goals_scored = goals_against;

# SQL query to show which team has maximum players_used
select team,players_used from s2
where players_used = (select max(players_used) from s2);

# SQL query to show team, players_used, avg_age, games,
#minutes where minutes lessthan 500 and greater than 200 
select team, players_used, avg_age, games,minutes from s2
where minutes<500 and minutes>200;


# SQL query to show all data of group_stats in ascending order BY points
select * from s1
order by points asc;

# SQL query to show ALL UNIQUE team in ascending order by team
select distinct(team) from s1
order by team asc;

#  SQL query to show average avg_age of each group and arrange it in descending order by avg_age. 
select s1.gp, avg(s2.avg_age) aa from s2
inner join s1
on s1.team = s2.team
group by s1.gp
order by aa;

# SQL query to show sum of fouls for each group and arrange it in ascending order by fouls.
select s1.gp, sum(s2.fouls) sf from s2
inner join s1
on s1.team = s2.team
group by s1.gp
order by sf;

# SQL query to show total number of games for each group and arrange it in descending order by games. 
select s1.gp, count(s2.games) total_number_games from s2
inner join s1
on s1.team=s2.team
group by s1.gp
order by total_number_games desc;

# SQL query to show total number of players_used for 
#each group and arrange it in ascending order by players_used. 
select s1.gp, count(s2.players_used) total_number_playes from s2
inner join s1
on s1.team=s2.team
group by s1.gp
order by total_number_playes asc;

# SQL query to show total number of offsides for each group and arrange it in ascending order by offsides.
select s1.gp, count(s2.offsides) total_number_offsides from s2
inner join s1
on s1.team=s2.team
group by s1.gp
order by total_number_offsides asc;


# SQL query to show average passes_pct for each group and arrange it in descending order by passes_pct.
select s1.gp, avg(s2.passes_pct) app from s2
inner join s1
on s1.team = s2.team
group by s1.gp
order by app desc;

#SQL query to show average goals_per90 for each group and arrange it in ascending order by goals_per90.
select s1.gp, avg(s2.goals_per90) agp90 from s2
inner join s1
on s1.team = s2.team
group by s1.gp
order by agp90 asc;








