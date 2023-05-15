import os
import shutil

def copy_all_results(root_folder_path):
    # 遍历目录树
    for foldername, subfolders, filenames in os.walk(root_folder_path):
        # 检查是否存在aaa_result文件夹
        if "aaa_result" in subfolders:
            # 构造路径
            source_folder_path = os.path.join(foldername, "aaa_result")
            destination_folder_path = os.path.join(root_folder_path, "all_result")

            # 如果目标文件夹不存在，创建它
            if not os.path.exists(destination_folder_path):
                os.makedirs(destination_folder_path)

            # 遍历文件夹中的文件，复制到目标文件夹中
            for filename in os.listdir(source_folder_path):
                source_file_path = os.path.join(source_folder_path, filename)
                destination_file_path = os.path.join(destination_folder_path, filename)

                if os.path.isfile(source_file_path):
                    shutil.copy(source_file_path, destination_file_path)
        
        # 递归处理子目录
        
        for subfolder in subfolders:
            subfolder_path = os.path.join(foldername, subfolder)
            copy_all_results(subfolder_path)

# 输入根文件夹路径，查找所有的aaa_result文件夹并复制其中的文件到all_result文件夹中
root_folder_path = os.path.join(os.path.abspath(__file__),'..')# 获取当前工作目录路径
print(root_folder_path)
#copy_all_results(root_folder_path)