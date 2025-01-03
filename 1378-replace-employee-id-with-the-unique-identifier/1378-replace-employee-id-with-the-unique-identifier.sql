/* Write your PL/SQL query statement below */
select uni.unique_id, em.name
from employees em left join employeeuni uni
on em.id = uni.id;