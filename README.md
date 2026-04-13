# GitHub 发布文档库

> 摘要：用于整理并发布 Markdown 文档到 GitHub，方便外网访问的专用文件夹。

## 目录结构

```
github-publish/
├── README.md          # 本文件
├── docs/              # 放你要发布的 .md 文件
├── .gitignore         # Git 忽略规则
├── push-to-github.sh  # 一键推送到 GitHub 脚本
└── setup-github.sh    # GitHub 仓库初始化配置脚本
```

## 快速开始

### 1. 把要发布的 .md 文件放入 `docs/` 文件夹

可以直接复制知识库或其他目录的 Markdown 文件到这里。

### 2. 配置 GitHub 仓库地址

编辑 `setup-github.sh`，把 `YOUR_USERNAME` 和 `YOUR_REPO` 换成你的 GitHub 用户名和仓库名，然后运行：

```bash
bash setup-github.sh
```

### 3. 推送内容到 GitHub

```bash
bash push-to-github.sh "初次发布文档"
```

推送后，你的文档可以通过以下链接在外网访问：

- 仓库主页：`https://github.com/YOUR_USERNAME/YOUR_REPO`
- 直接阅读某篇文档：`https://github.com/YOUR_USERNAME/YOUR_REPO/blob/main/docs/你的文件.md`

## 提示

- 如果仓库设为 **Public**，任何人无需登录即可查看文档。
- 如需更美观的在线阅读效果，可以在 GitHub 仓库设置中开启 **GitHub Pages**，将 `main` 分支的 `/docs` 文件夹作为站点源。
