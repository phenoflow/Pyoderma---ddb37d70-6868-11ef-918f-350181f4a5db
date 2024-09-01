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
  pyoderma---secondary:
    run: pyoderma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  pyoderma-gangrenosum---secondary:
    run: pyoderma-gangrenosum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: pyoderma---secondary/output
  pyoderma-vegetan---secondary:
    run: pyoderma-vegetan---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: pyoderma-gangrenosum---secondary/output
  other-pyoderma---secondary:
    run: other-pyoderma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: pyoderma-vegetan---secondary/output
  pyoderma-unspecified---secondary:
    run: pyoderma-unspecified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: other-pyoderma---secondary/output
  pyoderma-carbuncle---secondary:
    run: pyoderma-carbuncle---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: pyoderma-unspecified---secondary/output
  pyoderma-trunk---secondary:
    run: pyoderma-trunk---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: pyoderma-carbuncle---secondary/output
  pyoderma-paronychia---secondary:
    run: pyoderma-paronychia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: pyoderma-trunk---secondary/output
  pyoderma-impetigo---secondary:
    run: pyoderma-impetigo---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: pyoderma-paronychia---secondary/output
  pyoderma-bacterium---secondary:
    run: pyoderma-bacterium---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: pyoderma-impetigo---secondary/output
  bullous-pyoderma---secondary:
    run: bullous-pyoderma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: pyoderma-bacterium---secondary/output
  pyoderma-impetiginization---secondary:
    run: pyoderma-impetiginization---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: bullous-pyoderma---secondary/output
  pyoderma-cruris---secondary:
    run: pyoderma-cruris---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: pyoderma-impetiginization---secondary/output
  pyoderma-beard---secondary:
    run: pyoderma-beard---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: pyoderma-cruris---secondary/output
  pyoderma-staphylococcu---secondary:
    run: pyoderma-staphylococcu---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: pyoderma-beard---secondary/output
  pyoderma-umbilicu---secondary:
    run: pyoderma-umbilicu---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: pyoderma-staphylococcu---secondary/output
  streptococcal-pyoderma---secondary:
    run: streptococcal-pyoderma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: pyoderma-umbilicu---secondary/output
  pyoderma-dermatitis---secondary:
    run: pyoderma-dermatitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: streptococcal-pyoderma---secondary/output
  pyoderma-malignant---secondary:
    run: pyoderma-malignant---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: pyoderma-dermatitis---secondary/output
  pyoderma-finger---secondary:
    run: pyoderma-finger---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: pyoderma-malignant---secondary/output
  pyoderma-labium---secondary:
    run: pyoderma-labium---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: pyoderma-finger---secondary/output
  chronic-pyoderma---secondary:
    run: chronic-pyoderma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: pyoderma-labium---secondary/output
  pyoderma-elbow---secondary:
    run: pyoderma-elbow---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: chronic-pyoderma---secondary/output
  pyoderma-simplex---secondary:
    run: pyoderma-simplex---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: pyoderma-elbow---secondary/output
  pyoderma-follicularis---secondary:
    run: pyoderma-follicularis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: pyoderma-simplex---secondary/output
  symmetrical-pyoderma---secondary:
    run: symmetrical-pyoderma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: pyoderma-follicularis---secondary/output
  pyoderma-tropicalum---secondary:
    run: pyoderma-tropicalum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: symmetrical-pyoderma---secondary/output
  lower-pyoderma---secondary:
    run: lower-pyoderma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: pyoderma-tropicalum---secondary/output
  pyoderma-gyrata---secondary:
    run: pyoderma-gyrata---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: lower-pyoderma---secondary/output
  pyoderma-circinate---secondary:
    run: pyoderma-circinate---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: pyoderma-gyrata---secondary/output
  pyoderma-neonatorum---secondary:
    run: pyoderma-neonatorum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: pyoderma-circinate---secondary/output
  pyoderma-chest---secondary:
    run: pyoderma-chest---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: pyoderma-neonatorum---secondary/output
  lupoid-pyoderma---secondary:
    run: lupoid-pyoderma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: pyoderma-chest---secondary/output
  pyoderma-ecthyma---secondary:
    run: pyoderma-ecthyma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: lupoid-pyoderma---secondary/output
  pyoderma-forearm---secondary:
    run: pyoderma-forearm---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: pyoderma-ecthyma---secondary/output
  pyoderma-aeruginosa---secondary:
    run: pyoderma-aeruginosa---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: pyoderma-forearm---secondary/output
  pyoderma-barbae---secondary:
    run: pyoderma-barbae---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: pyoderma-aeruginosa---secondary/output
  pyoderma-subcutis---secondary:
    run: pyoderma-subcutis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: pyoderma-barbae---secondary/output
  bacterial-pyoderma---secondary:
    run: bacterial-pyoderma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: pyoderma-subcutis---secondary/output
  pyoderma-suppurativa---secondary:
    run: pyoderma-suppurativa---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: bacterial-pyoderma---secondary/output
  candidal-pyoderma---secondary:
    run: candidal-pyoderma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: pyoderma-suppurativa---secondary/output
  pyoderma-sycosis---secondary:
    run: pyoderma-sycosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: candidal-pyoderma---secondary/output
  pyoderma-penis---secondary:
    run: pyoderma-penis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: pyoderma-sycosis---secondary/output
  abdominal-pyoderma---secondary:
    run: abdominal-pyoderma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: pyoderma-penis---secondary/output
  pyoderma-faciale---secondary:
    run: pyoderma-faciale---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: abdominal-pyoderma---secondary/output
  pyoderma-bullosa---secondary:
    run: pyoderma-bullosa---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: pyoderma-faciale---secondary/output
  axillary-pyoderma---secondary:
    run: axillary-pyoderma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: pyoderma-bullosa---secondary/output
  pyoderma-flank---secondary:
    run: pyoderma-flank---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: axillary-pyoderma---secondary/output
  neonatal-pyoderma---secondary:
    run: neonatal-pyoderma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: pyoderma-flank---secondary/output
  pyoderma-scrotum---secondary:
    run: pyoderma-scrotum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: neonatal-pyoderma---secondary/output
  pyoderma-bockhart---secondary:
    run: pyoderma-bockhart---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: pyoderma-scrotum---secondary/output
  upper-pyoderma---secondary:
    run: upper-pyoderma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: pyoderma-bockhart---secondary/output
  pyoderma-buttock---secondary:
    run: pyoderma-buttock---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: upper-pyoderma---secondary/output
  pyoderma-septum---secondary:
    run: pyoderma-septum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: pyoderma-buttock---secondary/output
  pyoderma-aureu---secondary:
    run: pyoderma-aureu---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: pyoderma-septum---secondary/output
  pyoderma-region---secondary:
    run: pyoderma-region---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: pyoderma-aureu---secondary/output
  pyoderma-scalp---secondary:
    run: pyoderma-scalp---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: pyoderma-region---secondary/output
  pyoderma-thumb---secondary:
    run: pyoderma-thumb---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: pyoderma-scalp---secondary/output
  pyoderma-chancriform---secondary:
    run: pyoderma-chancriform---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: pyoderma-thumb---secondary/output
  juvenile-pyoderma---secondary:
    run: juvenile-pyoderma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: pyoderma-chancriform---secondary/output
  pyoderma-thigh---secondary:
    run: pyoderma-thigh---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: juvenile-pyoderma---secondary/output
  pyoderma-ankle---secondary:
    run: pyoderma-ankle---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: pyoderma-thigh---secondary/output
  pyoderma-perineum---secondary:
    run: pyoderma-perineum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: pyoderma-ankle---secondary/output
  pyoderma-shoulder---secondary:
    run: pyoderma-shoulder---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: pyoderma-perineum---secondary/output
  pyoderma-vasculitis---secondary:
    run: pyoderma-vasculitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: pyoderma-shoulder---secondary/output
  pyoderma-groin---secondary:
    run: pyoderma-groin---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: pyoderma-vasculitis---secondary/output
  pyoderma-sinus---secondary:
    run: pyoderma-sinus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: pyoderma-groin---secondary/output
  atopic-pyoderma---secondary:
    run: atopic-pyoderma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: pyoderma-sinus---secondary/output
  anogenital-pyoderma---secondary:
    run: anogenital-pyoderma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: atopic-pyoderma---secondary/output
  pyoderma-scalded---secondary:
    run: pyoderma-scalded---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: anogenital-pyoderma---secondary/output
  parastomal-pyoderma---secondary:
    run: parastomal-pyoderma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: pyoderma-scalded---secondary/output
  pyogenic-pyoderma---secondary:
    run: pyogenic-pyoderma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: parastomal-pyoderma---secondary/output
  retroauricular-pyoderma---secondary:
    run: retroauricular-pyoderma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: pyogenic-pyoderma---secondary/output
  pyoderma-vulval---secondary:
    run: pyoderma-vulval---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: retroauricular-pyoderma---secondary/output
  acute-pyoderma---secondary:
    run: acute-pyoderma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: pyoderma-vulval---secondary/output
  pyoderma-triad---secondary:
    run: pyoderma-triad---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: acute-pyoderma---secondary/output
  pyoderma-breast---secondary:
    run: pyoderma-breast---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: pyoderma-triad---secondary/output
  pyoderma-wrist---secondary:
    run: pyoderma-wrist---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: pyoderma-breast---secondary/output
  pyoderma-blastomycosislike---secondary:
    run: pyoderma-blastomycosislike---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: pyoderma-wrist---secondary/output
  eyelid-pyoderma---secondary:
    run: eyelid-pyoderma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: pyoderma-blastomycosislike---secondary/output
  ulcerative-pyoderma---secondary:
    run: ulcerative-pyoderma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: eyelid-pyoderma---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: ulcerative-pyoderma---secondary/output
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
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
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
