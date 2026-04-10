# 行业情报Skill安装指南

## 系统要求
- OpenClaw v2026.4.8 或更高版本
- 网络连接（用于访问外部信息源）
- 足够的存储空间（约10MB）

## 安装步骤

### 方法一：直接复制安装（推荐）

1. **定位OpenClaw skills目录**
   ```bash
   # 通常位于以下位置之一
   ~/.openclaw/workspace/skills/
   /root/.openclaw/workspace/skills/
   ```

2. **复制skill文件夹**
   ```bash
   cp -r industry-intelligence ~/.openclaw/workspace/skills/
   ```

3. **验证安装**
   ```bash
   ls -la ~/.openclaw/workspace/skills/industry-intelligence/
   ```

### 方法二：使用clawhub安装（如果支持）

1. **发布到clawhub**（需要clawhub账户）
   ```bash
   clawhub publish industry-intelligence
   ```

2. **从clawhub安装**
   ```bash
   clawhub install industry-intelligence
   ```

### 方法三：Git安装（如果skill托管在Git仓库）

1. **克隆仓库**
   ```bash
   cd ~/.openclaw/workspace/skills/
   git clone https://github.com/cerellean/industry-intelligence.git
   ```

## 安装验证

### 验证skill文件结构
```bash
cd ~/.openclaw/workspace/skills/industry-intelligence/
tree .
```

**预期文件结构**：
```
industry-intelligence/
├── SKILL.md          # 主技能文件
├── README.md         # 说明文档
├── INSTALL.md        # 安装指南
├── references/       # 参考文件
│   ├── config_reference.md
│   └── usage_examples.md
├── scripts/          # 辅助脚本
│   └── test_skill.sh
└── test/            # 测试文件
    ├── test_sources.md
    └── test_results.md
```

### 运行测试脚本
```bash
cd ~/.openclaw/workspace/skills/industry-intelligence/scripts/
./test_skill.sh
```

### 手动测试
在OpenClaw会话中执行：
```
请使用industry-intelligence skill进行卫浴行业监测，时间范围：最近3天
```

## 配置调整

### 自定义监测品牌
编辑 `SKILL.md` 文件，修改以下部分：
```markdown
### 🎯 1. 竞争对手监测
**重点监测品牌**：
- 国际品牌：科勒(Kohler)、TOTO、汉斯格雅(Hansgrohe)...
- 国内品牌：九牧、箭牌、恒洁、惠达、东鹏...
```

### 调整信息源优先级
编辑 `SKILL.md` 文件，修改数据源配置部分。

### 设置默认监测频率
在 `references/config_reference.md` 中调整监测频率建议。

## 使用前准备

### 1. 确认网络访问
确保系统能够访问以下类型网站：
- 国际网站（dezeen.com、theverge.com等）
- 国内行业网站
- 政府官网
- 企业官网

### 2. 测试信息源可用性
运行信息源测试：
```bash
cd ~/.openclaw/workspace/skills/industry-intelligence/test/
# 查看测试结果
cat test_results.md
```

### 3. 设置定期执行（可选）
如果需要定期自动执行，可以设置cron任务：
```bash
# 示例：每周一上午9点执行
0 9 * * 1 openclaw run "请使用industry-intelligence skill进行卫浴行业监测，时间范围：最近7天"
```

## 故障排除

### 常见问题1：skill无法识别
**症状**：执行指令后没有反应或报错
**解决**：
1. 确认skill文件夹名称正确
2. 确认SKILL.md文件存在且格式正确
3. 重启OpenClaw服务

### 常见问题2：信息获取失败
**症状**：报告内容为空或信息不全
**解决**：
1. 检查网络连接
2. 确认信息源网站可访问
3. 调整搜索关键词

### 常见问题3：输出格式异常
**症状**：报告格式混乱或缺失部分
**解决**：
1. 检查SKILL.md中的输出模板
2. 确认OpenClaw版本兼容性
3. 查看执行日志

## 升级说明

### 从v1.0升级到v1.1
1. 备份现有配置（如果需要）
2. 删除旧版本文件夹
3. 安装新版本
4. 恢复自定义配置

### 版本兼容性
- v1.1.0：增强信息源，支持全球监测
- v1.0.0：基础功能，国内监测为主

## 卸载说明

### 完全卸载
```bash
rm -rf ~/.openclaw/workspace/skills/industry-intelligence/
```

### 保留配置卸载
```bash
# 备份自定义配置
cp -r ~/.openclaw/workspace/skills/industry-intelligence/references/my_config/ ~/backup/
# 删除skill
rm -rf ~/.openclaw/workspace/skills/industry-intelligence/
```

## 技术支持

### 文档资源
1. `README.md` - 基本介绍
2. `references/` - 详细配置参考
3. `usage_examples.md` - 使用示例

### 问题反馈
如遇问题，请提供：
1. OpenClaw版本信息
2. 错误信息或日志
3. 执行的具体指令
4. 期望与实际结果对比

### 更新日志
查看SKILL.md文件中的版本历史部分。

---

**安装完成！** 现在您可以开始使用industry-intelligence skill进行行业情报收集了。
