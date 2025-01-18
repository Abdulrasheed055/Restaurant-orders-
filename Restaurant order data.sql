select 
item_name,
 category,
count(order_details_id) as num_purchases
from order_details  as od
left join menu_items as mi
on od.item_id= mi.menu_item_id
group by item_name, category
---order now
order by num_purchases ;