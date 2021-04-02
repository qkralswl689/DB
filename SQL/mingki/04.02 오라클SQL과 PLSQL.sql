-- Equi Join 예 3)
-- 내가푼것
select s.name 학생이름, d.dname 학과이름, p.name 교수이름
from student s, professor p , department d
where s.deptno1 = p.deptno and p.deptno = d.deptno;

-- 답
select s.name 학생이름, d.dname 학과이름, p.name 교수이름
from student s, professor p , department d
where s.deptno1 = d.deptno and s.profno = p.profno;