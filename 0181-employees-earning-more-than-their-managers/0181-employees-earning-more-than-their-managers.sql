/* Write your T-SQL query statement below */
select name as 'Employee'
from Employee e1
where salary > (
    select salary
    from Employee e2
    where e1.managerId = e2.id
)

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna