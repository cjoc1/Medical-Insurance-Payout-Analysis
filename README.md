# Project Background

ACME Health Insurance, established in 2013, is a commercial provider offering a variety of health plans to individuals and families. The company operates on a fee-for-service model, paying healthcare providers a set fee for each service rendered to policyholders.

This project analyzes data on beneficiaries currently enrolled in the insurance plan, with features indicating patient characteristics and total medical expenses charged for the year. The goal is to thoroughly analyze and synthesize this data to uncover actionable insights that improve ACME Health Insurance’s operations.

Insights and recommendations are provided on the following key areas:

- **Category 1:** Demographic factors: Exploring how demographic factors (age, sex, and region) influence the total medical expenses charged to the insurance plan.
- **Category 2:** Lifestyle Factors: Analyzing the impact of lifestyle factors, such as BMI and smoking status on total medical expenses charged to the plan for the calendar year.
- **Category 3:** Familial status: An analysis examining how the number of dependents (children) covered under the insurance plan affects an individual's total medical expenses.
  

Targed SQL queries regarding various business questions can be found here [[link]](https://github.com/cjoc1/Medical-Insurance-Payout-Analysis/blob/main/insurance.sql).

An interactive Tableau dashboard used to report and explore sales trends can be found here [[link]](https://public.tableau.com/views/ACMEHealthInsuranceAnalysis/Sheet32?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link).



# Data Structure

The companies main database structure as seen below consists of a table with 6 variables: age, sex, bmi, children, smoker and region.

![image](https://github.com/user-attachments/assets/a46771f0-7849-4f42-ad71-eec3c0619cef)





# Executive Summary

### Overview of Findings

Explain the overarching findings, trends, and themes in 2-3 sentences here. This section should address the question: "If a stakeholder were to take away 3 main insights from your project, what are the most important things they should know?" You can put yourself in the shoes of a specific stakeholder - for example, a marketing manager or finance director - to think creatively about this section.
Overall, for year 2013 ACME Health Insurance revenue was $17,755,825 and the average payout was $13270. Below is the overview page from the Tableau dashboard and more examples are included throughout the report. The entire interactive dashboard can be downloaded here [[link]](https://github.com/cjoc1/Medical-Insurance-Payout-Analysis/blob/main/ACME%20Health%20Insurance%20Analysis.twbx.).

![image](https://github.com/user-attachments/assets/5f3f2a1e-2bf0-4160-9ee9-03178828846a)





# Insights Deep Dive
### Category 1:Demographic Factors (age, sex, region)

* **Main insight 1.** Older age groups have significantly higher expenses: The average charges for the 56+ age group are approximately 20% to 30% higher than those for the 18-25 age group, indicating a substantial increase in healthcare costs with age.
  
* **Main insight 2.** Males generally have 10% to 15% higher average expenses than females: Across most age groups and regions, males tend to have higher insurance charges, suggesting a consistent gender gap in healthcare costs.
  
* **Main insight 3.** Northeast and Southeast regions have expenses 5% to 10% higher than Northwest and Southwest: These regions tend to have higher average charges, indicating a regional disparity in healthcare costs. Southwest region has expenses approximately 5% lower than other regions: This region consistently shows lower average charges, suggesting a more cost-effective healthcare environment.
  
* **Main insight 4.** Age and gender have a more significant impact on expenses than region: While regional variations exist, the combined effect of age and gender on expenses is typically 2-3 times greater than the impact of region, emphasizing the importance of individual factors in determining insurance costs.

![image](https://github.com/user-attachments/assets/8466a5c3-3e99-433f-83e3-523e7032e240)






### Category 2:Lifestyle Factors: BMI and Smoking Status

* **Main insight 1.** Smokers have significantly higher expenses: Smokers face insurance charges that are approximately 3.78 times higher than those for non-smokers. This highlights the substantial impact of smoking on healthcare costs.
  
* **Main insight 2.** Obesity is linked to higher expenses: Individuals with obesity have insurance charges that are 48% higher than those with a normal BMI. This suggests a strong correlation between weight and healthcare costs.
Underweight individuals have lower expenses: Compared to the normal BMI group, individuals who are underweight have 5% lower insurance charges.
  
* **Main insight 3.** Smokers have a much higher average expense: The highest average charge is associated with smokers, while the lowest is for underweight individuals.
  
* **Main insight 4.** Smoking has a more significant impact on expenses: While both smoking and BMI influence costs, the effect of smoking is substantially greater. This suggests that smoking is a more potent predictor of healthcare expenses compared to BMI.

![image](https://github.com/user-attachments/assets/11b20e06-b448-4828-9a32-0cbe584278ea)


### Category 3:Familial status: Children or No Children

* **Main insight 1.** Children: Policies with children cost 12.8% more.
  

![image](https://github.com/user-attachments/assets/fcd4ad22-a697-45db-837b-9aeb3a129db6)







# Recommendations:

Based on the insights and findings above, we would recommend the [stakeholder team] to consider the following: 

* Specific observation that is related to a recommended action. **Targeted pricing: Implement age- and gender-based pricing tiers to reflect the higher risk associated with these demographics.
Regional adjustments: Consider regional variations in healthcare costs when setting premiums, ensuring equitable pricing across different geographic areas..**
  
* Specific observation that is related to a recommended action. **Recommendation or general guidance based on this observation.**
  
* Specific observation that is related to a recommended action. **Recommendation or general guidance based on this observation.**
  
* Specific observation that is related to a recommended action. **Recommendation or general guidance based on this observation.**
  
* Specific observation that is related to a recommended action. **Recommendation or general guidance based on this observation.**
  


