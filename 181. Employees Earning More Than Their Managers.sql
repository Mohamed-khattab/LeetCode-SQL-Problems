/* Write your T-SQL query statement below */


select em.name  As [Employee]   from
    Employee em, Employee mg
    where em.managerId = mg.id
    and em.salary > mg.salary
