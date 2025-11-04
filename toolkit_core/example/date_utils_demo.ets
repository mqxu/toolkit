/**
 * DateUtils 日期工具类使用示例
 * @author mqxu
 */
import { DateUtils } from '@mqxu/toolkit_core';

@Entry
@Component
struct DateUtilsDemo {
  @State results: string[] = [];

  aboutToAppear() {
    this.runExamples();
  }

  runExamples() {
    const now = new Date();
    const timestamp = now.getTime();

    // 1. 日期格式化
    this.results.push('=== 日期格式化 ===');
    this.results.push(`format(now, 'yyyy-MM-dd'): ${DateUtils.format(now, 'yyyy-MM-dd')}`);
    this.results.push(`format(now, 'yyyy-MM-dd HH:mm:ss'): ${DateUtils.format(now, 'yyyy-MM-dd HH:mm:ss')}`);
    this.results.push(`format(now, 'yyyy年MM月dd日'): ${DateUtils.format(now, 'yyyy年MM月dd日')}`);
    this.results.push(`format(now, 'HH:mm:ss'): ${DateUtils.format(now, 'HH:mm:ss')}`);

    // 2. 时间戳格式化
    this.results.push('\n=== 时间戳格式化 ===');
    this.results.push(`formatTimestamp(${timestamp}): ${DateUtils.formatTimestamp(timestamp)}`);
    this.results.push(`formatTimestamp(${timestamp}, 'yyyy/MM/dd'): ${DateUtils.formatTimestamp(timestamp, 'yyyy/MM/dd')}`);

    // 3. 日期解析
    this.results.push('\n=== 日期解析 ===');
    const parsedDate = DateUtils.parse('2025-11-04', 'yyyy-MM-dd');
    this.results.push(`parse('2025-11-04', 'yyyy-MM-dd'): ${parsedDate?.toString()}`);

    // 4. 相对时间
    this.results.push('\n=== 相对时间 ===');
    const oneHourAgo = new Date(now.getTime() - 60 * 60 * 1000);
    const oneDayAgo = new Date(now.getTime() - 24 * 60 * 60 * 1000);
    const oneWeekAgo = new Date(now.getTime() - 7 * 24 * 60 * 60 * 1000);

    this.results.push(`timeAgo(1小时前): ${DateUtils.timeAgo(oneHourAgo)}`);
    this.results.push(`timeAgo(1天前): ${DateUtils.timeAgo(oneDayAgo)}`);
    this.results.push(`timeAgo(1周前): ${DateUtils.timeAgo(oneWeekAgo)}`);

    // 5. 日期计算
    this.results.push('\n=== 日期计算 ===');
    const tomorrow = DateUtils.addDays(now, 1);
    const nextWeek = DateUtils.addDays(now, 7);
    const nextMonth = DateUtils.addMonths(now, 1);

    this.results.push(`addDays(now, 1): ${DateUtils.format(tomorrow, 'yyyy-MM-dd')}`);
    this.results.push(`addDays(now, 7): ${DateUtils.format(nextWeek, 'yyyy-MM-dd')}`);
    this.results.push(`addMonths(now, 1): ${DateUtils.format(nextMonth, 'yyyy-MM-dd')}`);

    // 6. 日期差值
    this.results.push('\n=== 日期差值 ===');
    const startDate = new Date('2025-01-01');
    const endDate = new Date('2025-12-31');
    this.results.push(`diffDays(2025-01-01, 2025-12-31): ${DateUtils.diffDays(startDate, endDate)} 天`);

    // 7. 日期判断
    this.results.push('\n=== 日期判断 ===');
    this.results.push(`isToday(now): ${DateUtils.isToday(now)}`); // true
    this.results.push(`isToday(yesterday): ${DateUtils.isToday(oneDayAgo)}`); // false
    this.results.push(`isSameDay(now, now): ${DateUtils.isSameDay(now, now)}`); // true

    // 8. 获取日期信息
    this.results.push('\n=== 获取日期信息 ===');
    this.results.push(`getYear(now): ${DateUtils.getYear(now)}`);
    this.results.push(`getMonth(now): ${DateUtils.getMonth(now)}`);
    this.results.push(`getDay(now): ${DateUtils.getDay(now)}`);
    this.results.push(`getWeekDay(now): ${DateUtils.getWeekDay(now)}`);
  }

  build() {
    Column() {
      Text('DateUtils 示例')
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
