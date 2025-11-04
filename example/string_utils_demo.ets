/**
 * StringUtils 字符串工具类使用示例
 * @author mqxu
 */
import { StringUtils } from '@mqxu/toolkit_core';

@Entry
@Component
struct StringUtilsDemo {
  @State results: string[] = [];

  aboutToAppear() {
    this.runExamples();
  }

  runExamples() {
    // 1. 判空检查
    this.results.push('=== 判空检查 ===');
    this.results.push(`isEmpty(''): ${StringUtils.isEmpty('')}`); // true
    this.results.push(`isEmpty('hello'): ${StringUtils.isEmpty('hello')}`); // false
    this.results.push(`isNotEmpty('world'): ${StringUtils.isNotEmpty('world')}`); // true

    // 2. 字符串验证
    this.results.push('\n=== 字符串验证 ===');
    this.results.push(`isPhone('13812345678'): ${StringUtils.isPhone('13812345678')}`); // true
    this.results.push(`isEmail('user@example.com'): ${StringUtils.isEmail('user@example.com')}`); // true
    this.results.push(`isIdCard('110101199001011234'): ${StringUtils.isIdCard('110101199001011234')}`); // true
    this.results.push(`isUrl('https://www.example.com'): ${StringUtils.isUrl('https://www.example.com')}`); // true

    // 3. 字符串脱敏
    this.results.push('\n=== 字符串脱敏 ===');
    this.results.push(`maskPhone('13812345678'): ${StringUtils.maskPhone('13812345678')}`); // 138****5678
    this.results.push(`maskEmail('user@example.com'): ${StringUtils.maskEmail('user@example.com')}`); // u***@example.com
    this.results.push(`maskIdCard('110101199001011234'): ${StringUtils.maskIdCard('110101199001011234')}`); // 110101********1234

    // 4. UUID 生成
    this.results.push('\n=== UUID 生成 ===');
    this.results.push(`generateUUID(): ${StringUtils.generateUUID()}`);
    this.results.push(`generateUUID(): ${StringUtils.generateUUID()}`);

    // 5. 字符串转换
    this.results.push('\n=== 字符串转换 ===');
    this.results.push(`capitalize('hello'): ${StringUtils.capitalize('hello')}`); // Hello
    this.results.push(`toUpperCase('world'): ${StringUtils.toUpperCase('world')}`); // WORLD
    this.results.push(`toLowerCase('HELLO'): ${StringUtils.toLowerCase('HELLO')}`); // hello

    // 6. 字符串截取
    this.results.push('\n=== 字符串截取 ===');
    const longText = '这是一段很长的文本内容,需要进行截取处理';
    this.results.push(`truncate(longText, 10): ${StringUtils.truncate(longText, 10)}`);
    this.results.push(`truncate(longText, 10, '***'): ${StringUtils.truncate(longText, 10, '***')}`);
  }

  build() {
    Column() {
      Text('StringUtils 示例')
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
