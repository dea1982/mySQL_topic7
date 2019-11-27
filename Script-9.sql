select * from orders

INSERT INTO orders(user_id) VALUES
  ('1'),
  ('2'),
  ('1'),
  ('2'),
  ('3');

/*
��������� ������ ������������� users, ������� ����������� ���� �� ���� ����� orders � �������� ��������.
 */

select name 
from users
where id in (select user_id from orders);

/*
�������� ������ ������� products � �������� catalogs, ������� ������������� ������.
 */
SELECT products.name, products.catalog_id, catalogs.id, catalogs.name 
FROM products JOIN catalogs on catalogs.id = products.catalog_id;