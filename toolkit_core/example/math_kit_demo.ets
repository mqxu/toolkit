/**
 * MathKit 数学工具类使用示例
 * @author mqxu
 */
import { MathKit } from '@mqxu/toolkit_core';

@Entry
@Component
struct MathKitDemo {
  @State results: string[] = [];

  aboutToAppear() {
    this.runExamples();
  }

  runExamples() {
    // 1. 数值格式化
    this.results.push('=== 数值格式化 ===');
    this.results.push(`formatNumber(1234567.89): ${MathKit.formatNumber(1234567.89)}`); // 1,234,567.89
    this.results.push(`formatNumber(1234567.89, 0): ${MathKit.formatNumber(1234567.89, 0)}`); // 1,234,568
    this.results.push(`formatNumber(1234567.89, 1): ${MathKit.formatNumber(1234567.89, 1)}`); // 1,234,567.9

    // 2. 金额格式化
    this.results.push('\n=== 金额格式化 ===');
    this.results.push(`formatCurrency(1234.56): ${MathKit.formatCurrency(1234.56)}`); // ¥1,234.56
    this.results.push(`formatCurrency(1234.56, '$'): ${MathKit.formatCurrency(1234.56, '$')}`); // $1,234.56
    this.results.push(`formatCurrency(1234.5): ${MathKit.formatCurrency(1234.5)}`); // ¥1,234.50

    // 3. 百分比计算
    this.results.push('\n=== 百分比计算 ===');
    this.results.push(`percentage(45, 100): ${MathKit.percentage(45, 100)}%`); // 45
    this.results.push(`percentage(33.333, 100): ${MathKit.percentage(33.333, 100)}%`); // 33.33
    this.results.push(`percentage(45, 100, 0): ${MathKit.percentage(45, 100, 0)}%`); // 45

    // 4. 数值范围限制
    this.results.push('\n=== 数值范围限制 ===');
    this.results.push(`clamp(50, 0, 100): ${MathKit.clamp(50, 0, 100)}`); // 50
    this.results.push(`clamp(-10, 0, 100): ${MathKit.clamp(-10, 0, 100)}`); // 0
    this.results.push(`clamp(150, 0, 100): ${MathKit.clamp(150, 0, 100)}`); // 100

    // 5. 随机数生成
    this.results.push('\n=== 随机数生成 ===');
    this.results.push(`random(1, 100): ${MathKit.random(1, 100)}`);
    this.results.push(`random(1, 100): ${MathKit.random(1, 100)}`);
    this.results.push(`random(1, 100): ${MathKit.random(1, 100)}`);

    // 6. 数值四舍五入
    this.results.push('\n=== 数值四舍五入 ===');
    this.results.push(`round(3.14159, 2): ${MathKit.round(3.14159, 2)}`); // 3.14
    this.results.push(`round(3.14159, 3): ${MathKit.round(3.14159, 3)}`); // 3.142
    this.results.push(`round(3.14159, 0): ${MathKit.round(3.14159, 0)}`); // 3

    // 7. 文件大小格式化
    this.results.push('\n=== 文件大小格式化 ===');
    this.results.push(`formatFileSize(1024): ${MathKit.formatFileSize(1024)}`); // 1.00 KB
    this.results.push(`formatFileSize(1048576): ${MathKit.formatFileSize(1048576)}`); // 1.00 MB
    this.results.push(`formatFileSize(1073741824): ${MathKit.formatFileSize(1073741824)}`); // 1.00 GB
    this.results.push(`formatFileSize(500): ${MathKit.formatFileSize(500)}`); // 500 B

    // 8. 数值求和
    this.results.push('\n=== 数值求和 ===');
    this.results.push(`sum([1, 2, 3, 4, 5]): ${MathKit.sum([1, 2, 3, 4, 5])}`); // 15
    this.results.push(`sum([10, 20, 30]): ${MathKit.sum([10, 20, 30])}`); // 60

    // 9. 数值平均值
    this.results.push('\n=== 数值平均值 ===');
    this.results.push(`average([1, 2, 3, 4, 5]): ${MathKit.average([1, 2, 3, 4, 5])}`); // 3
    this.results.push(`average([10, 20, 30]): ${MathKit.average([10, 20, 30])}`); // 20

    // 10. 最大值和最小值
    this.results.push('\n=== 最大值和最小值 ===');
    this.results.push(`max([1, 5, 3, 9, 2]): ${MathKit.max([1, 5, 3, 9, 2])}`); // 9
    this.results.push(`min([1, 5, 3, 9, 2]): ${MathKit.min([1, 5, 3, 9, 2])}`); // 1
  }

  build() {
    Column() {
      Text('MathKit 示例')
        .fontSize(24)
        .fontWeight(FontWeight.Bold)
        .margin({ top: 20, bottom: 20 })

      Scroll() {
        Column() {
          ForEach(this.results, (result: string) => {
            Text(result)
              .fontSize(14)
              .fontColor(result.includes('===') ? '#007AFF' : '#000000')
              .fontWeight(result.includes('===') ? FontWeight.Bold : FontWeight.Normal)
              .margin({ bottom: 8 })
              .width('100%')
              .textAlign(TextAlign.Start)
          })
        }
        .padding(16)
      }
      .layoutWeight(1)
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F2F2F7')
  }
}
