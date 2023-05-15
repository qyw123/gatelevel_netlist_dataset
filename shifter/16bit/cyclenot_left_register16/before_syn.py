import os
path = os.path.join(os.path.abspath(__file__),'..')# 获取当前工作目录路径

path_list = os.listdir(path) #必须要保证文件夹名称与顶层模块名相同!!!!!!!!!!!!!!!
for item in path_list:
    if('.' not in item):
        design_name = item
        project_path = os.path.join(path,design_name)
        break

# make filelist.tcl
verilog_files = os.listdir(os.path.join(project_path,"verilog"))
with open(os.path.join(project_path,"syn_tool/filelist.tcl"), "w") as f:
    for verilog_file in verilog_files:
        f.write(f"analyze -f SVERILOG -library DEFAULT ../verilog/{verilog_file}\n")

# make top.tcl
with open(os.path.join(project_path,"syn_tool/top_old.tcl"),"r") as f1:
    with open(os.path.join(project_path,"syn_tool/top.tcl"), "w") as f2:
        lines = f1.readlines()
        for line in lines:
            if(line.startswith("set Design")):
                line = "set Design " + design_name + '\n'
            f2.write(line)