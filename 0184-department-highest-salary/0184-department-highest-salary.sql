/* Write your T-SQL query statement below */
select d.name as 'Department', e.name as 'Employee', salary as 'Salary'
from Employee e, Department d
where e.departmentId = d.id and salary = (
    select max(salary)
    from Employee e1
    where e1.departmentId = d.id
)

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna