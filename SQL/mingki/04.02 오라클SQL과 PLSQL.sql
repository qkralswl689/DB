-- Equi Join �� 3)
-- ����Ǭ��
select s.name �л��̸�, d.dname �а��̸�, p.name �����̸�
from student s, professor p , department d
where s.deptno1 = p.deptno and p.deptno = d.deptno;

-- ��
select s.name �л��̸�, d.dname �а��̸�, p.name �����̸�
from student s, professor p , department d
where s.deptno1 = d.deptno and s.profno = p.profno;