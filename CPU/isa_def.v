`ifndef __ISA_DEF__
    `define __ISA_DEF__

        `include "./Global/global_std_def.v"

        `define ISA_NOP             32'h0

        /*  ISA OP Bus  */
        `define ISA_OP_WIDTH        6
        `define ISA_OP_BUS          (`ISA_OP_WIDTH-1):`LSB
        `define ISA_OP_LOC          31:26

        /*  ISA OP  */
        /*  LOGIC
         *  ISA_OP_ANDR     :   AND Register
         *  ISA_OP_ANDI     :   AND Immediate
         *  ISA_OP_ORR      :   OR Register
         *  ISA_OP_ORI      :   OR Immediate
         *  ISA_OP_XORR     :   XOR Register
         *  ISA_OP_XORI     :   XOR Immediate
         *  MATH
         *  ISA_OP_ADDSR    :   ADD Signed Register
         *  ISA_OP_ADDSI    :   ADD Signed Immediate
         *  ISA_OP_ADDUR    :   ADD Unsigned Register
         *  ISA_OP_ADDUI    :   ADD Unsigned Immediate
         *  ISA_OP_SUBSR    :   SUB Signed Register
         *  ISA_OP_SUBUR    :   SUB Unsigned Register
         *  SHIFT
         *  ISA_OP_SHRLR    :   SHIFT Right Register
         *  ISA_OP_SHRLI    :   SHIFT Right Immediate
         *  ISA_OP_SHLLR    :   SHIFT Left Register
         *  ISA_OP_SHLLI    :   SHIFT Left Immediate
         *  BRANCH
         *  ISA_OP_BE       :   Branch Equal
         *  ISA_OP_BNE      :   Branch Not Equal
         *  ISA_OP_BSGT     :   Branch Signed Greater Than
         *  ISA_OP_BUGT     :   Branch Unsigned Greater Than
         *  JUMP
         *  ISA_OP_JMP      :   JUMP
         *  ISA_OP_CALL     :   CALL
         *  MEMORY
         *  ISA_OP_LDW      :   Load Word
         *  ISA_OP_STW      :   Store Word
         *  TRAP
         *  ISA_OP_TRAP     :   TRAP
         *  PRIVILEGE
         *  ISA_OP_RDCR     :   Read Control Register
         *  ISA_OP_WRCR     :   Write Control Register
         *  ISA_OP_EXRT     :   Exception Return
         */
        `define ISA_OP_ANDR         6'h00
        `define ISA_OP_ANDI         6'h01
        `define ISA_OP_ORR          6'h02
        `define ISA_OP_ORI          6'h03
        `define ISA_OP_XORR         6'h04
        `define ISA_OP_XORI         6'h05
        `define ISA_OP_ADDSR        6'h06
        `define ISA_OP_ADDSI        6'h07
        `define ISA_OP_ADDUR        6'h08
        `define ISA_OP_ADDUI        6'h09
        `define ISA_OP_SUBSR        6'h0a
        `define ISA_OP_SUBUR        6'h0b
        `define ISA_OP_SHRLR        6'h0c
        `define ISA_OP_SHRLI        6'h0d
        `define ISA_OP_SHLLR        6'h0e
        `define ISA_OP_SHLLI        6'h0f
        `define ISA_OP_BE           6'h10
        `define ISA_OP_BNE          6'h11
        `define ISA_OP_BSGT         6'h12
        `define ISA_OP_BUGT         6'h13
        `define ISA_OP_JMP          6'h14
        `define ISA_OP_CALL         6'h15
        `define ISA_OP_LDW          6'h16
        `define ISA_OP_STW          6'h17
        `define ISA_OP_TRAP         6'h18
        `define ISA_OP_RDCR         6'h19
        `define ISA_OP_WRCR         6'h1a
        `define ISA_OP_EXRT         6'h1b

        /*  ISA Register Bus  */
        `define ISA_REG_ADDR_WIDTH  5
        `define ISA_REG_ADDR_BUS    4:0
        `define ISA_RA_ADDR_LOC     25:21
        `define ISA_RB_ADDR_LOC     20:16
        `define ISA_RC_ADDR_LOC     15:11

        /*  ISA IMM Bus  */
        `define ISA_IMM_WIDTH       16
        `define ISA_EXT_WIDTH       16
        `define ISA_IMM_MSB         (`ISA_IMM_WIDTH-1)
        `define ISA_IMM_BUS         `ISA_IMM_MSB:`LSB
        `define ISA_IMM_LOC         15:0

        /*  ISA EXP Bus  */
        `define ISA_EXP_WIDTH       3
        `define ISA_EXP_BUS         (`ISA_EXP_WIDTH-1):`LSB

        /*  ISA EXP  */
        /*
         *  ISA_EXP_NO_EXP      :   No Exception
         *  ISA_EXP_EXT_INT     :   External Interrupt
         *  ISA_EXP_UNDEF_INSN  :   Undefined Instruction
         *  ISA_EXP_OVERFLOW    :   Math Overflow
         *  ISA_EXP_MISS_ALIGN  :   Memory not aligned
         *  ISA_EXP_TRAP        :   TRAP throw Exception
         *  ISA_EXP_PRV_VIO     :   Privilege Violation
         */
        `define ISA_EXP_NO_EXP      3'h0
        `define ISA_EXP_EXT_INT     3'h1
        `define ISA_EXP_UNDEF_INSN  3'h2
        `define ISA_EXP_OVERFLOW    3'h3
        `define ISA_EXP_MISS_ALIGN  3'h4
        `define ISA_EXP_TRAP        3'h5
        `define ISA_EXP_PRV_VIO     3'h6

`endif