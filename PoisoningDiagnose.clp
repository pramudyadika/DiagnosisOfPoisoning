;///////////////////MAIN/////////////////////

(defrule menu
    =>
    (printout t "Do you want to do the diagnose? (y/n)" crlf)
    (bind ?answer (read))
    (if (eq ?answer y)
        then
            (printout t "Choose the Symptoms Below :" crlf)
            (printout t
            "
            1. (fever)
            2. (vomiting)
            3. (abdominal cramps)
            4. (watery diarrhea)
            5. (nausea)
            6. (chills)
            7. (diarrhea)
            8. (headache) 
            9. (weight loss)
            10. (drooping eyelids)
            11. (slurred speech)
            12. (loss_of appetite)
            13. (bloody diarrhea)
            14. (blurred vision)
            15. (severe stomach_cramps)

            "
            crlf
            )  
    )

    (if (eq ?answer n)
        then
            (printout t "Thanks! Hope you always be healthy!" crlf)  
    )
)

;///////////////////DIAGNOSE/////////////////////

(defrule staphylococcus_aureus
    (nausea)
    (vomiting)
    (abdominal cramps)
    =>
    (assert(staphylococcus_aureus diagnose))
    (printout t "Diagnose : Staphylococcus Aureus " crlf)
    (printout t "Common food sources: " crlf)
    (printout t "Foods that are not cooked after handling, such as sliced meats, puddings, pastries, and sandwiches" crlf)
)

(defrule vibrio
    (watery diarrhea)
    (fever)
    (chills)
    =>
    (assert(vibrio diagnose))
    (printout t "Diagnose : Vibrio " crlf)
    (printout t "Common food sources: " crlf)
    (printout t "Raw or undercooked shellfish, particularly oysters " crlf)
)

(defrule salmonella
    (diarrhea)
    (abdominal cramps)
    (vomiting)
    =>
    (assert(salmonella diagnose))
    (printout t "Diagnose : Salmonella " crlf)
    (printout t "Common food sources: " crlf)
    (printout t "Raw or undercooked chicken, turkey, and meat" crlf)
)

(defrule clostridium_botulinum
    (blurred vision)
    (drooping eyelids)
    (slurred speech)
    =>
    (assert(clostridium_botulinum diagnose))
    (printout t "Diagnose : Clostridium botulinum " crlf)
    (printout t "Common food sources: " crlf)
    (printout t "Improperly canned or fermented foods, usually homemade" crlf)
)

(defrule campylobacter
    (bloody diarrhea)
    (headache)
    (fever)
    =>
    (assert(campylobacter diagnose))
    (printout t "Diagnose : Campylobacter " crlf)
    (printout t "Common food sources: " crlf)
    (printout t "Raw or undercooked poultry, unpasteurized milk, and contaminated water" crlf)
)

(defrule escherichia_coli
    (severe stomach_cramps)
    (bloody diarrhea)
    (vomiting)
    =>
    (assert(escherichia_coli diagnose))
    (printout t "Diagnose : Escherichia Coli " crlf)
    (printout t "Common food sources: " crlf)
    (printout t "Raw or undercooked ground beef, raw milk, and unsafe water" crlf)
)

(defrule cyclospora
    (watery diarrhea)
    (loss_of appetite)
    (weight loss)
    =>
    (assert(cyclospora diagnose))
    (printout t "Diagnose : Cyclospora " crlf)
    (printout t "Common food sources: " crlf)
    (printout t "Raw fruits or vegetables and herbs" crlf)
)