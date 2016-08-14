# WXWaveView

### 为你的视图添加丝滑的水波纹。

#### 水波纹能添加到任何的View上。

### [English Doc](https://github.com/WelkinXie/WXWaveView/blob/master/README.md)

例如：

![()](http://7xneqd.com1.z0.glb.clouddn.com/wave.gif)

## 使用方法
1. 下载并复制 **WXWaveView** 文件夹下的源码到你工程目录。
2. 用 " **addToView:withFrame:** " 方法进行初始化：
		
		self.waveView = [WXWaveView addToView:headerView withFrame:CGRectMake(0, CGRectGetHeight(headerView.frame) - 10, CGRectGetWidth(headerView.frame), 10)];
		
4. 调用 **wave** 方法来开始波动。

		[self.waveView wave];

#### 搞定了

### 当然，你也可以对波纹进行个性化定制。
1. 波纹持续的时间。当被设置为0时，波纹将不会自动停止。默认是1秒。

	    self.waveView.waveTime = 0.f;  
	    
2. 波纹的颜色，默认是白色。
	    
	    self.waveView.waveColor = [UIColor groupTableViewBackgroundColor];
	   	
3. 波纹运动的速率，默认是2。

	    self.waveView.waveSpeed = 6.f;
	    
4. 波纹运动的角速度. 默认是2.

		self.waveView.angularSpeed = 1.8f;
	    
5. 你也可以随时调用 **stop** 方法来手动停止波纹的运动。

		[self.waveView stop];
		
#### 最近发现了一种有趣的使用方式，想分享一下：

![()](http://7xneqd.com1.z0.glb.clouddn.com/wave-new5.gif)

#### 作为刷新等待的视图，玩得开心哈~
	    
## 留意一下
[WXCycleScrollView](https://github.com/WelkinXie/WXCycleScrollView) 是使用本波纹实现的一个自动轮播视图，类似于百度外卖首页的轮播。使用Swift实现。

## 许可
**WXWaveView** 通过 [**MIT License**](https://github.com/WelkinXie/WXWaveView/blob/master/LICENSE) 许可协议发布。