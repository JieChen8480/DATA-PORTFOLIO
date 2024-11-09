#!/usr/bin/env python
# coding: utf-8

# In[2]:


from scipy.stats import chi2_contingency

# Identify delays by analyzing 'on_time_delivery'
delays = performance_df[performance_df['on_time_delivery'] == 0]

# Perform a chi-square test to determine if delays are associated with specific regions
delay_region_table = pd.crosstab(delays['region'], delays['on_time_delivery'])
chi2, p, dof, expected = chi2_contingency(delay_region_table)

# Output the result
print("Chi-Square Test Results")
print(f"Chi2 Statistic: {chi2}")
print(f"P-Value: {p}")

if p < 0.05:
    print("Conclusion: There is a significant association between delays and region.")
else:
    print("Conclusion: No significant association between delays and region.")

