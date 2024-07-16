# Airline-Loyalty-Program_SQL

## Introduction:

In this project, we analyzed "Customer Flight Activity" and "Customer Loyalty History" tables using advanced SQL techniques like CTEs, window functions, subqueries, and joins. The goal was to uncover insights into customer behavior and loyalty trends. We identified top customers based on distance traveled, points accumulated, and loyalty program engagement, and we analyzed factors influencing customer loyalty. This analysis helps inform strategies to enhance customer retention, optimize loyalty programs, and improve customer satisfaction.

## Key Concepts Used:

**Common Table Expressions (CTEs):**

Used to break complex queries into smaller, more readable parts.

**Window Functions:**

Used for calculations across rows related to the current row without collapsing them into a single output row.

**Joins:**

Combined rows from multiple tables based on related columns to get a comprehensive view of data.

**Subqueries:**

Nested queries used for intermediate calculations or fetching data.

**DISTINCT Keyword:**

Ensured unique rows in the result set.

**ORDER BY Clause:**

Sorted the result set based on specified columns.

## Overall Learnings:

**Data Aggregation:**

Used window functions to aggregate data while maintaining row-level details.

**Data Manipulation:**

Manipulated and transformed data using advanced SQL techniques to derive insights.

**Data Analysis:**

Created derived metrics like total distance traveled, points accumulated, and CLV.

**Optimization Techniques:**

Optimized complex queries for better readability and maintainability using CTEs.

**Comprehensive Insights:**

Combined data from multiple sources for a holistic view of customer behavior.

**Query Performance:**

Balanced readability and efficiency in query design.

**Advanced SQL Mastery:**

Mastered advanced SQL constructs essential for real-world data analysis tasks.

## Some of the key insights obtained using the below SQL quries are :

**Top Customers by Distance Traveled and Points Accumulated:**

1. The top three customers have traveled significantly more distance compared to others, with the highest being 155,877 km.
   
2. The same top three customers also have the highest points accumulated, indicating a strong correlation between distance traveled and points accumulated.
   
**Points Redeemed:**

1. The customers with the highest points are not necessarily the ones who have redeemed the most points.

2. There is a significant difference between the total points accumulated and points redeemed, which could indicate a tendency to accumulate points rather than redeem them frequently.
   
**Dollar Cost Points Redeemed:**

1. The top three customers have redeemed points with a similar dollar cost value, indicating a potential threshold or limit for point redemption in terms of dollar value.
   
**Yearly and Monthly Trends:**

1. The year 2017 has the highest number of customers, slightly more than 2018.

2. July has the highest number of customers booking flights, followed by June and August. This could suggest a peak travel season in the summer months.
   
**Geographical Distribution:**

1. Toronto, Vancouver, and Montreal have the highest number of customers, indicating these cities as major hubs or areas with higher customer engagement.

**Demographic Trends:**

1. Female customers outnumber male customers.

2. Customers with a Bachelor's degree form the largest group, followed by those with college education and high school education.

3. Married customers are the largest group, followed by single and divorced customers.

**Loyalty Card and Enrollment Types:**

1. The Star loyalty card has the highest customer count, followed by Nova and Aurora.
2. The standard enrollment type has the highest customer count, significantly more than the 2018 promotion type.

**Financial Metrics:**

1. The maximum salary of the customers is $99,973.
2. The highest customer lifetime value is $83,325.38, while the lowest is $1,898.01.

**Enrollment and Cancellation Trends:**

1. The number of customers enrolled in the loyalty program over the years shows a decreasing trend from 2018 to 2012.
2. A significant number of customers (16,737) have canceled their loyalty membership.
3. The top three cities with the highest count of customers canceling their loyalty membership are Toronto, Vancouver, and Montreal, which also have the highest customer counts.

**Loyal Customers:**

1.The top three loyal customers have an enrollment duration of 5 years, indicating a strong commitment to the loyalty program.

## SQL Quries:

**1. How many flights has each customer taken?**

The top 3 customers with highest total flights are 110065 - 97 flights, 133324 - 93 flights, 195994 - 93 flights

![image](https://github.com/user-attachments/assets/bf68c313-2d41-4e8f-baab-4305011eba1e)

**2. What is the total distance traveled by each customer?**

![image](https://github.com/user-attachments/assets/2f6a8d3c-1a51-4046-aef3-44a7bcb9fb67)    

**3. what is the points accumulated by each customer?**

![image](https://github.com/user-attachments/assets/77ae81cb-19ed-4944-9a85-13b81f8f9bd7)

**4. what is the total points redeemed by each customer?**

![image](https://github.com/user-attachments/assets/f9d699e9-dca0-4eee-8cb2-1330b55d49e5)

**5. what is the total dollar cost points redeemed by each customer?**

![image](https://github.com/user-attachments/assets/6e95a4b0-0e98-40fa-9b41-9f4d9681a307)

**6. which year has the highest number of customers?**

![image](https://github.com/user-attachments/assets/7c3f95b2-a044-46ab-8a3e-9ff7e88b8276)

**7. which month has the highest number of customers?**

![image](https://github.com/user-attachments/assets/7fdd2b1a-a525-444d-ba39-d726c7879efd)

**8. which city has the highest number of customers?**

![image](https://github.com/user-attachments/assets/0bfe62d6-6fd0-4839-9e89-cc1e7092c8a4)

**9. what is the break down of customers gender wise?**

![image](https://github.com/user-attachments/assets/6963a291-2c9f-4cb2-b986-4e4586982e93)

**10. what is the break down of customers education wise?**

![image](https://github.com/user-attachments/assets/d61269a8-a463-40c8-a5ca-262e8ac615c2)

**11. what is the break down of customers marital status wise?**

![image](https://github.com/user-attachments/assets/68a0592c-bfb9-4c8c-9d80-01cefb4d021b)

**12. what is the break down of customers Loyalty card wise?**

![image](https://github.com/user-attachments/assets/55643f60-5c79-4257-a748-8b46c1f63b0f)

**13. what is the break down of customers Enrollment type wise?**

![image](https://github.com/user-attachments/assets/ef53469e-d234-4b2e-ac77-05d569db94e3)

**14. what is the max salary of the customers?**

![image](https://github.com/user-attachments/assets/0bf98e1a-f9c3-4eaa-a358-7b0c5be0fe25)

**15. what is the highest clv of customer?**

![image](https://github.com/user-attachments/assets/a27201b7-5b58-4917-99ab-12a4ab042da9)

**16. How many customers enrolled in the loyalty program each year?**

![image](https://github.com/user-attachments/assets/623a4709-ebc9-4eea-a081-cbbd47e5a13c)

**17. How many customers have canceled their loyalty memberships?**

![image](https://github.com/user-attachments/assets/8b104359-45d0-4491-9146-37424b630168)

**18. Which customers have canceled their loyalty memberships, and what is their average Customer Lifetime Value (CLV)?**

![image](https://github.com/user-attachments/assets/882fc9e7-cbe5-4778-89c6-7c39ab36f804)

**19. which customers have cancelled their loyalty membership and their cities?**

![image](https://github.com/user-attachments/assets/ebf36109-aaa7-4595-8f76-7b4cb9e41c76)

**20. Loyal Customers by Longest Enrollment Duration**

![image](https://github.com/user-attachments/assets/92b54897-f056-4fb7-96b7-2df4509400d1)

**21. which enrollment type has the highest cancellation?**

![image](https://github.com/user-attachments/assets/2149960c-68f6-4bae-b45a-a4a0f885ab74)

**22. High Valued Customer**

![image](https://github.com/user-attachments/assets/0d8f11e8-4907-43b9-835d-ee315368940f)

**23. average distance travelled per year**

![image](https://github.com/user-attachments/assets/d5d48b04-8293-40f0-88fc-b9ad98ba9413)

## Conclusion:

From these insights, it's evident that while the airline has a strong customer base and loyalty program participation, there are challenges with customer retention in the loyalty program. The high number of cancellations in major cities like Toronto, Vancouver, and Montreal suggests potential dissatisfaction or lack of engagement among customers.

## Recommendations:

To reduce customer cancellations in the loyalty program, the airline company could consider the following actions:

1. Implement personalized communication strategies to keep customers engaged throughout their journey. Offer targeted promotions and rewards based on travel patterns and preferences identified through data analytics.

2. Review and enhance loyalty program benefits to ensure they are competitive and aligned with customer expectations. Introduce tiered rewards or exclusive offers for top-tier members to increase retention among high-value customers.

3. Implement regular surveys or feedback mechanisms to understand reasons behind cancellations and gather insights for improvement. Act on feedback promptly to address customer concerns and improve overall satisfaction.

4. Focus on increasing customer lifetime value through targeted marketing efforts and personalized experiences. Offer incentives for long-term loyalty and referrals to encourage sustained engagement.

5. Develop localized retention strategies tailored to cities with high cancellation rates like Toronto, Vancouver, and Montreal. Address specific regional preferences or challenges that may impact loyalty program satisfaction.

 
