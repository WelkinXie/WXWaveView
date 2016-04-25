# WXWaveView

### Add pretty and silk waves to your views! 

#### The wave can be added to any type of view.

### [中文说明](https://github.com/WelkinXie/WXWaveView/blob/master/README-CN.md)

e.g.

![()](http://7xneqd.com1.z0.glb.clouddn.com/wave.gif)

## How to use
1. Download and copy the **WXWaveView** folder with the source code in it to your project.
2. Initialize WXWaveView with method " **addToView:withFrame:** "
		
		self.waveView = [WXWaveView addToView:headerView withFrame:CGRectMake(0, CGRectGetHeight(headerView.frame) - 10, CGRectGetWidth(headerView.frame), 10)];
	

3. Perform the method **wave** when you want it to animate.

		[self.waveView wave];

#### That's it!

### BTW, there are something your can do to customize the wave.
1. The time when the wave lasts. When it is set to zero, the wave will never stop. Default is 1.

	    self.waveView.waveTime = 0.f;  
	    
2. The color of the wave. Default is white.
	    
	    self.waveView.waveColor = [UIColor groupTableViewBackgroundColor];
	   	
3. The speed of the wave. Default is 5.

	    self.waveView.waveSpeed = 6.f;
	    
4. The amplitude of the wave. Default is 5.

	    self.waveView.waveAmplitude = 6.f;
	    
5. You can also stop the wave manually with the method **stop** whenever you want.

		[self.waveView stop];
	    
## Also See
[WXCycleScrollView](https://github.com/WelkinXie/WXCycleScrollView) is a cycle scroll kit with this wave view written in Swift.

## Reference
**WXWaveView** is inspired by [KYWaterWaveView](https://github.com/KittenYang/KYWaterWaveView). Thanks KittenYang and his contributions.

## License
**WXWaveView** is released under [**MIT License**](https://github.com/WelkinXie/WXWaveView/blob/master/LICENSE).