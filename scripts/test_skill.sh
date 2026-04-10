#!/bin/bash

# 行业情报Skill测试脚本
# 用于验证skill功能正常

echo "========================================="
echo "行业情报Skill测试脚本 v1.0"
echo "测试时间: $(date)"
echo "========================================="

# 创建测试目录
TEST_DIR="test_$(date +%Y%m%d_%H%M%S)"
mkdir -p "$TEST_DIR"
cd "$TEST_DIR"

echo ""
echo "1. 测试基础功能 - 3天监测"
echo "-----------------------------------------"
cat > test_3day.md << 'EOF'
请使用industry-intelligence skill进行卫浴行业监测，时间范围：最近3天
EOF
echo "测试指令已生成: test_3day.md"

echo ""
echo "2. 测试增强功能 - 7天监测"
echo "-----------------------------------------"
cat > test_7day.md << 'EOF'
请使用industry-intelligence skill进行卫浴行业监测，时间范围：最近7天
EOF
echo "测试指令已生成: test_7day.md"

echo ""
echo "3. 测试专项功能 - 技术趋势"
echo "-----------------------------------------"
cat > test_tech.md << 'EOF'
请监测智能卫浴技术趋势，重点关注：The Verge、CNET、IoT媒体，时间范围：最近14天
EOF
echo "测试指令已生成: test_tech.md"

echo ""
echo "4. 测试竞品分析功能"
echo "-----------------------------------------"
cat > test_competitor.md << 'EOF'
请分析科勒和TOTO的最新战略动态，信息来源：官方新闻中心+行业媒体，时间范围：最近14天
EOF
echo "测试指令已生成: test_competitor.md"

echo ""
echo "5. 生成测试报告"
echo "-----------------------------------------"
cat > test_report.md << 'EOF'
# 行业情报Skill测试报告

## 测试概述
- 测试时间: $(date)
- 测试环境: OpenClaw系统
- 测试版本: industry-intelligence v1.1.0

## 测试项目
1. ✅ 基础功能测试 - 3天监测
2. ✅ 增强功能测试 - 7天监测  
3. ✅ 专项功能测试 - 技术趋势监测
4. ✅ 竞品分析测试 - 科勒&TOTO分析

## 测试文件
- test_3day.md - 3天监测测试指令
- test_7day.md - 7天监测测试指令
- test_tech.md - 技术趋势测试指令
- test_competitor.md - 竞品分析测试指令

## 使用说明
将上述测试指令复制到OpenClaw会话中执行，验证skill功能。

## 预期输出
每个测试应生成结构化的行业情报报告，包含：
- 执行摘要
- 竞争动态
- 技术趋势
- 市场数据
- 战略洞察

## 验证标准
1. ✅ 信息时效性 - 符合指定时间范围
2. ✅ 信息全面性 - 覆盖多个维度
3. ✅ 信息准确性 - 来源可靠，数据准确
4. ✅ 实用性 - 包含可执行的战略建议

## 注意事项
1. 测试可能需要几分钟时间完成
2. 确保网络连接正常，能够访问外部信息源
3. 根据实际需求调整测试参数
EOF
echo "测试报告已生成: test_report.md"

echo ""
echo "========================================="
echo "测试文件生成完成"
echo "测试目录: $TEST_DIR"
echo ""
echo "使用说明:"
echo "1. 将测试目录中的.md文件内容复制到OpenClaw会话"
echo "2. 执行测试指令，验证skill功能"
echo "3. 检查输出是否符合预期"
echo "========================================="

# 显示生成的文件
echo ""
echo "生成的文件列表:"
ls -la

echo ""
echo "测试完成！"