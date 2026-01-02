import re
import sys
import os

# RISC-V 寄存器映射
regs = {
    'x0': 0, 'zero': 0, 'x1': 1, 'ra': 1, 'x2': 2, 'sp': 2, 'x3': 3, 'gp': 3,
    'x4': 4, 'tp': 4, 'x5': 5, 't0': 5, 'x6': 6, 't1': 6, 'x7': 7, 't2': 7,
    'x8': 8, 's0': 8, 'fp': 8, 'x9': 9, 's1': 9, 'x10': 10, 'a0': 10,
    'x11': 11, 'a1': 11, 'x12': 12, 'a2': 12, 'x13': 13, 'a3': 13,
    'x14': 14, 'a4': 14, 'x15': 15, 'a5': 15, 'x16': 16, 'a6': 16,
    'x17': 17, 'a7': 17, 'x18': 18, 's2': 18, 'x19': 19, 's3': 19,
    'x20': 20, 's4': 20, 'x21': 21, 's5': 21, 'x22': 22, 's6': 22,
    'x23': 23, 's7': 23, 'x24': 24, 's8': 24, 'x25': 25, 's9': 25,
    'x26': 26, 's10': 26, 'x27': 27, 's11': 27, 'x28': 28, 't3': 28,
    'x29': 29, 't4': 29, 'x30': 30, 't5': 30, 'x31': 31, 't6': 31
}

def to_bin(val, bits):
    val = int(val)
    if val < 0:
        val = (1 << bits) + val
    return format(val & ((1 << bits) - 1), f'0{bits}b')

def parse_line(line, labels, current_pc):
    # 移除注释和空白
    line = line.split(';')[0].split('#')[0].strip()
    if not line:
        return None
    
    # 检查标签定义
    if line.endswith(':'):
        return None # 标签已在第一遍扫描处理
    
    parts = re.split(r'[,\s\(\)]+', line)
    parts = [p for p in parts if p]
    
    instr = parts[0].lower()
    
    try:
        if instr == 'add': # R-type: add rd, rs1, rs2
            rd, rs1, rs2 = regs[parts[1]], regs[parts[2]], regs[parts[3]]
            # funct7=0000000, rs2, rs1, funct3=000, rd, opcode=0110011
            return f"0000000{to_bin(rs2,5)}{to_bin(rs1,5)}000{to_bin(rd,5)}0110011"
            
        elif instr == 'sub': # R-type: sub rd, rs1, rs2
            rd, rs1, rs2 = regs[parts[1]], regs[parts[2]], regs[parts[3]]
            # funct7=0100000, rs2, rs1, funct3=000, rd, opcode=0110011
            return f"0100000{to_bin(rs2,5)}{to_bin(rs1,5)}000{to_bin(rd,5)}0110011"

        elif instr == 'and': # R-type: and rd, rs1, rs2
            rd, rs1, rs2 = regs[parts[1]], regs[parts[2]], regs[parts[3]]
            # funct7=0000000, rs2, rs1, funct3=111, rd, opcode=0110011
            return f"0000000{to_bin(rs2,5)}{to_bin(rs1,5)}111{to_bin(rd,5)}0110011"

        elif instr == 'or': # R-type: or rd, rs1, rs2
            rd, rs1, rs2 = regs[parts[1]], regs[parts[2]], regs[parts[3]]
            # funct7=0000000, rs2, rs1, funct3=110, rd, opcode=0110011
            return f"0000000{to_bin(rs2,5)}{to_bin(rs1,5)}110{to_bin(rd,5)}0110011"

        elif instr == 'xor': # R-type: xor rd, rs1, rs2
            rd, rs1, rs2 = regs[parts[1]], regs[parts[2]], regs[parts[3]]
            # funct7=0000000, rs2, rs1, funct3=100, rd, opcode=0110011
            return f"0000000{to_bin(rs2,5)}{to_bin(rs1,5)}100{to_bin(rd,5)}0110011"

        elif instr == 'slt': # R-type: slt rd, rs1, rs2
            rd, rs1, rs2 = regs[parts[1]], regs[parts[2]], regs[parts[3]]
            # funct7=0000000, rs2, rs1, funct3=010, rd, opcode=0110011
            return f"0000000{to_bin(rs2,5)}{to_bin(rs1,5)}010{to_bin(rd,5)}0110011"

        elif instr == 'sltu': # R-type: sltu rd, rs1, rs2
            rd, rs1, rs2 = regs[parts[1]], regs[parts[2]], regs[parts[3]]
            # funct7=0000000, rs2, rs1, funct3=011, rd, opcode=0110011
            return f"0000000{to_bin(rs2,5)}{to_bin(rs1,5)}011{to_bin(rd,5)}0110011"

        elif instr == 'sll': # R-type: sll rd, rs1, rs2
            rd, rs1, rs2 = regs[parts[1]], regs[parts[2]], regs[parts[3]]
            # funct7=0000000, rs2, rs1, funct3=001, rd, opcode=0110011
            return f"0000000{to_bin(rs2,5)}{to_bin(rs1,5)}001{to_bin(rd,5)}0110011"

        elif instr == 'srl': # R-type: srl rd, rs1, rs2
            rd, rs1, rs2 = regs[parts[1]], regs[parts[2]], regs[parts[3]]
            # funct7=0000000, rs2, rs1, funct3=101, rd, opcode=0110011
            return f"0000000{to_bin(rs2,5)}{to_bin(rs1,5)}101{to_bin(rd,5)}0110011"

        elif instr == 'sra': # R-type: sra rd, rs1, rs2
            rd, rs1, rs2 = regs[parts[1]], regs[parts[2]], regs[parts[3]]
            # funct7=0100000, rs2, rs1, funct3=101, rd, opcode=0110011
            return f"0100000{to_bin(rs2,5)}{to_bin(rs1,5)}101{to_bin(rd,5)}0110011"
            
        elif instr == 'addi': # I-type: addi rd, rs1, imm
            rd, rs1 = regs[parts[1]], regs[parts[2]]
            imm = int(parts[3], 0)
            # imm[11:0], rs1, funct3=000, rd, opcode=0010011
            return f"{to_bin(imm,12)}{to_bin(rs1,5)}000{to_bin(rd,5)}0010011"

        elif instr == 'andi': # I-type: andi rd, rs1, imm
            rd, rs1 = regs[parts[1]], regs[parts[2]]
            imm = int(parts[3], 0)
            # imm[11:0], rs1, funct3=111, rd, opcode=0010011
            return f"{to_bin(imm,12)}{to_bin(rs1,5)}111{to_bin(rd,5)}0010011"
            
        elif instr == 'xori': # I-type: xori rd, rs1, imm
            rd, rs1 = regs[parts[1]], regs[parts[2]]
            imm = int(parts[3], 0)
            # imm[11:0], rs1, funct3=100, rd, opcode=0010011
            return f"{to_bin(imm,12)}{to_bin(rs1,5)}100{to_bin(rd,5)}0010011"

        elif instr == 'slti': # I-type: slti rd, rs1, imm
            rd, rs1 = regs[parts[1]], regs[parts[2]]
            imm = int(parts[3], 0)
            # imm[11:0], rs1, funct3=010, rd, opcode=0010011
            return f"{to_bin(imm,12)}{to_bin(rs1,5)}010{to_bin(rd,5)}0010011"
            
        elif instr == 'ori': # I-type: ori rd, rs1, imm
            rd, rs1 = regs[parts[1]], regs[parts[2]]
            imm = int(parts[3], 0)
            # imm[11:0], rs1, funct3=110, rd, opcode=0010011
            return f"{to_bin(imm,12)}{to_bin(rs1,5)}110{to_bin(rd,5)}0010011"

        elif instr == 'sltiu': # I-type: sltiu rd, rs1, imm
            rd, rs1 = regs[parts[1]], regs[parts[2]]
            imm = int(parts[3], 0)
            # imm[11:0], rs1, funct3=011, rd, opcode=0010011
            return f"{to_bin(imm,12)}{to_bin(rs1,5)}011{to_bin(rd,5)}0010011"

        elif instr == 'slli': # I-type: slli rd, rs1, shamt
            rd, rs1 = regs[parts[1]], regs[parts[2]]
            shamt = int(parts[3], 0)
            # 0000000, shamt[4:0], rs1, funct3=001, rd, opcode=0010011
            return f"0000000{to_bin(shamt,5)}{to_bin(rs1,5)}001{to_bin(rd,5)}0010011"

        elif instr == 'srli': # I-type: srli rd, rs1, shamt
            rd, rs1 = regs[parts[1]], regs[parts[2]]
            shamt = int(parts[3], 0)
            # 0000000, shamt[4:0], rs1, funct3=101, rd, opcode=0010011
            return f"0000000{to_bin(shamt,5)}{to_bin(rs1,5)}101{to_bin(rd,5)}0010011"

        elif instr == 'srai': # I-type: srai rd, rs1, shamt
            rd, rs1 = regs[parts[1]], regs[parts[2]]
            shamt = int(parts[3], 0)
            # 0100000, shamt[4:0], rs1, funct3=101, rd, opcode=0010011
            return f"0100000{to_bin(shamt,5)}{to_bin(rs1,5)}101{to_bin(rd,5)}0010011"

        elif instr == 'lui': # U-type: lui rd, imm
            rd = regs[parts[1]]
            imm = int(parts[2], 0)
            # imm[31:12], rd, opcode=0110111
            return f"{to_bin(imm,20)}{to_bin(rd,5)}0110111"
            
        elif instr == 'lw': # I-type: lw rd, offset(rs1) -> lw rd, offset, rs1
            rd = regs[parts[1]]
            offset = int(parts[2], 0)
            rs1 = regs[parts[3]]
            # imm[11:0], rs1, funct3=010, rd, opcode=0000011
            return f"{to_bin(offset,12)}{to_bin(rs1,5)}010{to_bin(rd,5)}0000011"
            
        elif instr == 'sw': # S-type: sw rs2, offset(rs1) -> sw rs2, offset, rs1
            rs2 = regs[parts[1]]
            offset = int(parts[2], 0)
            rs1 = regs[parts[3]]
            imm_bin = to_bin(offset, 12)
            # imm[11:5], rs2, rs1, funct3=010, imm[4:0], opcode=0100011
            return f"{imm_bin[:7]}{to_bin(rs2,5)}{to_bin(rs1,5)}010{imm_bin[7:]}0100011"
            
        elif instr == 'beq': # B-type: beq rs1, rs2, label
            rs1, rs2 = regs[parts[1]], regs[parts[2]]
            label = parts[3]
            if label in labels:
                offset = labels[label] - current_pc
            else:
                offset = int(label, 0) # 支持直接写数字
            
            imm_bin = to_bin(offset, 13) # B-type imm is 13 bits (bit 0 is always 0)
            # imm[12], imm[10:5], rs2, rs1, funct3=000, imm[4:1], imm[11], opcode=1100011
            return f"{imm_bin[0]}{imm_bin[2:8]}{to_bin(rs2,5)}{to_bin(rs1,5)}000{imm_bin[8:12]}{imm_bin[1]}1100011"

        elif instr == 'bne': # B-type: bne rs1, rs2, label
            rs1, rs2 = regs[parts[1]], regs[parts[2]]
            label = parts[3]
            if label in labels:
                offset = labels[label] - current_pc
            else:
                offset = int(label, 0) # 支持直接写数字
            
            imm_bin = to_bin(offset, 13) # B-type imm is 13 bits (bit 0 is always 0)
            # imm[12], imm[10:5], rs2, rs1, funct3=001, imm[4:1], imm[11], opcode=1100011
            return f"{imm_bin[0]}{imm_bin[2:8]}{to_bin(rs2,5)}{to_bin(rs1,5)}001{imm_bin[8:12]}{imm_bin[1]}1100011"
            
        elif instr == 'jal': # J-type: jal rd, label
            rd = regs[parts[1]]
            label = parts[2]
            if label in labels:
                offset = labels[label] - current_pc
            else:
                offset = int(label, 0)
                
            imm_bin = to_bin(offset, 21) # J-type imm is 21 bits
            # imm[20], imm[10:1], imm[11], imm[19:12], rd, opcode=1101111
            return f"{imm_bin[0]}{imm_bin[10:20]}{imm_bin[9]}{imm_bin[1:9]}{to_bin(rd,5)}1101111"
            
        else:
            print(f"Unknown instruction: {instr}")
            return None
            
    except Exception as e:
        print(f"Error parsing line: {line}. {e}")
        return None

