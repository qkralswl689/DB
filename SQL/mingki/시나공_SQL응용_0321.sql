--  ��Ű�� ����
-- ���������� ����� ID�� ȫ�浿 �� ��Ű�� �����븦 �����ϴ� SQL��
CREATE SCHEMA ������ AUTHORIZATION ȫ�浿;

-- ������ ����
-- ���� �� �� OR �� �Ͱ��� ������ 1���� ���ڷ� ǥ���Ǵ� ������ SEX�� �����ϴ� SQL
CREATE DOMAIN SEX CHAR(1) 
DEFUALT'��' 
CONSTRAINT ���� CHECK(VALUE IN('��','��')):

CREATE UNIQUE INDEX ����ȣ ON ��(����ȣ DESC);