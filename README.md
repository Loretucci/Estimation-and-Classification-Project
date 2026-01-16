# LEDS Assignment: Estimation & Classification

## Project Overview
This repository contains the solution for the **Learning and Estimation of Dynamical Systems (LEDS)** course assignment. The project is implemented in **MATLAB** and focuses on two main tasks:
1.  **System Identification:** Estimating the parameters of a dynamic system from input-output data.
2.  **Classification:** Designing a classifier to distinguish between multiple classes based on feature analysis.

## Project Structure

### Part 1: System Identification (AR Model)
The goal of this section is to identify a black-box model using a generated dataset.
* **Data Generation:** Uses the custom function `IdentifyThis(N, Student, Matriculation)` to generate specific measurements.
* **Model Type:** Since the input $u(t)$ is zero, the system is modeled as an **AutoRegressive (AR)** process.
* **Methodology:**
    * Data splitting into **Training Set (65%)** and **Validation Set (35%)**.
    * Model order selection and parameter estimation.
    * Validation through simulation and residual analysis (whiteness test).

### Part 2: Multi-Class Classification
The second part deals with supervised learning to classify data points into 3 distinct classes.
* **Visualization:** Plotting features in a 2D space to analyze separability.
* **Decision Boundaries:** Computing and plotting linear hyperplanes (boundaries) between pairs of classes (Class 1 vs 2, Class 1 vs 3, etc.).
* **Performance:** Evaluation of the classification accuracy on a test set.

## Technologies Used
* **MATLAB** (Core logic, optimization, and plotting)
* **Statistics and Machine Learning Toolbox** (if applicable)

## How to Run
1.  Clone the repository:
    ```bash
    git clone [https://github.com/Loretucci/LEDS-Assignment.git](https://github.com/YOUR_USERNAME/LEDS-Assignment.git)
    ```
2.  Open **MATLAB**.
3.  Ensure the `Functions` folder (containing `IdentifyThis.m` and other helpers) is added to the MATLAB path:
    ```matlab
    addpath('./Functions');
    ```
4.  Run the main script (e.g., `main.m` or `Leds_Assignment.m`) to execute the estimation and classification routines.

## Results
* **Estimation:** The AR model successfully captures the dynamics of the system, with residuals falling within the confidence intervals.
* **Classification:** The computed decision boundaries effectively separate the three classes in the feature space.

---
*Author: Lorenzo Tucci*
*Course: Learning and Estimation of Dynamical Systems*
