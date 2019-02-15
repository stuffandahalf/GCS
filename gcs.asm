;.name "GCS"
.arch 6809

FIXEDRAM:   .EQU    0x0000
BANKEDRAM:  .EQU    0x4000
IO:         .EQU    0x8000
ROM:        .EQu    0xC000

VECTORADDR: .EQU    0xFFF0
NMI:        .EQU    0x0000
SWI:        .EQU    0x0000
IRQ:        .EQU    0x0000
FIRQ:       .EQU    0x0000
SWI2:       .EQU    0x0000
SWI3:       .EQU    0x0000


    ORG ROM


    ORG VECTORADDR
vectors:
.reserved:  .FDB    0
.swi3:      .FDB    SWI3
.swi2:      .FDB    SWI2
.irq:       .FDB    IRQ
.swi:       .FDB    SWI
.nmi:       .FDB    NMI
.reset:     .FDB    ROM
