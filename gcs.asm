;.name "GCS"
.arch 6809

FIXEDRAM:   .EQU    0x0000
BANKEDRAM:  .EQU    0x4000
IO:         .EQU    0x8000
ROM:        .EQu    0xC000

SYSSTACK:   .EQU    0x3FFF

VECTORADDR: .EQU    0xFFF0
NMI:        .EQU    0x0000
SWI:        .EQU    0x0000
IRQ:        .EQU    0x0000
FIRQ:       .EQU    0x0000
SWI2:       .EQU    0x0000
SWI3:       .EQU    0x0000


    ORG ROM
    LDS #SYSSTACK   ; Initialize system stack
    

    ORG VECTORADDR
vectors:
.reserved:  .DB     0
.swi3:      .DB     SWI3
.swi2:      .DB     SWI2
.irq:       .DB     IRQ
.swi:       .DB     SWI
.nmi:       .DB     NMI
.reset:     .DB     ROM
