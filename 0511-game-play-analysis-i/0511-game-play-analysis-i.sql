/* Write your T-SQL query statement below */
select player_id, event_date as 'first_login'
from Activity a1
where event_date = (
    select min(event_date)
    from Activity a2
    where a1.player_id = a2.player_id
)

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna