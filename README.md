🎯 Final-Project: Intelligent AI-Powered Data Analytics
Project Description
This project delivers a comprehensive solution for AI-Powered Business Intelligence (BI). The primary goal was to transform raw online retail data into a high-performance, normalized MySQL database (3NF) and implement a Text-to-SQL interface. This allows non-technical users to instantly extract critical, actionable insights from the data by posing questions in natural language.

Component,      Tool /                                Technology,Details
Database,       MySQL /                               MariaDB,"3NF Schema with 7 tables, hosted locally."
Generative      AI,Google Gemini 2.5 Flas,            Used for translating natural language into optimized SQL.
Framework,      LangChain,                            Implemented the Text-to-SQL agent and environment setup.
Development,    "Python (Pandas, SQLAlchemy)",        "Used for ETL, data cleaning, and running the analysis agent."


🔑 Key Features
Normalization & Cleaning: Transformed 541,909 raw transactions into a clean, redundant-free 3NF schema.
Performance Optimization: Strategic indexing (e.g., on Foreign Keys and date fields) reduced complex query execution time from 8–14 seconds to 0.15–0.8 seconds (a 15x–40x) speedup).
AI Agent Accuracy: The LangChain agent generated correct SQL in approximately $\text{92%}$ of test cases ($\text{23/25}$ questions)9.

⚙️ Installation and Execution
1. Prerequisites:
MySQL Server 5.7+
Python 3.10+ valid Gemini API Key 10

2. Setup
Install required Python libraries:
'''python -m pip install google-genai langchain langchain-community sqlalchemy mysql-connector-p'''

3. Execution
Create and populate the final_project_db in MySQL.

Update the connection details (DB_PASSWORD and GEMINI_API_KEY) in the main script.

Run the Jupyter Notebook (AI_Agent_Implementation.ipynb) to initialize the agent and execute the analytical tasks.

📊 Results – Key Business Insights

The analysis was performed on four critical business problems, generating actionable recommendations.

1. The Secret Money-MakerInsight: The product WEEKEND BAG VINTAGE ROSE PAISLEY was identified as the 'Secret Money-Maker', achieving a maximum single-sale revenue of 527.85$ while only being sold a maximum of twice COUNT \leq 2$.Actionable Recommendation: Promote this item through targeted, premium campaigns to high-value customer segments.

   
2. The Craziest ShopperInsight: The customer with Client ID 1256 placed a single order purchases_id 976 containing the largest number of different items: 224 unique products.Actionable Recommendation: This client shows deep commitment to the assortment and should be immediately enrolled in a VIP loyalty program.

   
3. Favorite Day & HourInsight: The analysis of total purchases shows the peak time for orders occurs on Friday at 14 2 PM, recording 524 total purchases.Actionable Recommendation: Schedule all major marketing campaigns, social media posts, and email newsletters to launch immediately before this peak time window to maximize conversion.

4. Superstars vs GhostsSuperstars (Top 5): Products with the highest sales volume include PACK OF 72 RETROSPOT CAKE CASES 7921 units sold) and WORLD WAR 2 GLIDERS ASSTD DESIGNS 5663 units sold).Ghosts: Products that were bought only once (low-volume items) must be addressed.Actionable Recommendation: Ensure Superstars maintain absolute stock availability. Ghost products should be either discontinued or bundled aggressively with Superstar items to clear inventory.


   
🚀 Future Improvements

Deploy the Text-to-SQL agent to a server and integrate it as a chatbot for real-time, company-wide data access.

Upgrade the underlying LLM to Gemini-2.5-pro or Claude 3.5 for further enhancements in SQL generation accuracy.

Implement materialized views for the most frequent reports to speed up complex aggregations.

Build an interactive dashboard (e.g., using Metabase or Streamlit).

   
