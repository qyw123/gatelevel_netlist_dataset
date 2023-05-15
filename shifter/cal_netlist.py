import os

def get_folder_size(folder_path):
    total_size = 0
    for dirpath, dirnames, filenames in os.walk(folder_path):
        for f in filenames:
            fp = os.path.join(dirpath, f)
            total_size += os.path.getsize(fp)
    return total_size

def find_result_folders(root):
    result_folders = []
    for dirpath, dirnames, filenames in os.walk(root):
        if "result" in dirnames:
            result_folders.append(os.path.join(dirpath, "result"))
    return result_folders

result_folders = find_result_folders(".")
total_size = 0
for folder in result_folders:
    folder_size = get_folder_size(folder)
    print("Folder", folder, "size:", folder_size, "bytes")
    total_size += folder_size

num_folders = len(result_folders)
if num_folders > 0:
    avg_size = total_size / num_folders
    print("Average folder size:", avg_size, "bytes")
    print("Folder count:", num_folders)
else:
    print("No result folders found.")