disease(aspirus_diseases, 'Aspirus diseases is a group of fungal diseases affecting the leaf blades of coffee plants.').
disease(anthracnose, 'Anthracnose is a fungal disease that causes white lesions on the leaves and fruits of coffee plants.').
disease(alternaria, 'Alternaria is a fungal disease that causes a gray or tan fungal growth on the leaves and stems of coffee plants.').
disease(rust_diseases, 'Rust diseases are a group of fungal diseases affecting the coffee plant.').
disease(fusarium_wilt, 'Fusarium wilt is a soil-borne fungal disease that causes wilting and dieback of coffee plants.').
disease(coffee_leaf_rust, 'Coffee leaf rust (Hemileia vastatrix) is a fungal disease that causes leaf spot and reduced plant growth in coffee plants.').
disease(coffee_berry_borer, 'Coffee berry borer (Hypothenemus hampei) is an insect pest that causes severe leaf damage and the infestation of coffee cherries.').
disease(cherry_powdery_mold, 'Cherry powdery mold (Puccinia psidii) is a fungal disease that causes a white, powdery growth on coffee cherries.').
disease(sudden_wilt_syndrome, 'Sudden wilt syndrome is a bacterial disease that causes rapid leaf and stem wilting and dieback of coffee plants.').

has_symptom(Disease, Symptom) :- disease(Disease, _), symptom(Disease, Symptom).

symptom(rust_diseases, coffee_plant_leaf_spotting).
symptom(fusarium_wilt, coffee_plant_leaf_spotting).
symptom(coffee_berry_borer, coffee_fruit_wilting).
symptom(sudden_wilt_syndrome, sudden_wilting_of_coffee_plants).
symptom(alternaria, coffee_plant_gray_leaf_lesions).
symptom(rust_diseases, coffee_plant_gray_leaf_lesions).
symptom(cherry_powdery_mold, coffee_cherries_powdery_growth).
symptom(coffee_leaf_rust, yellowing_and_reduced_growth).



diagnose(Symptom, Disease,Explanation) :-
    symptom(Symptom),
    disease(Disease, Explanation).
