#!/bin/bash

# 获取脚本所在目录的绝对路径
SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

# 在脚本所在目录中查找所有的 run.tcl 文件并执行
find "$SCRIPT_DIR" -name "run.tcl" -type f -exec sh -c 'cd "$(dirname "{}")" && source "$(basename "{}")"' \;