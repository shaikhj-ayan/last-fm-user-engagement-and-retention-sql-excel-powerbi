## 🎧 Last.fm User Engagement and Retention Analysis

Analyzing user listening behavior, engagement depth, and retention patterns on Last.fm using SQL and Power BI to uncover insights that can improve long-term user retention and platform interaction.


## 📌 Table of Contents

* Overview
* Business Problem
* Context
* Dataset
* Tools & Technologies
* Research Questions
* Key Findings
* Dashboard 
* Author & Contact


## Overview

This project explores how users interact with Last.fm through listening behavior, artist preferences, album engagement, genre trends, and geographic distribution.

While Last.fm continues to collect rich listening data through scrobbling, competition from platforms like Spotify, Apple Music, and YouTube Music has changed how users consume and discover music.

The main objective of this project is to understand:

* What drives high engagement
* Where listening concentration exists
* How user behavior varies across artists, albums, genres, and countries
* What insights can support stronger retention strategies



## Business Problem

**How can Last.fm reverse declining user engagement and improve long-term retention—particularly among new and younger users—in the face of shifting music consumption behaviors and strong competition from integrated streaming platforms?**



## Context 

### Engagement Shift

Last.fm originally thrived on:

* Scrobbling and listening analytics
* Personalized music recommendations
* Community-driven interaction

However, modern streaming platforms now offer built-in analytics, curated playlists, and seamless in-app experiences. Many users still scrobble music but do not actively revisit the platform. This results in passive data generation rather than meaningful engagement.



### Retention Imbalance

* New users show lower early retention.
* Long-term users remain more loyal.
* Younger audiences are underrepresented.
* Engagement depth varies significantly across users.

This suggests that acquisition is not the only problem. Activation and habit formation are key.



## Dataset

The dataset used in this project was collected using the Last.fm API and structured into the following tables:

* **albums_full**
* **artist_top_tracks**
* **chart_tags**
* **geo_artist**
* **geo_tracks**
* **top_tracks**
* **tracks_full**

These tables include detailed information about artists, tracks, albums, playcounts, genre tags and overall chart performance.

After collection, the raw API data was:

* Cleaned to remove inconsistencies and duplicates
* Standardized for column names and formats
* Corrected where misspelled names were identified
* Structured into relational tables for SQL analysis
* Prepared for visualization in Power BI

This structured dataset enabled deeper engagement analysis across artists, tracks, genres, and geographic segments.



## Tools & Technologies

* SQL (aggregation, window functions, cte)
* Power BI
* Excel (data cleaning and formatting)



## Research Questions

The following questions guided the analysis:

1. Which artists have the highest total playcount across all users?
2. Which tracks are played most frequently per user on average?
3. How many unique artists does each user listen to?
4. Which artists generate the highest total playcount across all tracks?
5. What is the average playcount per track on the platform?
6. Is there a relationship between the number of tracks an artist has and their total playcount?
7. Do artists with more tracks tend to generate higher total playcount?
8. Which albums generate the highest total playcount, and how are they ranked in terms of engagement?
9. Which genres (tags) have the highest total playcount?
10. Which countries generate the highest total playcount for artists?
11. What percentage of total platform playcount comes from the top 10 tracks?
12. Which artists’ top tracks contribute the most to their total playcount?



## Key Findings

* A small group of artists contributes a disproportionately large share of total platform playcount.
* Listening behavior is highly concentrated around top-performing tracks.
* A limited percentage of tracks generate a significant portion of total engagement.
* Some artists rely heavily on a few top tracks, while others maintain more balanced engagement across their catalog.
* Track volume alone does not guarantee higher engagement. Quality and listener connection matter more than quantity.

Overall, engagement appears concentrated rather than evenly distributed. This has important implications for retention strategy and content personalization.


## Dashboard (Power BI)

The Power BI dashboard provides a clear overview of listening performance and engagement concentration.

### 🔹 KPI Cards

* **Total Plays**
* **Top Track**
* **Average Plays per Track**

### 🔹 Key Visualizations

* Track Playcount Distribution
* Tracks by Genre
* Album vs Track Plays
* Top Tracks
* Top Tracks vs Artist Average
* Total Plays by Artist
* Track Share % by Artist
* Top Artist by Playcount Contribution

The dashboard focuses on identifying engagement concentration, top-performing artists and tracks, and overall listening patterns across the platform.


## Conclusion

This project demonstrates how structured listening data can uncover meaningful engagement patterns.

The analysis shows that while music activity remains strong, engagement is concentrated among a limited set of artists and tracks. Improving retention will require strengthening personalization, increasing interaction depth, and encouraging broader exploration within the platform.



## Author & Contact

Shaikh Ayan
📧 Email: [shaikhayan1.in@gmail.com](mailto:shaikhayan1.in@gmail.com)