SELECT m.pizza_name,
       pi.name
FROM menu m
         JOIN pizzeria pi ON m.pizzeria_id = pi.id;

SET ENABLE_SEQSCAN TO OFF;

EXPLAIN ANALYZE
SELECT m.pizza_name,p.name FROM menu m JOIN pizzeria p ON m.pizzeria_id = p.id; 