def main():
    if len(sys.argv) < 2:
        print("Usage: python asm_to_hex.py <asm_file>")
        return

    filepath = sys.argv[1]
    lines = []
    with open(filepath, 'r', encoding='utf-8') as f:
        lines = f.readlines()

    # 第一遍扫描：记录标签地址
    labels = {}
    pc = 0
    for line in lines:
        line = line.split(';')[0].split('#')[0].strip()
        if not line: continue
        if line.endswith(':'):
            labels[line[:-1]] = pc
        else:
            pc += 4

    # 第二遍扫描：生成机器码
    pc = 0
    hex_codes = []
    
    for line in lines:
        line_content = line.split(';')[0].split('#')[0].strip()
        if not line_content: continue
        if line_content.endswith(':'): continue
        
        bin_code = parse_line(line, labels, pc)
        if bin_code:
            hex_code = format(int(bin_code, 2), '08x')
            hex_codes.append(hex_code)
            # print(f"{hex_code}, // {line.strip()}")
        pc += 4
        
    output_filepath = os.path.splitext(filepath)[0] + '.coe'
    with open(output_filepath, 'w', encoding='utf-8') as f:
        f.write("memory_initialization_radix=16;\n")
        f.write("memory_initialization_vector=\n")
        f.write(",\n".join(hex_codes) + ";\n")
    print(f"Output written to {output_filepath}")

if __name__ == '__main__':
    main()
