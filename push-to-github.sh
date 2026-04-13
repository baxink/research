#!/bin/bash
# 一键推送到 GitHub 脚本

COMMIT_MSG="${1:-更新文档}"

echo "添加所有更改..."
git add .

echo "提交更改: ${COMMIT_MSG}"
git commit -m "${COMMIT_MSG}"

echo "推送到 GitHub..."
git push -u origin main

echo "推送完成！"
