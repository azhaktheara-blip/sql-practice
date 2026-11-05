

SELECT 
	season,
    date,
	home_goal,
	away_goal
FROM matches_italy
WHERE 
	-- Find games where home_goal is more than away_goal
	___ ___ hometeam_id = 9857 ___ home_goal ___ away_goal ___ 'Bologna Win'
		-- Find games where away_goal is more than home_goal
        ___ awayteam_id = 9857 ___ away_goal ___ home_goal ___ 'Bologna Win' 
        -- Exclude games not won by Bologna
		___ IS NOT ___;
