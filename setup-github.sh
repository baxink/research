#!/bin/bash
# GitHub 仓库初始化配置脚本

# 请修改以下变量为你的 GitHub 用户名和仓库名
GITHUB_USER="YOUR_USERNAME"
GITHUB_REPO="YOUR_REPO"

REMOTE_URL="https://github.com/${GITHUB_USER}/${GITHUB_REPO}.git"

echo "配置远程仓库: ${REMOTE_URL}"

# 如果已有 remote，则删除后重新添加
git remote remove origin 2>/dev/null
git remote add origin "${REMOTE_URL}"

echo "当前远程仓库:"
git remote -v

echo ""
echo "提示：如果你还没有在 GitHub 上创建仓库，请访问:"
echo "https://github.com/new"
echo "创建名为 ${GITHUB_REPO} 的仓库（建议设为 Public）"
