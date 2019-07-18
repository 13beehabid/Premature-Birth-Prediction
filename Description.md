# Premature-Birth-Prediction
•	Preterm Birth:
	Preterm birth, also known as premature birth or delivery, is described by the World Health Organisation (WHO) as the delivery of babies who are born, alive, before 37 weeks of gestation. In contrast, term births are the live delivery of babies after 37 weeks, and before 42 weeks.
	According to the WHO, worldwide in 2010, preterm deliveries accounted for 1 in 10 births.
•	Problems:
	This group of infants (preterm/premature babies) are most at risk of developing severe medical conditions that can affect the respiratory, gastrointestinal, immune, central nervous, auditory and visual systems. In extreme cases, this can also lead to long-term conditions, such as cerebral palsy, mental retardation, learning difficulties, including poor health and growth.
•	Electrohysterography (EHG):
	Electrohysterography (EHG) is the term given for the recording of electrical activity of the uterus, in the time domain. In order to retrieve EHG signals, bipolar electrodes are adhered to the abdominal surface. These are spaced at a horizontal, or vertical, distance of 2.5 cm to 7 cm apart.
	The results of the last researches show that EHG signals can be helpful to separate uterine records of term and preterm deliveries.

Objective:
	Premature Labour prediction is a strongly difficult task due to the unpredictable uterine contractions.
	The objective of this project is to utilise Electrohysterography techniques to predict preterm delivery earlier in the pregnancy. The project presents a supervised signal processing approach that classifies term and preterm records, using an open source dataset containing 300 records.



Details:

•	Motivation:
	Preterm birth is the most common cause of death among infants worldwide. About 15 million babies are preterm each year (5% to 18% of all deliveries). In many countries, rates of premature births have increased between the 1990s and 2010s. Complications from preterm births resulted in 0.74 million deaths in 2013 down from 1.57 million in 1990. The chance of survival at less than 23 weeks is close to zero, while at 23 weeks it is 15%, 24 weeks 55% and 25 weeks about 80%. The chances of survival without long term difficulties are lower.
	These sorrowful statistics and the problems mentioned in the introduction inspired us to employ our knowledge of signal processing in a positive way in order to help the society.
•	Data Source:
	The data used in this project was obtained from an open source dataset containing 300 records (some preterm and most term) of pregnant women. This data was originally collected using EHG technique, mentioned earlier.

 
•	Principal:
	During the labour condition (term or preterm), the smooth muscles of the uterine walls of the female contracts in specific patterns. EHG records these patterns in the form of signals. After processing of these signals, different features can be extracted and they can be used to differentiate between uterine records of term and preterm deliveries.
	This simple mechanism can help us predict the premature births.
•	Procedure:

i.	Obtaining EHG records.
ii.	Pre-processing (filtration) to remove noise.
iii.	Feature extracted from the signals.
iv.	Term and preterm classification.

•	Results:
	After the processing and manipulation of the dataset; extracting and comparing various features (Table-1 and others), it will be finally shown that the values of these features differ for the term and preterm delivery cases.

 



Resources Required:
i.	Dataset: EHG records of term of preterm uterine contractions.
ii.	Software: Processing involved in MATLAB.
