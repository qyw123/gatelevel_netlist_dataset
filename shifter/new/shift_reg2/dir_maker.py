import os
import shutil
import itertools

# 获取当前工作目录路径
# xxx\xxx\.....\dir_maker.py\..
path = os.path.join(os.path.abspath(__file__),'..')

#必须要保证文件夹名称与顶层模块名相同
path_list = os.listdir(path)
#print(path)
for item in path_list:
    #print(item)
    if('.' not in item):
        old_folder = item
        break
old_path = os.path.join(path, old_folder)
#print(old_path)
for i in range(3):
    new_folder = old_path + f"_{i+1}"   
    #print(new_folder)


result_path = os.path.join(old_path,'result')
for filename in os.listdir(result_path):
    if filename.endswith('.v'):
        frist_netlist_path = os.path.join(result_path, filename)

with open(frist_netlist_path, 'r') as f:
    # 读取原文件内容
    content = f.readlines()

# 找到第二个空行后的位置
idx = 0
count = 0
for i, char in enumerate(content):
    if char == '\n':
        count += 1
        #print(count)
        if count == 2:
            idx = i + 1
            #print(content[idx])
            break

new_content = []
for line in content[idx:-2]:
    line = line.strip()
    if not line:
        continue
    new_content.append(line.split()[0])

# 将每行第一个词组成一个集合
unique_words = set(new_content)
full_exp_cell = set()
#必不可少的cell
must_cell = ['GTECH_NOT']
for cell in unique_words:
    if(cell.startswith('GTECH') and cell not in must_cell) :
        new_cell = 'gtech/'+cell
        full_exp_cell.add(new_cell)
#print(full_exp_cell)

data_lines = []
for i in range(1, 4):
    for combination in itertools.combinations(full_exp_cell, i):
        str_com = ' '.join(combination)
        data_lines.append(str_com)
#print(data_lines)

# Create folders and process the files
for i in range(len(data_lines)):
    new_path = old_path + f"_{i+1}"                  
    os.makedirs(new_folder, exist_ok=True)
    os.makedirs(os.path.join(new_path,'syn_tool'), exist_ok=True)

    # Copy verilog folder
    shutil.copytree(os.path.join(old_path,"verilog"), os.path.join(new_path,"verilog"))
    # Copy filelist.tcl run.tcl and synopsys_dc.setup
    shutil.copy(os.path.join(old_path,"syn_tool","filelist.tcl"), os.path.join(new_path,"syn_tool","filelist.tcl"))
    shutil.copy(os.path.join(old_path,"syn_tool","run.tcl"), os.path.join(new_path,"syn_tool","run.tcl"))
    shutil.copy(os.path.join(old_path,"syn_tool","synopsys_dc.setup"), os.path.join(new_path,"syn_tool","synopsys_dc.setup"))

    # Modify and copy synopsys.sdc
    with open(os.path.join(old_path,"syn_tool","synopsys.sdc"), "r") as f:
        sdc_lines = f.readlines()

    with open(os.path.join(new_path,"syn_tool","synopsys.sdc"), "w") as f:
        for idx, line in enumerate(sdc_lines):
            if idx == 1:  # Modify the second line
                new_line = line.replace("}", " "+data_lines[i-1]+"}")
                f.write(new_line)
            else:
                f.write(line)

    # Modify and copy top.tcl
    with open(os.path.join(old_path,"syn_tool","top.tcl"), "r") as f:
        top_lines = f.readlines()

    with open(os.path.join(new_path,"syn_tool","top.tcl"), "w") as f:
        for line in top_lines:
            if "set num" in line:
                new_line = line.replace("0", str(i+1))
                f.write(new_line)
            else:
                f.write(line)
