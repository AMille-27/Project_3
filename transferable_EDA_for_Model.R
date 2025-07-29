# To be able to use my EDA_diabetes_data in both Model File and Qmd


diabetes_data <- read_csv("diabetes_binary_health_indicators_BRFSS2015.csv")

EDA_diabetes_data <- diabetes_data |>
  select(Diabetes_binary, AnyHealthcare, Education, PhysActivity, PhysHlth, HighBP, HighChol,CholCheck,Smoker,Stroke, HeartDiseaseorAttack, Fruits, Veggies, HvyAlcoholConsump, NoDocbcCost, GenHlth, Sex, Income, BMI, MentHlth, DiffWalk)

EDA_diabetes_data<- EDA_diabetes_data |> mutate(Education_fac = factor(Education, levels = 1:6, 
                                                                       labels = c("None", "Elementary", "Some_HS", "HS_Grad","Some_College", "College_Grad")),
                                                Health_Care_Coverage = factor(AnyHealthcare,
                                                                              levels = c(1,0),
                                                                              labels = c("Yes", "No")),
                                                Diabetes_binary_fac = factor(Diabetes_binary, levels = c(0, 1), labels = c("No", "Yes")),
                                                PhysActivity= factor(PhysActivity, levels = c(0,1),
                                                                     labels = c( "No", "Yes")),
                                                HighChol= factor(HighChol, levels = c(0,1), labels = c("No", "Yes")),
                                                HighBP= factor(HighBP, levels = c(0,1), labels = c("No", "Yes")),
                                                CholCheck= factor(CholCheck, levels = c(0,1), labels = c("No chk in 5 yrs", "Yes chk in 5 yrs")),
                                                Smoker= factor(Smoker, levels = c(0,1), labels = c("No", "Yes")),
                                                Fruits= factor(Fruits, levels = c(0,1), labels = c("No", "Yes")),
                                                Veggies= factor(Veggies, levels = c(0,1), labels = c("No", "Yes")),
                                                HvyAlcoholConsump = factor(HvyAlcoholConsump, levels = c(0,1), labels = c("No", "Yes")),
                                                NoDocbcCost = factor(NoDocbcCost, levels = c(0,1), labels = c("No", "Yes")),
                                                GenHlth= factor(GenHlth, levels = c(1:5), labels = c("Excellent", "Very Good", "Good", "Fair", "Poor")), 
                                                Sex= factor(Sex, levels = c(0,1), labels = c("Male", "Female")),
                                                Income = factor(Income, levels = c(1:8), labels = c("less than $10k", "$10k-$15k", "$15k-$20K", "$20K-$25K", "$25K-$35K","$35K-$50K", "$50K-$75K", "$75k or more")), 
                                                Stroke = factor(Stroke, levels = c(0, 1), labels = c("No","Yes")),
                                                HeartDiseaseorAttack= factor(HeartDiseaseorAttack, levels = c(0, 1), labels = c("No","Yes")),
                                                DiffWalk = factor(DiffWalk, levels = c(0, 1), labels = c("No","Yes"))
)
