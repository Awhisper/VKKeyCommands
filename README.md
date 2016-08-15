# VKKeyCommands

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
    
