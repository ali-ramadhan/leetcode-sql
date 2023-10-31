select
    e.name,
    b.bonus
from
    employee as e
left join
    bonus as b
    on e.empid = b.empid
having
    b.bonus < 1000 or
    b.bonus is null;
