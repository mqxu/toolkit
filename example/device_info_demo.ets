/**
 * DeviceInfo 设备信息工具类使用示例
 * @author mqxu
 */
import { DeviceInfo, type DeviceFullInfo } from '@mqxu/toolkit_core';

@Entry
@Component
struct DeviceInfoDemo {
  @State results: string[] = [];

  async aboutToAppear() {
    await this.runExamples();
  }

  async runExamples() {
    // 1. 获取设备品牌
    this.results.push('=== 设备基本信息 ===');
    const brand = await DeviceInfo.getBrand();
    this.results.push(`设备品牌: ${brand}`);

    // 2. 获取设备型号
    const model = await DeviceInfo.getModel();
    this.results.push(`设备型号: ${model}`);

    // 3. 获取系统版本
    const osVersion = await DeviceInfo.getOSVersion();
    this.results.push(`系统版本: ${osVersion}`);

    // 4. 获取设备类型
    const deviceType = await DeviceInfo.getDeviceType();
    this.results.push(`设备类型: ${deviceType}`);

    // 5. 获取屏幕信息
    this.results.push('\n=== 屏幕信息 ===');
    const screenWidth = await DeviceInfo.getScreenWidth();
    const screenHeight = await DeviceInfo.getScreenHeight();
    const screenDensity = await DeviceInfo.getScreenDensity();

    this.results.push(`屏幕宽度: ${screenWidth}px`);
    this.results.push(`屏幕高度: ${screenHeight}px`);
    this.results.push(`屏幕密度: ${screenDensity}`);

    // 6. 获取语言和地区
    this.results.push('\n=== 语言和地区 ===');
    const language = await DeviceInfo.getLanguage();
    const region = await DeviceInfo.getRegion();

    this.results.push(`系统语言: ${language}`);
    this.results.push(`系统地区: ${region}`);

    // 7. 获取完整设备信息
    this.results.push('\n=== 完整设备信息 ===');
    const fullInfo: DeviceFullInfo = await DeviceInfo.getFullInfo();

    this.results.push(`品牌: ${fullInfo.brand}`);
    this.results.push(`型号: ${fullInfo.model}`);
    this.results.push(`系统版本: ${fullInfo.osVersion}`);
    this.results.push(`设备类型: ${fullInfo.deviceType}`);
    this.results.push(`屏幕宽度: ${fullInfo.screenWidth}px`);
    this.results.push(`屏幕高度: ${fullInfo.screenHeight}px`);
    this.results.push(`屏幕密度: ${fullInfo.screenDensity}`);
    this.results.push(`系统语言: ${fullInfo.language}`);
    this.results.push(`系统地区: ${fullInfo.region}`);

    // 8. 判断设备类型
    this.results.push('\n=== 设备类型判断 ===');
    const isPhone = await DeviceInfo.isPhone();
    const isTablet = await DeviceInfo.isTablet();

    this.results.push(`是否为手机: ${isPhone}`);
    this.results.push(`是否为平板: ${isTablet}`);
  }

  build() {
    Column() {
      Text('DeviceInfo 示例')
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
