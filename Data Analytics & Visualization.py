#!/usr/bin/env python
# coding: utf-8

# In[1]:


import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import sqlite3


# In[ ]:


# Connect to the database
conn = sqlite3.connect('logistics_performance.db')

# Load data from SQL tables into pandas DataFrames
shipments_df = pd.read_sql_query("SELECT * FROM shipments", conn)
vendors_df = pd.read_sql_query("SELECT * FROM vendors", conn)
performance_df = pd.read_sql_query("SELECT * FROM performance_metrics", conn)


# In[ ]:


# Calculate the on-time delivery rate by vendor
on_time_delivery = (performance_df
                    .groupby('shipment_id')
                    .on_time_delivery.mean()
                    .reset_index())
on_time_delivery['on_time_delivery_rate'] = on_time_delivery['on_time_delivery'] * 100

# Merge with vendors data to analyze vendor performance
vendor_performance = pd.merge(on_time_delivery, vendors_df, left_on='shipment_id', right_on='vendor_id')
print(vendor_performance[['vendor_name', 'on_time_delivery_rate']])

# Plotting on-time delivery rate by vendor
plt.figure(figsize=(10, 6))
sns.barplot(x='vendor_name', y='on_time_delivery_rate', data=vendor_performance)
plt.title('On-Time Delivery Rate by Vendor')
plt.xlabel('Vendor')
plt.ylabel('On-Time Delivery Rate (%)')
plt.xticks(rotation=45)
plt.show()


# In[ ]:


# Calculate average delivery time and cost efficiency by region
region_performance = (performance_df
                      .groupby('shipment_id')
                      .agg(avg_delivery_time=('delivery_time', 'mean'),
                           avg_cost_efficiency=('cost_efficiency', 'mean'))
                      .reset_index())

# Plotting average delivery time by region
plt.figure(figsize=(10, 6))
sns.barplot(x='region', y='avg_delivery_time', data=region_performance)
plt.title('Average Delivery Time by Region')
plt.xlabel('Region')
plt.ylabel('Average Delivery Time (hours)')
plt.xticks(rotation=45)
plt.show()

