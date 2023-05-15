import os

if __name__ == "__main__":
    for root, dirs, files in os.walk("."):
        for file in files:
            f = file
            if file == "dir_maker.py":
                path = os.path.join(root, file)
                os.system("python " + path)
                print(path)