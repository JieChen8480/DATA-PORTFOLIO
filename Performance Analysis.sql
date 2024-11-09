-- Calculate on-time delivery rate by vendor
SELECT v.vendor_name, 
       COUNT(pm.on_time_delivery) AS total_deliveries,
       SUM(CASE WHEN pm.on_time_delivery = True THEN 1 ELSE 0 END) AS on_time_deliveries,
       (SUM(CASE WHEN pm.on_time_delivery = False THEN 1 ELSE 0 END) / COUNT(pm.on_time_delivery)) * 100 AS on_time_delivery_rate
FROM performance_metrics pm
JOIN shipments s ON pm.shipment_id = s.shipment_id
JOIN vendors v ON s.vendor_id = v.vendor_id
GROUP BY v.vendor_name;

-- Calculate average delivery time and cost efficiency by region
SELECT s.region,
       AVG(pm.delivery_time) AS avg_delivery_time,
       AVG(pm.cost_efficiency) AS avg_cost_efficiency
FROM performance_metrics pm
JOIN shipments s ON pm.shipment_id = s.shipment_id
GROUP BY s.region;