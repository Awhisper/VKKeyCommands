# VKKeyCommands


首先说说这个东西用在哪。我打算用在debug模式上，比如`VKDebugConsole`和`JSPatchPlaygroundTool`上，每当调试的时候需要在主要主要功能之外，加入调试功能的时候，通过模拟器的MAC键盘快捷键或者真机上摇一摇，来触发打开特殊的调试界面


- 开启MAC键盘快捷键监听


```objectivec
[[VKKeyCommands sharedInstance] registerKeyCommandWithInput:@"x" modifierFlags:UIKeyModifierCommand action:^(UIKeyCommand *command) {
        NSLog(@"11");
    }];
```

- 关闭MAC键盘快捷键监听

```objectivec
[[VKKeyCommands sharedInstance] unregisterKeyCommandWithInput:@"x" modifierFlags:UIKeyModifierCommand];
```   

- 开启真机摇一摇监听
    
```objectivec
    [[VKShakeCommand sharedInstance]registerShakeCommandWithAction:^{
        NSLog(@"11");
    }];
```

- 关闭真机摇一摇监听

```objectivec
	[[VKShakeCommand sharedInstance] removeShakeCommand];
```
    
