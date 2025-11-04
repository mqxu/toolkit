/**
 * JsonConverter JSON 转换工具类使用示例
 * @author mqxu
 */
import { JsonConverter } from '@mqxu/toolkit_core';

// 定义测试用的数据模型
class User {
  id: number = 0;
  name: string = '';
  email: string = '';
  age: number = 0;
}

class Course {
  id: number = 0;
  title: string = '';
  price: number = 0;
  tags: string[] = [];
  instructor: User = new User();
}

@Entry
@Component
struct JsonConverterDemo {
  @State results: string[] = [];

  aboutToAppear() {
    this.runExamples();
  }

  runExamples() {
    // 1. 对象转 JSON 字符串
    this.results.push('=== 对象转 JSON 字符串 ===');
    const user: User = {
      id: 1,
      name: '张三',
      email: 'zhangsan@example.com',
      age: 25
    };

    const userJson = JsonConverter.toJson(user);
    this.results.push(`User 对象: ${userJson}`);

    // 2. JSON 字符串转对象
    this.results.push('\n=== JSON 字符串转对象 ===');
    const jsonStr = '{"id":2,"name":"李四","email":"lisi@example.com","age":30}';
    const parsedUser = JsonConverter.parse<User>(jsonStr);

    if (parsedUser) {
      this.results.push(`解析结果:`);
      this.results.push(`  id: ${parsedUser.id}`);
      this.results.push(`  name: ${parsedUser.name}`);
      this.results.push(`  email: ${parsedUser.email}`);
      this.results.push(`  age: ${parsedUser.age}`);
    }

    // 3. 复杂对象转换
    this.results.push('\n=== 复杂对象转换 ===');
    const course: Course = {
      id: 101,
      title: 'HarmonyOS 开发入门',
      price: 99.99,
      tags: ['鸿蒙', '移动开发', '前端'],
      instructor: {
        id: 1,
        name: '王老师',
        email: 'wang@example.com',
        age: 35
      }
    };

    const courseJson = JsonConverter.toJson(course);
    this.results.push(`Course 对象: ${courseJson}`);

    // 4. 数组对象转换
    this.results.push('\n=== 数组对象转换 ===');
    const users: User[] = [
      { id: 1, name: '张三', email: 'zhangsan@example.com', age: 25 },
      { id: 2, name: '李四', email: 'lisi@example.com', age: 30 },
      { id: 3, name: '王五', email: 'wangwu@example.com', age: 28 }
    ];

    const usersJson = JsonConverter.toJson(users);
    this.results.push(`Users 数组: ${usersJson}`);

    // 5. 格式化 JSON
    this.results.push('\n=== 格式化 JSON ===');
    const formattedJson = JsonConverter.toJson(user, true);
    this.results.push('格式化后的 JSON:');
    formattedJson.split('\n').forEach(line => {
      this.results.push(line);
    });

    // 6. 异常处理
    this.results.push('\n=== 异常处理 ===');
    const invalidJson = '{ invalid json }';
    const result = JsonConverter.parse(invalidJson);

    if (result === null) {
      this.results.push('解析失败: 无效的 JSON 字符串');
    }

    // 7. 深拷贝
    this.results.push('\n=== 深拷贝 ===');
    const originalUser = { id: 1, name: '原始用户', email: 'original@example.com', age: 25 };
    const clonedUser = JsonConverter.deepClone(originalUser);

    if (clonedUser) {
      this.results.push(`原始对象: ${JsonConverter.toJson(originalUser)}`);
      this.results.push(`克隆对象: ${JsonConverter.toJson(clonedUser)}`);
      this.results.push(`是否为同一对象: ${originalUser === clonedUser}`); // false
    }

    // 8. 判断是否为有效 JSON
    this.results.push('\n=== 判断是否为有效 JSON ===');
    const validJson = '{"name":"test"}';
    const invalidJson2 = '{name:test}';

    this.results.push(`"${validJson}" 是否有效: ${JsonConverter.isValidJson(validJson)}`); // true
    this.results.push(`"${invalidJson2}" 是否有效: ${JsonConverter.isValidJson(invalidJson2)}`); // false
  }

  build() {
    Column() {
      Text('JsonConverter 示例')
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
