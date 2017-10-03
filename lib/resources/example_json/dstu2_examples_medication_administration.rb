module Cerner
  module Resources

    #These examples are from DEVENG. Update with FHIRPLAY test patients before merging.

    DSTU2_MEDICATION_ADMINISTRATION_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "6faa32e4-49eb-41b4-8621-9609a454caec",
      "type": "searchset",
      "total": 5,
      "link": [
        {
          "relation": "self",
          "url": "http://localhost:3002/dstu2/2c400054-42d8-4e74-87b7-80b5bd5fde9f/MedicationAdministration?patient=1061997&_count=5"
        },
        {
          "relation": "next",
          "url": "http://localhost:3002/dstu2/2c400054-42d8-4e74-87b7-80b5bd5fde9f/MedicationAdministration?patient=1061997&_count=5&-pageContext=H4sIAAAAAAAAADWMsQ6DMAxE_yVzFaUplcBb1XYsE0PXKDaQIQZZhgXx7w2tesvpdE9vM3MYyIBpn-_OnMoSYn0R3jAnvi869X15F2GIJEwCOSHEMYhaWgsKeNRgeRIdQyZJMdgfapkUvHP1tfJFTYwP7fLfefaXpnaV-2b_AIVJI3SIAAAA&-pageDirection=NEXT"
        }
      ],
      "entry": [
        {
          "fullUrl": "http://localhost:3002/dstu2/2c400054-42d8-4e74-87b7-80b5bd5fde9f/MedicationAdministration/2101609",
          "resource": {
            "resourceType": "MedicationAdministration",
            "id": "2101609",
            "meta": {
              "versionId": "2101610",
              "lastUpdated": "2011-03-29T02:00:11.000Z"
            },
            "text": {
              "status": "generated",
              "div": "<div><p><b>Medication Administration</b></p><p><b>Patient Name</b>: ROEN, LESLEY MICHELE</p><p><b>Medication Display</b>: albuterol</p><p><b>Was Not Given</b>: False</p><p><b>Dosage Quantity</b>: 0.5</p><p><b>Medication Status</b>: in-progress</p><p><b>Effective Time</b>: 2011-03-29T02:00:00.000Z</p></div>"
            },
            "status": "in-progress",
            "patient": {
              "reference": "Patient/1061997",
              "display": "ROEN, LESLEY MICHELE"
            },
            "practitioner": {
              "reference": "Practitioner/615923",
              "display": "Brown, Katie"
            },
            "encounter": {
              "reference": "Encounter/1113890"
            },
            "prescription": {
              "reference": "MedicationOrder/11932387"
            },
            "effectiveTimeDateTime": "2011-03-29T02:00:00.000Z",
            "medicationCodeableConcept": {
              "coding": [
                {
                  "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
                  "code": "435",
                  "display": "Albuterol",
                  "userSelected": false
                }
              ],
              "text": "albuterol"
            },
            "dosage": {
              "text": "2.5 mg = 0.5 mL INH q6hr",
              "route": {
                "coding": [
                  {
                    "system": "http://ncimeta.nci.nih.gov",
                    "code": "C38216",
                    "display": "RESPIRATORY (INHALATION)",
                    "userSelected": false
                  }
                ],
                "text": "RESPIRATORY (INHALATION)"
              },
              "quantity": {
                "value": 0.5,
                "unit": "mL",
                "system": "http://unitsofmeasure.org"
              }
            }
          }
        },
        {
          "fullUrl": "http://localhost:3002/dstu2/2c400054-42d8-4e74-87b7-80b5bd5fde9f/MedicationAdministration/2008546",
          "resource": {
            "resourceType": "MedicationAdministration",
            "id": "2008546",
            "meta": {
              "versionId": "2008547",
              "lastUpdated": "2009-04-15T15:59:31.000Z"
            },
            "text": {
              "status": "generated",
              "div": "<div><p><b>Medication Administration</b></p><p><b>Patient Name</b>: ROEN, LESLEY MICHELE</p><p><b>Medication Display</b>: oxycodone (oxycodone 5 mg oral tablet)</p><p><b>Was Not Given</b>: False</p><p><b>Dosage Quantity</b>: 5</p><p><b>Medication Status</b>: in-progress</p><p><b>Effective Time</b>: 2009-04-15T15:59:00.000Z</p></div>"
            },
            "status": "in-progress",
            "patient": {
              "reference": "Patient/1061997",
              "display": "ROEN, LESLEY MICHELE"
            },
            "practitioner": {
              "reference": "Practitioner/607928",
              "display": "Fox, Jason"
            },
            "encounter": {
              "reference": "Encounter/1113890"
            },
            "prescription": {
              "reference": "MedicationOrder/9551275"
            },
            "effectiveTimeDateTime": "2009-04-15T15:59:00.000Z",
            "medicationCodeableConcept": {
              "coding": [
                {
                  "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
                  "code": "1049621",
                  "display": "Oxycodone Hydrochloride 5 MG Oral Tablet",
                  "userSelected": false
                }
              ],
              "text": "oxycodone (oxycodone 5 mg oral tablet)"
            },
            "dosage": {
              "text": "5 mg = 1 caps Oral q4hr",
              "route": {
                "coding": [
                  {
                    "system": "http://ncimeta.nci.nih.gov",
                    "code": "C38288",
                    "display": "ORAL",
                    "userSelected": false
                  }
                ],
                "text": "ORAL"
              },
              "quantity": {
                "value": 5,
                "unit": "mg",
                "system": "http://unitsofmeasure.org"
              }
            }
          }
        },
        {
          "fullUrl": "http://localhost:3002/dstu2/2c400054-42d8-4e74-87b7-80b5bd5fde9f/MedicationAdministration/2008534",
          "resource": {
            "resourceType": "MedicationAdministration",
            "id": "2008534",
            "meta": {
              "versionId": "2008535",
              "lastUpdated": "2009-04-15T15:58:28.000Z"
            },
            "text": {
              "status": "generated",
              "div": "<div><p><b>Medication Administration</b></p><p><b>Patient Name</b>: ROEN, LESLEY MICHELE</p><p><b>Medication Display</b>: ethinyl estradiol-norgestrel (ethinyl estradiol-norgestrel 30 mcg-0.3 mg oral tablet)</p><p><b>Was Not Given</b>: False</p><p><b>Dosage Quantity</b>: 1</p><p><b>Medication Status</b>: in-progress</p><p><b>Effective Time</b>: 2009-04-15T15:58:00.000Z</p></div>"
            },
            "status": "in-progress",
            "patient": {
              "reference": "Patient/1061997",
              "display": "ROEN, LESLEY MICHELE"
            },
            "practitioner": {
              "reference": "Practitioner/607928",
              "display": "Fox, Jason"
            },
            "encounter": {
              "reference": "Encounter/1113890"
            },
            "prescription": {
              "reference": "MedicationOrder/9554880"
            },
            "effectiveTimeDateTime": "2009-04-15T15:58:00.000Z",
            "medicationCodeableConcept": {
              "coding": [
                {
                  "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
                  "code": "311359",
                  "display": "Ethinyl Estradiol 0.03 MG / Norgestrel 0.3 MG Oral Tablet",
                  "userSelected": false
                }
              ],
              "text": "ethinyl estradiol-norgestrel (ethinyl estradiol-norgestrel 30 mcg-0.3 mg oral tablet)"
            },
            "dosage": {
              "text": "1 tab(s) Oral Daily",
              "route": {
                "coding": [
                  {
                    "system": "http://ncimeta.nci.nih.gov",
                    "code": "C38288",
                    "display": "ORAL",
                    "userSelected": false
                  }
                ],
                "text": "ORAL"
              },
              "quantity": {
                "value": 1,
                "unit": "{tbl}",
                "system": "http://unitsofmeasure.org"
              }
            }
          }
        },
        {
          "fullUrl": "http://localhost:3002/dstu2/2c400054-42d8-4e74-87b7-80b5bd5fde9f/MedicationAdministration/2008538",
          "resource": {
            "resourceType": "MedicationAdministration",
            "id": "2008538",
            "meta": {
              "versionId": "2008539",
              "lastUpdated": "2009-04-15T15:59:03.000Z"
            },
            "text": {
              "status": "generated",
              "div": "<div><p><b>Medication Administration</b></p><p><b>Patient Name</b>: ROEN, LESLEY MICHELE</p><p><b>Medication Display</b>: fluticasone-salmeterol (fluticasone-salmeterol 250 mcg-50 mcg inhalation powder)</p><p><b>Was Not Given</b>: True</p><p><b>Medication Status</b>: stopped</p><p><b>Effective Time</b>: 2009-04-15T14:00:00.000Z</p></div>"
            },
            "status": "stopped",
            "patient": {
              "reference": "Patient/1061997",
              "display": "ROEN, LESLEY MICHELE"
            },
            "practitioner": {
              "reference": "Practitioner/607928",
              "display": "Fox, Jason"
            },
            "encounter": {
              "reference": "Encounter/1113890"
            },
            "prescription": {
              "reference": "MedicationOrder/9554879"
            },
            "wasNotGiven": true,
            "reasonNotGiven": [
              {
                "coding": [
                  {
                    "code": 2589,
                    "display": "Not Done: Not Appropriate at this Time",
                    "userSelected": true
                  }
                ],
                "text": "Not Done: Not Appropriate at this Time"
              }
            ],
            "effectiveTimeDateTime": "2009-04-15T14:00:00.000Z",
            "medicationCodeableConcept": {
              "coding": [
                {
                  "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
                  "code": "1359859",
                  "display": "Fluticasone propionate 0.25 MG/ACTUAT / salmeterol 0.05 MG/ACTUAT Dry Powder Inhaler",
                  "userSelected": false
                }
              ],
              "text": "fluticasone-salmeterol (fluticasone-salmeterol 250 mcg-50 mcg inhalation powder)"
            }
          }
        },
        {
          "fullUrl": "http://localhost:3002/dstu2/2c400054-42d8-4e74-87b7-80b5bd5fde9f/MedicationAdministration/2008542",
          "resource": {
            "resourceType": "MedicationAdministration",
            "id": "2008542",
            "meta": {
              "versionId": "2008543",
              "lastUpdated": "2009-04-15T15:58:57.000Z"
            },
            "text": {
              "status": "generated",
              "div": "<div><p><b>Medication Administration</b></p><p><b>Patient Name</b>: ROEN, LESLEY MICHELE</p><p><b>Medication Display</b>: sulfamethoxazole-trimethoprim (Bactrim)</p><p><b>Was Not Given</b>: True</p><p><b>Medication Status</b>: stopped</p><p><b>Effective Time</b>: 2009-04-15T14:00:00.000Z</p></div>"
            },
            "status": "stopped",
            "patient": {
              "reference": "Patient/1061997",
              "display": "ROEN, LESLEY MICHELE"
            },
            "practitioner": {
              "reference": "Practitioner/607928",
              "display": "Fox, Jason"
            },
            "encounter": {
              "reference": "Encounter/1113890"
            },
            "prescription": {
              "reference": "MedicationOrder/9554931"
            },
            "wasNotGiven": true,
            "reasonNotGiven": [
              {
                "coding": [
                  {
                    "code": 2589,
                    "display": "Not Done: Not Appropriate at this Time",
                    "userSelected": true
                  }
                ],
                "text": "Not Done: Not Appropriate at this Time"
              }
            ],
            "effectiveTimeDateTime": "2009-04-15T14:00:00.000Z",
            "medicationCodeableConcept": {
              "coding": [
                {
                  "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
                  "code": "151399",
                  "display": "Bactrim",
                  "userSelected": false
                }
              ],
              "text": "sulfamethoxazole-trimethoprim (Bactrim)"
            }
          }
        }
      ]
    }

    DSTU2_MEDICATION_ADMINISTRATION_ENTRY ||= {
      "resourceType": "MedicationAdministration",
      "id": "2008546",
      "meta": {
        "versionId": "2008547",
        "lastUpdated": "2009-04-15T15:59:31.000Z"
      },
      "text": {
        "status": "generated",
        "div": "<div><p><b>Medication Administration</b></p><p><b>Patient Name</b>: ROEN, LESLEY MICHELE</p><p><b>Medication Display</b>: oxycodone (oxycodone 5 mg oral tablet)</p><p><b>Was Not Given</b>: False</p><p><b>Dosage Quantity</b>: 5</p><p><b>Medication Status</b>: in-progress</p><p><b>Effective Time</b>: 2009-04-15T15:59:00.000Z</p></div>"
      },
      "status": "in-progress",
      "patient": {
        "reference": "Patient/1061997",
        "display": "ROEN, LESLEY MICHELE"
      },
      "practitioner": {
        "reference": "Practitioner/607928",
        "display": "Fox, Jason"
      },
      "encounter": {
        "reference": "Encounter/1113890"
      },
      "prescription": {
        "reference": "MedicationOrder/9551275"
      },
      "effectiveTimeDateTime": "2009-04-15T15:59:00.000Z",
      "medicationCodeableConcept": {
        "coding": [
          {
            "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
            "code": "1049621",
            "display": "Oxycodone Hydrochloride 5 MG Oral Tablet",
            "userSelected": false
          }
        ],
        "text": "oxycodone (oxycodone 5 mg oral tablet)"
      },
      "dosage": {
        "text": "5 mg = 1 caps Oral q4hr",
        "route": {
          "coding": [
            {
              "system": "http://ncimeta.nci.nih.gov",
              "code": "C38288",
              "display": "ORAL",
              "userSelected": false
            }
          ],
          "text": "ORAL"
        },
        "quantity": {
          "value": 5,
          "unit": "mg",
          "system": "http://unitsofmeasure.org"
        }
      }
    }

  end
end
