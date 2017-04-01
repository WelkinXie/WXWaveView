# WXWaveView

[![](https://img.shields.io/badge/platform-iOS-orange.svg)](https://developer.apple.com/ios/)
[![](https://img.shields.io/badge/pod-1.0.1-brightgreen.svg)](https://github.com/CocoaPods/CocoaPods)
[![](https://img.shields.io/badge/carthage-compatible-red.svg)](https://github.com/Carthage/Carthage)
[![](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/WelkinXie/WXWaveView/blob/master/README.md)

### 为你的视图添加丝滑的水波纹。

#### 水波纹能添加到任何的View上。

### [English Doc](https://github.com/WelkinXie/WXWaveView/blob/master/README.md)

例如：

![](https://raw.githubusercontent.com/WelkinXie/WXWaveView/master/wave.gif)

## 使用方法
1. 下载并复制 **WXWaveView** 文件夹下的源码到你工程目录。
2. 用 " **addToView:withFrame:** " 方法进行初始化：
		
		self.waveView = [WXWaveView addToView:headerView withFrame:CGRectMake(0, CGRectGetHeight(headerView.frame) - 10, CGRectGetWidth(headerView.frame), 10)];

	当然，你也可以通过 __Auto Layout__ 来设置他的大小位置，然后传 CGRectZero 到上面的方法就好了。
		
4. 调用 **wave** 方法来开始波动。

		[self.waveView wave];

#### 搞定了

### 另外，你也可以对波纹进行个性化定制。
1. 波纹持续的时间。当被设置为0时，波纹将不会自动停止。默认是1.5秒。

	    self.waveView.waveTime = 0.f;  
	    
2. 波纹的颜色，默认是白色。
	    
	    self.waveView.waveColor = [UIColor groupTableViewBackgroundColor];
	   	
3. 波纹运动的速率，默认9。

	    self.waveView.waveSpeed = 20.f;
	    
4. 波纹运动的角速度. 默认是2.

		self.waveView.angularSpeed = 1.8f;
	    
5. 你也可以随时调用 **stop** 方法来手动停止波纹的运动。

		[self.waveView stop];
		
#### 最近发现了一种有趣的使用方式，想分享一下：

![](https://raw.githubusercontent.com/WelkinXie/WXWaveView/master/wave2.gif)

#### 作为刷新等待的视图，玩得开心哈~
	    
## 参考
**WXWaveView** 是被 [KYWaterWaveView](https://github.com/KittenYang/KYWaterWaveView) 所启发的。感谢 KittenYang 和他所作出的贡献。

## 许可
**WXWaveView** 通过 [**MIT License**](https://github.com/WelkinXie/WXWaveView/blob/master/LICENSE) 许可协议发布。