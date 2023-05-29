CREATE INDEX idx_menu_unique ON menu USING btree (pizzeria_id, pizza_name);

SET ENABLE_SEQSCAN TO OFF;

EXPLAIN ANALYZE
SELECT *
FROM menu
WHERE menu.pizzeria_id = 2
  AND menu.pizza_name = 'cheese pizza';