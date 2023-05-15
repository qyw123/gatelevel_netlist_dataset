import os
import shutil

def copy_files():
    # 获取当前脚本所在目录的绝对路径
    dir_path = os.path.abspath(os.path.dirname(__file__))
    syn_tool_path =  "C:/Users/qyw/Desktop/脚本工具/syn_tool"
    beforesyn_tool_path = "C:/Users/qyw/Desktop/脚本工具/before_syn.py"
    dirmaker_tool_path = "C:/Users/qyw/Desktop/脚本工具/dir_maker.py"
    manysyn_tool_path = "C:/Users/qyw/Desktop/脚本工具/many_syn.sh"

    # 遍历当前目录及其子目录
    for root, dirs, files in os.walk(dir_path):
        # 如果当前目录包含名为verilog的子目录
        if "verilog" in dirs:
            # 获取verilog目录的绝对路径
            verilog_path = os.path.join(root, "verilog")
            # 如果syn_tool目录存在且不在verilog目录所在的路径下
            if os.path.exists(syn_tool_path) and not syn_tool_path.startswith(verilog_path):
                if os.path.exists(os.path.join(root, "syn_tool")):
                    shutil.rmtree(os.path.join(root, "syn_tool"))
                    #print(f"文件 {os.path.join(root, "syn_tool")} 已经存在，已经被删除")
                # 将syn_tool目录复制到verilog目录所在的路径下
                shutil.copytree(syn_tool_path, os.path.join(root, "syn_tool"))
                shutil.copy(beforesyn_tool_path, os.path.join(os.path.join(root, ".."), "before_syn.py"))
                shutil.copy(dirmaker_tool_path, os.path.join(os.path.join(root, ".."), "dir_maker.py"))
                shutil.copy(manysyn_tool_path, os.path.join(os.path.join(root, ".."), "many_syn.sh"))

def execute():
    for root, dirs, files in os.walk("."):
        for file in files:
            if file.endswith("before_syn.py"):
                path = os.path.join(root, file)
                os.system("python " + path)
                #print(path)

if __name__ == "__main__":
    copy_files()
    execute()
