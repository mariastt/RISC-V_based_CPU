`define INSTR_OPCODE 6:3
`define INSTR_INSTR_LEN 2:0

`define INSTR_LEN 2'b11

// R-type instruction format
// funct7[31:25] rs2[24:20] rs1[19:15] funct3[14:12] rd[11:7] opcode[6:0]
`define R_TYPE_FUNCT_7 31:25
`define R_TYPE_RS_2 24:20
`define R_TYPE_RS_1 19:15
`define R_TYPE_FUNCT_3 14:12
`define R_TYPE_RD 11:7

// I-type instruction format
// imm[31:20] rs1[19:15] funct3[14:12] rd[11:7] opcode[6:0]
`define I_TYPE_IMM 31:20
`define I_TYPE_RS_1 19:15
`define I_TYPE_FUNCT_3 14:12
`define I_TYPE_RD 11:7

// S-type instruction format
// imm[11:5]_[31:25] rs2[24:20] rs1[19:15] funct3[14:12] imm[4:0]_[11:7] opcode[6:0]
`define S_TYPE_IMM_11_5 31:25
`define S_TYPE_RS_2 24:20
`define S_TYPE_RS_1 19:15
`define S_TYPE_FUNCT_3 14:12
`define S_TYPE_IMM_4_0 11:7

// B-type instruction format
// imm[12|10:5]_[31:25] rs2[24:20] rs1[19:15] funct3[14:12] imm[4:1|11]_[11:7] opcode[6:0]
`define B_TYPE_IMM_12_10_5 31:25
`define B_TYPE_RS_2 24:20
`define B_TYPE_RS_1 19:15
`define B_TYPE_FUNCT_3 14:12
`define B_TYPE_IMM_4_1_11 11:7

// U-type instruction format
// imm[31:12]_[31:12] rd[11:7] opcode[6:0]
`define U_TYPE_IMM_31_12 31:12
`define U_TYPE_RD 11:7

// J-type instruction format
// imm[20|10:1|11|19:12]_[31:12] rd[11:7] opcode[6:0]
`define J_TYPE_IMM_20_10_1_11_19_12 31:12
`define J_TYPE_RD 11:7

// opcodes

`define LOAD_OPCODE 5'b00_000

`define LOAD_FUNCT_3_LB 1'h0
`define LOAD_FUNCT_3_LH 1'h1
`define LOAD_FUNCT_3_LW 1'h2
`define LOAD_FUNCT_3_LBU 1'h4
`define LOAD_FUNCT_3_LHU 1'h5



`define MISC_MEM_OPCODE 5'b00_011



`define OP_IMM_OPCODE 5'b00_100

`define OP_IMM_FUNCT_3_ADDI 1'h0
`define OP_IMM_FUNCT_3_XORI 1'h4
`define OP_IMM_FUNCT_3_ORI 1'h6
`define OP_IMM_FUNCT_3_ANDI 1'h7
`define OP_IMM_FUNCT_3_SLLI 1'h1
`define OP_IMM_FUNCT_3_SRLI 1'h5
`define OP_IMM_FUNCT_3_SRAI 1'h5
`define OP_IMM_FUNCT_3_SLTI 1'h2
`define OP_IMM_FUNCT_3_SLTIU 1'h3

`define OP_IMM_FUNCT_7_SLLI 2'h00
`define OP_IMM_FUNCT_7_SRLI 2'h00
`define OP_IMM_FUNCT_7_SLAI 2'h20



`define AUIPC_OPCODE 5'b00_101



`define STORE_OPCODE 5'b01_000

`define STORE_FUNCT_3_SB 1'h0
`define STORE_FUNCT_3_SH 1'h1
`define STORE_FUNCT_3_SW 1'h2


`define OP_OPCODE 5'b01_100

`define OP_FUNCT_3_ADD 1'h0
`define OP_FUNCT_3_SUB 1'h0
`define OP_FUNCT_3_XOR 1'h4
`define OP_FUNCT_3_OR 1'h6
`define OP_FUNCT_3_AND 1'h7
`define OP_FUNCT_3_SLL 1'h1
`define OP_FUNCT_3_SRL 1'h5
`define OP_FUNCT_3_SRA 1'h5
`define OP_FUNCT_3_SLT 1'h2
`define OP_FUNCT_3_SLTU 1'h3

`define OP_FUNCT_7_ADD 2'h00
`define OP_FUNCT_7_SUB 2'h20
`define OP_FUNCT_7_XOR 2'h00
`define OP_FUNCT_7_OR 2'h00
`define OP_FUNCT_7_AND 2'h00
`define OP_FUNCT_7_SLL 2'h00
`define OP_FUNCT_7_SRL 2'h00
`define OP_FUNCT_7_SRA 2'h20
`define OP_FUNCT_7_SLT 2'h00
`define OP_FUNCT_7_SLTU 2'h00



`define LUI_OPCODE 5'b01_101


`define BRANCH_OPCODE 5'b11_000
`define BRANCH_FUNCT_3_BEQ 1'h0
`define BRANCH_FUNCT_3_BNE 1'h1
`define BRANCH_FUNCT_3_BLT 1'h4
`define BRANCH_FUNCT_3_BGE 1'h5
`define BRANCH_FUNCT_3_BLTU 1'h6
`define BRANCH_FUNCT_3_BGEU 1'h7


`define JALR_OPCODE 5'b11_001
`define JALR_FUNCT_3_SLTU 1'h0

`define JAL_OPCODE 5'b11_011

`define SYSTEM_OPCODE 5'b11_100

// dmem type load store
`define LDST_B 3'b000
`define LDST_H 3'b001
`define LDST_W 3'b010
`define LDST_BU 3'b100
`define LDST_HU 3'b101

// operand a selection
`define OP_A_RS1 2'b00
`define OP_A_CURR_PC 2'b01
`define OP_A_ZERO 2'b10

// operand b selection
`define OP_B_RS2 3'b000
`define OP_B_IMM_I 3'b001
`define OP_B_IMM_U 3'b010
`define OP_B_IMM_S 3'b011
`define OP_B_INCR 3'b100

// writeback source selection
`define WB_EX_RESULT 1'b0
`define WB_LSU_DATA 1'b1