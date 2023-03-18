/* Write your T-SQL query statement below */

select Customer.name from Customer
    where referee_id != 2 or referee_id is null
