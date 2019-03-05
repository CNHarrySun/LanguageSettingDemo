# LanguageManager
## App 内切换多语言工具类


设置时需要通过 setLocalizableLanguage 设置当前选中的语言。
然后刷新页面即可。
例如：
```
[[LanguageManager sharedLanguageManager] setLocalizableLanguage:@"zh-Hans"];
[self setRootVC]; // 刷新页面
```
--------

```
// 当前的国际化语言
@property(nonatomic, copy, readonly) NSString *localzableLanguage;

/**
单例方法

@return 单例对象
*/
+ (instancetype)sharedLanguageManager;

/**
设置当前的国际化语言

@param Language 当前的国际化语言，请参考上面的RCLocalizableLanguageDefault
*/
- (void)setLocalizableLanguage:(NSString *)Language;

```
