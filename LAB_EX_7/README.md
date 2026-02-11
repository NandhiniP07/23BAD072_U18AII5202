# LAB EXERCISE 7 – Reducing Visual Clutter in Large-Scale Datasets

**Roll No:** 23BAD072
**Language Used:** R  
**Libraries Used:** ggplot2, dplyr  

---

## Objective
To apply visualization techniques that reduce visual clutter in large-scale datasets and improve the clarity and interpretability of data patterns.

---

## Scenario
A social media analytics company visualizes millions of user interactions to study engagement patterns across multiple platforms. Due to the scale of the data, traditional visualizations often suffer from over-plotting. This lab focuses on techniques to address this issue.

---

## Dataset Description
**File Name:** `7.social_media_interactions.csv`

The dataset represents social media interaction data with the following attributes:

- **Likes** – Number of likes on a post  
- **Shares** – Number of times a post was shared  
- **Engagement_Score** – Engagement metric ranging from 0 to 100  
- **Platform** – Social media platform (Facebook, Instagram, Twitter)

---

## In-Lab Tasks Performed

### 1. Basic Scatter Plot
A scatter plot was created to visualize the relationship between Likes and Engagement Score.

**Purpose:**  
To observe the raw data distribution and identify the issue of visual clutter.

**Observation:**  
Significant overlapping of points makes it difficult to identify patterns.

---

### 2. Alpha Blending
Transparency was applied to scatter plot points.

**Purpose:**  
To reduce over-plotting and highlight dense regions of data.

**Observation:**  
Areas with higher engagement density appear darker, improving pattern recognition.

---

### 3. Jittering
Jittering was applied to Engagement Score values across different platforms.

**Purpose:**  
To minimize overlap in categorical data visualization.

**Observation:**  
Individual data points are clearly visible, showing variation within each platform.

---

### 4. Aggregation and Binning
2D binning was used to aggregate Likes and Shares.

**Purpose:**  
To summarize large-scale data by grouping points into bins.

**Observation:**  
Color intensity represents frequency, making high-interaction zones easy to identify.

---

## Results
- Alpha blending effectively reduces clutter in dense scatter plots.
- Jittering improves readability for categorical comparisons.
- Aggregation and binning provide a high-level overview of large datasets.

---

## Conclusion
This lab demonstrates how visualization techniques such as alpha blending, jittering, and aggregation can significantly improve the clarity of large-scale data visualizations. These methods are essential for meaningful analysis of big data in real-world applications such as social media analytics.

---

## Outcome
The objective of reducing visual clutter in large-scale datasets was successfully achieved using R visualization techniques.
