-- 1. Which artists have the highest total playcount across all users?

SELECT 
	artist,
	SUM(playcount) AS total_artist_plays
FROM last_fm.albums_full
GROUP BY artist;


-- 2. Which tracks are played most frequently per user on average?

SELECT 
	track,
	artist,
	playcount
FROM last_fm.tracks_full
ORDER BY playcount DESC
LIMIT 10;


-- 3. How many unique artists does each user listen to?

SELECT 
	artist,
	COUNT(*) AS total_tracks
FROM last_fm.tracks_full
GROUP BY artist
ORDER BY total_tracks DESC
LIMIT 10;


-- 4. Which artists generate the highest total playcount across all tracks?

SELECT 
	artist,
	SUM(playcount) AS total_plays
FROM last_fm.tracks_full
GROUP BY artist
ORDER BY total_plays DESC
LIMIT 10;


-- 5. What is the average playcount per track on the platform?

SELECT 
	AVG(playcount) AS avg_track_playcount
FROM last_fm.tracks_full;


-- 6. Is there a relationship between number of tracks an artist 
-- has and their total playcount?

SELECT 
	artist,
	COUNT(*) AS total_tracks,
	SUM(playcount) AS total_plays
FROM last_fm.tracks_full
GROUP BY artist
ORDER BY total_plays DESC;

-- 7. Do artists with more tracks tend to generate higher total playcount?

SELECT 
    artist,
    COUNT(*) AS total_tracks,
    SUM(playcount) AS total_plays,
    RANK() OVER (ORDER BY SUM(playcount) DESC) AS play_rank
FROM last_fm.tracks_full
GROUP BY artist
ORDER BY play_rank
LIMIT 20;


-- 8. Which albums generate the highest total playcount, 
-- and how are they ranked in terms of engagement?

SELECT 
	artist,
	album,
	playcount,
	RANK() OVER (ORDER BY playcount DESC) AS album_rank
FROM last_fm.albums_full
ORDER BY album_rank
LIMIT 15;


-- 9. Which genres (tags) have the highest total playcount?

SELECT 
	taggings,
	reach
FROM last_fm.chart_tags
ORDER BY reach DESC
LIMIT 15;


-- 10. which countries generate the highest total playcount for artists?

SELECT 
	name,
	SUM(listeners) AS total_plays
FROM last_fm.geo_artists
GROUP BY name
ORDER BY total_plays DESC;


-- 11. What percentage of total platform playcount comes from the top 10 tracks?

SELECT 
	track,
	artist,
	playcount,
	ROUND(playcount * 100.0 / SUM(playcount) 
    OVER (),2) AS play_share_pct
FROM last_fm.tracks_full
ORDER BY playcount DESC
LIMIT 10;

-- 12. Which artists’ top tracks contribute the most to their total playcount?

SELECT 
	artist,
	track,
	playcount,
	ROUND(playcount * 100.0 / SUM(playcount) 
OVER (PARTITION BY artist),2) AS track_share_pct
FROM last_fm.artist_top_tracks
ORDER BY artist, track_share_pct DESC;












