#!/bin/bash
# 项目环境一键初始化脚本

# 检查 Python 3 是否安装
if ! command -v python3 &> /dev/null
then
    echo "❌ Python3 未找到，请先安装 Python3"
    exit 1
fi

# 创建虚拟环境
echo "📦 创建虚拟环境 .venv ..."
python3 -m venv .venv

# 激活虚拟环境
echo "🔌 激活虚拟环境 ..."
source .venv/bin/activate

# 升级 pip
echo "⬆️ 升级 pip ..."
pip install --upgrade pip

# 安装依赖
if [ -f "requirements.txt" ]; then
    echo "📥 安装 requirements.txt 中的依赖 ..."
    pip install -r requirements.txt
else
    echo "⚠️ 未找到 requirements.txt，跳过依赖安装"
fi

echo "✅ 虚拟环境已创建并安装依赖！"
echo "💡 现在可以用 VS Code 打开项目，并运行 main.py 了。"