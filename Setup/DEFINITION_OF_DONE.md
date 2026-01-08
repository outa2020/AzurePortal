# Definition of Done (DoD)
## Sprint: Linen Prediction - Blanket Usage Model

---

## Sprint Scope
**Focus:** Single unit linen prediction model for **Blankets** only

## Prerequisites ✅
- [ ] Virtual environment is activated with required packages
- [ ] `LinenData.csv` file is present in the workspace directory
- [ ] Data contains required columns: `Date`, `AdmCount`, `DosaCount`, `DayOfWeekNum`, `IsWeekend`, `BlanketUsage`

## Dependencies Installation ✅
- [ ] `pandas` installed for data manipulation
- [ ] `numpy` installed for numerical operations
- [ ] `scikit-learn` installed for modeling and metrics
- [ ] `matplotlib` and `seaborn` installed for visualizations
- [ ] `joblib` installed for model persistence
- [ ] All dependencies verified without errors

## Data Validation ✅
- [ ] `LinenData.csv` file loads successfully
- [ ] Date column parsed correctly as datetime (format: dd/mm/yyyy)
- [ ] No missing values in critical columns
- [ ] Data sorted chronologically
- [ ] BlanketUsage values are numeric and valid
- [ ] Sufficient historical data for training (300+ days available)
- [ ] Feature columns validated: AdmCount, DosaCount, DayOfWeekNum, IsWeekend

## Data Exploration ✅
- [ ] Dataset shape and structure reviewed
- [ ] Basic statistics calculated and analyzed
- [ ] BlanketUsage distribution visualized
- [ ] Time series plot of BlanketUsage created
- [ ] Pattern analysis by day of week completed
- [ ] Weekend vs weekday comparison performed
- [Baseline Model (Rule-Based) ✅
- [ ] Baseline model implemented: 0 blankets daily, 20 on Fridays, 15 on Tuesdays
- [ ] Baseline predictions applied to dataset
- [ ] Baseline model serves as comparison benchmark

## Random Forest Model Training ✅
- [ ] Feature engineering completed (Month, DayOfMonth extracted)
- [ ] Features prepared: AdmCount, DosaCount, DayOfWeekNum, IsWeekend, Month, DayOfMonth
- [ ] Train/test split performed (80/20 split)
- [ ] Random Forest model configured with appropriate hyperparameters
- [ ] Model trained successfully without errors
- [ ] Training completes within reasonable time
- [ ] Training data formatted correctly (ds, y columns)
- [ ] Baseline model evaluated: R², MAE, RMSE calculated
- [ ] Random Forest model evaluated: R², MAE, RMSE calculated on test set
- [ ] Both models compared side-by-side
- [ ] Improvement percentage calculated (RF vs Baseline)
- [ ] Feature importance analysis completed
- [ ] All metrics are reasonable and within expected ranges
- [ ] Model performance documented clearly
- [ ] Metrics logResults ✅
- [ ] Baseline predictions generated for test set
- [ ] Random Forest predictions generated for test set
- [ ] Sample prediction scenarios created and tested
- [ ] Predictions validated against actual values
- [ ] Both models produce sensible predictionsvals (yhat_lower, yhat_upper)
- [ ] Forecasts generated for ALL units
- [ ] Individual forecast CSV files created per unit
- [ ] Combined forecast CSV created with all units
- [ ] Date ranges in forecasts are correct

## Visualizations ✅
- [ ] BlanketUsage time series plot created
- [ ] BlanketUsage distribution histogram created
- [ ] Average usage by day of week bar chart created
- [ ] Weekend vs weekday comparison visualized
- [ ] Feature relationships scatter plots created
- [ ] Correlation heatmap generated
- [Model Persistence ✅
- [ ] Random Forest model saved as `blanket_usage_rf_model.pkl`
- [ ] Feature columns list saved as `feature_columns.pkl`
- [ ] Model metrics saved as `model_metrics.pkl`
- [ ] All saved files are accessible and can be loaded
- [ ] Saved model can make predictions on new data
  - Forecast CSV files (per unit)
  - Combined forecast CSV
  - Forecast plots (PNG)
  - Component plots (PNG)
- [ ] MLflow run completed successfully
- [ ] Run ID captured and displayed

## Output Artifacts ✅
- [ ] Individual forecast files: `forecast_{unit}.csv`
- [ ] Combined forecast file: `combined_forecast_all_units.csv`
- [ ] Forecast plots: `forecast_plot_{unit}.png`
- [ ] Component plots: `components_plot_{unit}.png`
- [ ] All files contain valid data
- [ ] Jupyter notebook: `linen_blanket_prediction.ipynb` created
- [ ] Model file: `blanket_usage_rf_model.pkl` generated
- [ ] Feature columns: `feature_columns.pkl` generated
- [ ] Metrics file: `model_metrics.pkl` generated
- [ ] All files contain valid data
- [ ] Files are accessible in workspace directoryithout failures
- [ ] Appropriate error handling for edge cases
- [ ] Code is well-commented and readable
- [ ] Print statements provide clear progress updates

## Documentation ✅
- [ ] Notebook title clearly describes purpose
- [ ] Markdown cells explain each major section
- [ ] Parameters clearly defined (forecast_horizon, columns)
- [ ] Output interpretation guidance provided
- [ ] MLflow tracking  in notebook
- [ ] All cells execute in sequence without failures
- [ ] Code is well-commented and readable
- [ ] Print statements provide clear progress updates
- [ ] Visualizations render correctly in notebook
- [ ] Data types handled appropriately
- [ ] All Prophet models converge successfully

## Reproducibility ✅: "Linen Blanket Usage Prediction Model"
- [ ] Markdown cells explain each major section
- [ ] Baseline model logic clearly documented
- [ ] Random Forest model configuration explained
- [ ] Model comparison section included
- [ ] Summary section with key findings included
- [ ] Usage instructions for saved model provided

---

## Sign-off Checklist

**Development Phase:**
- [ ] All prerequisite items verified
- [ ] Memory usage is acceptable
- [ ] Random Forest model trains successfully
- [ ] Random Forest model performs better than baseline
- [ ] Model predictions are realistic and actionable
**Testing Phase:**
- [ ] Model training completed successfully
- [ ] All evaluation m(random_state=42)
- [ ] All file paths are relative and portable
- [ ] Model can be reloaded and used for new predictions

---

## Sign-off Checklist

**Development Phase:**
- [ ] All prerequisite items verified
- [ ] All dependencies installed and tested
- [ ] Data validation passed
- [ ] Data exploration completed

**Modeling Phase:**
- [ ] Baseline model implemented and evaluated
- [ ] Random Forest model trained successfully
- [ ] Both models evaluated and compared
- [ ] All visualizations generated

**Completion Phase:**
- [ ] Model artifacts saved
- [ ] Documentation finalized
- [ ] Code quality verified
- [ ] Notebook ready for execution

**✅ SPRINT IS COMPLETE WHEN ALL CHECKBOXES ABOVE ARE VERIFIED**

---

**Last Updated:** January 8, 2026  
**Sprint:** Linen Prediction - Blanket Usage Model  
**Platform:** Local Development (Python/Jupyter)  
**Notebook:** linen_blanket_prediction.ipynb  
**Scope:** Single unit prediction (Blankets only)