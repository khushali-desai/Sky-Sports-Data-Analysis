# ⚽ Sky Sports FIFA World Cup Analysis (SQL Project)

This project uses SQL to analyze FIFA World Cup data for Sky Sports to uncover insights about team and player performances throughout the tournament.

## 📌 Key Objectives

- Explore team performance by goals, wins, draws, and losses  
- Analyze player stats like goals, assists, cards, and minutes played  
- Evaluate group-wise performance and tournament trends  
- Use SQL queries to extract insights from real-time match stats  

## 📊 Dataset Overview

- **Team Stats Table** (`group_stage_team_stats`):  
  `team`, `game_date`, `goals_scored`, `goals_against`, `wins`, `draws`, `losses`, `possession`, `points`, `group`, `rank`, etc.

- **Player Stats Table** (`overall_wc_stats`):  
  `team`, `player_name`, `position`, `goals_scored`, `assists`, `minutes`, `yellow_cards`, `red_cards`, `passes_pct`, etc.

## ✅ Skills Applied

- SQL Joins (`JOIN ON`) and Filtering (`WHERE`, `BETWEEN`)  
- Aggregation & Grouping (`GROUP BY`, `ORDER BY`, `SUM`, `AVG`, etc.)  
- Insight extraction, performance comparison, and data filtering  
- Analyzing expected vs actual performance metrics (`xG`, `xGA`, `xGD_per_90`)  
