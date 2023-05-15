import os

def get_folder_size(folder_path):
    total_size = 0
    for dirpath, dirnames, filenames in os.walk(folder_path):
        for f in filenames:
            fp = os.path.join(dirpath, f)
            total_size += os.path.getsize(fp)
    return total_size

def find_verilog_folders(root):
    verilog_folders = []
    for dirpath, dirnames, filenames in os.walk(root):
        if "verilog" in dirnames:
            verilog_folders.append(os.path.join(dirpath, "verilog"))
    return verilog_folders

verilog_folders = find_verilog_folders(".")
total_size = 0
for folder in verilog_folders:
    folder_size = get_folder_size(folder)
    print("Folder", folder, "size:", folder_size, "bytes")
    total_size += folder_size
    
if len(verilog_folders) > 0:
    avg_size = total_size / len(verilog_folders)
    print("Average folder size:", avg_size, "bytes")
else:
    print("No verilog folders found.")