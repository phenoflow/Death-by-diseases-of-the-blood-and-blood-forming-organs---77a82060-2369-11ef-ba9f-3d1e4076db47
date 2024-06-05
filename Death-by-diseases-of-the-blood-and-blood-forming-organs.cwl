cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  death-by-diseases-of-the-blood-and-blood-forming-organs-immunodef---secondary:
    run: death-by-diseases-of-the-blood-and-blood-forming-organs-immunodef---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  posthaemorrhagic-death-by-diseases-of-the-blood-and-blood-forming-organs---secondary:
    run: posthaemorrhagic-death-by-diseases-of-the-blood-and-blood-forming-organs---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-blood-and-blood-forming-organs-immunodef---secondary/output
  selective-death-by-diseases-of-the-blood-and-blood-forming-organs---secondary:
    run: selective-death-by-diseases-of-the-blood-and-blood-forming-organs---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: posthaemorrhagic-death-by-diseases-of-the-blood-and-blood-forming-organs---secondary/output
  chronic-death-by-diseases-of-the-blood-and-blood-forming-organs---secondary:
    run: chronic-death-by-diseases-of-the-blood-and-blood-forming-organs---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: selective-death-by-diseases-of-the-blood-and-blood-forming-organs---secondary/output
  death-by-diseases-of-the-blood-and-blood-forming-organs-defibrination---secondary:
    run: death-by-diseases-of-the-blood-and-blood-forming-organs-defibrination---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: chronic-death-by-diseases-of-the-blood-and-blood-forming-organs---secondary/output
  death-by-diseases-of-the-blood-and-blood-forming-organs-histiocytosis---secondary:
    run: death-by-diseases-of-the-blood-and-blood-forming-organs-histiocytosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-blood-and-blood-forming-organs-defibrination---secondary/output
  death-by-diseases-of-the-blood-and-blood-forming-organs-nonautoimmune---secondary:
    run: death-by-diseases-of-the-blood-and-blood-forming-organs-nonautoimmune---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-blood-and-blood-forming-organs-histiocytosis---secondary/output
  death-by-diseases-of-the-blood-and-blood-forming-organs-specified---secondary:
    run: death-by-diseases-of-the-blood-and-blood-forming-organs-specified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-blood-and-blood-forming-organs-nonautoimmune---secondary/output
  death-by-diseases-of-the-blood-and-blood-forming-organs-hypergammaglobulinaemia---secondary:
    run: death-by-diseases-of-the-blood-and-blood-forming-organs-hypergammaglobulinaemia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-blood-and-blood-forming-organs-specified---secondary/output
  death-by-diseases-of-the-blood-and-blood-forming-organs-spleen---secondary:
    run: death-by-diseases-of-the-blood-and-blood-forming-organs-spleen---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-blood-and-blood-forming-organs-hypergammaglobulinaemia---secondary/output
  death-by-diseases-of-the-blood-and-blood-forming-organs-druginduced---secondary:
    run: death-by-diseases-of-the-blood-and-blood-forming-organs-druginduced---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-blood-and-blood-forming-organs-spleen---secondary/output
  death-by-diseases-of-the-blood-and-blood-forming-organs-immunodeficiency---secondary:
    run: death-by-diseases-of-the-blood-and-blood-forming-organs-immunodeficiency---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-blood-and-blood-forming-organs-druginduced---secondary/output
  blood---secondary:
    run: blood---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-blood-and-blood-forming-organs-immunodeficiency---secondary/output
  external-death-by-diseases-of-the-blood-and-blood-forming-organs---secondary:
    run: external-death-by-diseases-of-the-blood-and-blood-forming-organs---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: blood---secondary/output
  death-by-diseases-of-the-blood-and-blood-forming-organs-defect---secondary:
    run: death-by-diseases-of-the-blood-and-blood-forming-organs-defect---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: external-death-by-diseases-of-the-blood-and-blood-forming-organs---secondary/output
  hereditary-death-by-diseases-of-the-blood-and-blood-forming-organs---secondary:
    run: hereditary-death-by-diseases-of-the-blood-and-blood-forming-organs---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-blood-and-blood-forming-organs-defect---secondary/output
  death-by-diseases-of-the-blood-and-blood-forming-organs-tcell---secondary:
    run: death-by-diseases-of-the-blood-and-blood-forming-organs-tcell---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: hereditary-death-by-diseases-of-the-blood-and-blood-forming-organs---secondary/output
  death-by-diseases-of-the-blood-and-blood-forming-organs-thalassaemia---secondary:
    run: death-by-diseases-of-the-blood-and-blood-forming-organs-thalassaemia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-blood-and-blood-forming-organs-tcell---secondary/output
  aplastic-death-by-diseases-of-the-blood-and-blood-forming-organs---secondary:
    run: aplastic-death-by-diseases-of-the-blood-and-blood-forming-organs---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-blood-and-blood-forming-organs-thalassaemia---secondary/output
  death-by-diseases-of-the-blood-and-blood-forming-organs-haemoglobinuria---secondary:
    run: death-by-diseases-of-the-blood-and-blood-forming-organs-haemoglobinuria---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: aplastic-death-by-diseases-of-the-blood-and-blood-forming-organs---secondary/output
  death-by-diseases-of-the-blood-and-blood-forming-organs-lymph---secondary:
    run: death-by-diseases-of-the-blood-and-blood-forming-organs-lymph---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-blood-and-blood-forming-organs-haemoglobinuria---secondary/output
  death-by-diseases-of-the-blood-and-blood-forming-organs-class---secondary:
    run: death-by-diseases-of-the-blood-and-blood-forming-organs-class---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-blood-and-blood-forming-organs-lymph---secondary/output
  death-by-diseases-of-the-blood-and-bloodforming-organs---secondary:
    run: death-by-diseases-of-the-blood-and-bloodforming-organs---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-blood-and-blood-forming-organs-class---secondary/output
  death-by-diseases-of-the-blood-and-blood-forming-organs-vitamin---secondary:
    run: death-by-diseases-of-the-blood-and-blood-forming-organs-vitamin---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-blood-and-bloodforming-organs---secondary/output
  sideroblastic-death-by-diseases-of-the-blood-and-blood-forming-organs---secondary:
    run: sideroblastic-death-by-diseases-of-the-blood-and-blood-forming-organs---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-blood-and-blood-forming-organs-vitamin---secondary/output
  dietary-death-by-diseases-of-the-blood-and-blood-forming-organs---secondary:
    run: dietary-death-by-diseases-of-the-blood-and-blood-forming-organs---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: sideroblastic-death-by-diseases-of-the-blood-and-blood-forming-organs---secondary/output
  death-by-diseases-of-the-blood-and-blood-forming-organs-methaemoglobinaemia---secondary:
    run: death-by-diseases-of-the-blood-and-blood-forming-organs-methaemoglobinaemia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: dietary-death-by-diseases-of-the-blood-and-blood-forming-organs---secondary/output
  death-by-diseases-of-the-blood-and-blood-forming-organs-sarcoidosis---secondary:
    run: death-by-diseases-of-the-blood-and-blood-forming-organs-sarcoidosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-blood-and-blood-forming-organs-methaemoglobinaemia---secondary/output
  death-by-diseases-of-the-blood-and-blood-forming-organs-enzyme---secondary:
    run: death-by-diseases-of-the-blood-and-blood-forming-organs-enzyme---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-blood-and-blood-forming-organs-sarcoidosis---secondary/output
  nutritional-death-by-diseases-of-the-blood-and-blood-forming-organs---secondary:
    run: nutritional-death-by-diseases-of-the-blood-and-blood-forming-organs---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-blood-and-blood-forming-organs-enzyme---secondary/output
  death-by-diseases-of-the-blood-and-blood-forming-organs-crisis---secondary:
    run: death-by-diseases-of-the-blood-and-blood-forming-organs-crisis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: nutritional-death-by-diseases-of-the-blood-and-blood-forming-organs---secondary/output
  death-by-diseases-of-the-blood-and-blood-forming-organs-number---secondary:
    run: death-by-diseases-of-the-blood-and-blood-forming-organs-number---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-blood-and-blood-forming-organs-crisis---secondary/output
  death-by-diseases-of-the-blood-and-blood-forming-organs-agranulocytosis---secondary:
    run: death-by-diseases-of-the-blood-and-blood-forming-organs-agranulocytosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-blood-and-blood-forming-organs-number---secondary/output
  death-by-diseases-of-the-blood-and-blood-forming-organs-folate---secondary:
    run: death-by-diseases-of-the-blood-and-blood-forming-organs-folate---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-blood-and-blood-forming-organs-agranulocytosis---secondary/output
  idiopathic-death-by-diseases-of-the-blood-and-blood-forming-organs---secondary:
    run: idiopathic-death-by-diseases-of-the-blood-and-blood-forming-organs---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-blood-and-blood-forming-organs-folate---secondary/output
  death-by-diseases-of-the-blood-and-blood-forming-organs-neutrophil---secondary:
    run: death-by-diseases-of-the-blood-and-blood-forming-organs-neutrophil---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: idiopathic-death-by-diseases-of-the-blood-and-blood-forming-organs---secondary/output
  death-by-diseases-of-the-blood-and-blood-forming-organs-factor---secondary:
    run: death-by-diseases-of-the-blood-and-blood-forming-organs-factor---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-blood-and-blood-forming-organs-neutrophil---secondary/output
  congenital-death-by-diseases-of-the-blood-and-blood-forming-organs---secondary:
    run: congenital-death-by-diseases-of-the-blood-and-blood-forming-organs---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-blood-and-blood-forming-organs-factor---secondary/output
  death-by-diseases-of-the-blood-and-blood-forming-organs-sicklecell---secondary:
    run: death-by-diseases-of-the-blood-and-blood-forming-organs-sicklecell---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: congenital-death-by-diseases-of-the-blood-and-blood-forming-organs---secondary/output
  secondary-death-by-diseases-of-the-blood-and-blood-forming-organs---secondary:
    run: secondary-death-by-diseases-of-the-blood-and-blood-forming-organs---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-blood-and-blood-forming-organs-sicklecell---secondary/output
  severe-death-by-diseases-of-the-blood-and-blood-forming-organs---secondary:
    run: severe-death-by-diseases-of-the-blood-and-blood-forming-organs---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: secondary-death-by-diseases-of-the-blood-and-blood-forming-organs---secondary/output
  death-by-diseases-of-the-blood-and-blood-forming-organs-metabolism---secondary:
    run: death-by-diseases-of-the-blood-and-blood-forming-organs-metabolism---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: severe-death-by-diseases-of-the-blood-and-blood-forming-organs---secondary/output
  death-by-diseases-of-the-blood-and-blood-forming-organs-acquired---secondary:
    run: death-by-diseases-of-the-blood-and-blood-forming-organs-acquired---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-blood-and-blood-forming-organs-metabolism---secondary/output
  death-by-diseases-of-the-blood-and-blood-forming-organs-trait---secondary:
    run: death-by-diseases-of-the-blood-and-blood-forming-organs-trait---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-blood-and-blood-forming-organs-acquired---secondary/output
  death-by-diseases-of-the-blood-and-blood-forming-organs-anaemia---secondary:
    run: death-by-diseases-of-the-blood-and-blood-forming-organs-anaemia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-blood-and-blood-forming-organs-trait---secondary/output
  death-by-diseases-of-the-blood-and-blood-forming-organs-dissem---secondary:
    run: death-by-diseases-of-the-blood-and-blood-forming-organs-dissem---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-blood-and-blood-forming-organs-anaemia---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-blood-and-blood-forming-organs-dissem---secondary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
