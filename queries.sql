#question 1
select count(title) as "Number of Employees", title as "Title"
from titles t
inner join employees e on t.emp_no = e.emp_no
where e.birth_date  > '1965-01-01'
group by title;

#question 2
select avg(salary) as "Average Salary", title as "Title"
from salaries s
inner join titles t on t.emp_no = s.emp_no
group by title; 

#question 3
select sum(salary) as "Salary Paid", dept_name as "Department"
from salaries s
inner join dept_emp de on s.emp_no = de.emp_no
inner join departments d on de.dept_no = d.dept_no
where de.from_date >= '1990.1.1' and de.to_date < '1992.1.1' and dept_name = "Marketing";