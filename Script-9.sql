select * from orders

INSERT INTO orders(user_id) VALUES
  ('1'),
  ('2'),
  ('1'),
  ('2'),
  ('3');

/*
Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.
 */

select name 
from users
where id in (select user_id from orders);

/*
Выведите список товаров products и разделов catalogs, который соответствует товару.
 */
SELECT products.name, products.catalog_id, catalogs.id, catalogs.name 
FROM products JOIN catalogs on catalogs.id = products.catalog_id;