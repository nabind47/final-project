# Final Project


## [Splash Screen](https://pub.dev/packages/flutter_native_splash)


```shell
flutter pub add flutter_native_splash
```

```yaml
flutter_native_splash:
  background_image: "assets/splash2.png"
```

```shell
dart run flutter_native_splash:create
```

```xml
<meta-data
    android:name="io.flutter.embedding.android.SplashScreenDrawable"
    android:resource="@drawable/launch_background"
/>
```

```xml
<application android:label="Final Project" />
```
> `C:\Users\NITRO5\AndroidStudioProjects\final_project\android\app\src\main\AndroidManifest.xml`


```gradle
 minSdkVersion 21 
```
> `C:\Users\NITRO5\AndroidStudioProjects\final_project\android\app\build.gradle`

## [Launcher Icon](https://pub.dev/packages/flutter_launcher_icons)

```shell
flutter pub add flutter_launcher_icons
```

```yaml
flutter_launcher_icons:
  android: "launcher_icon"
  ios: true
  image_path: "assets/logo2.png"
  min_sdk_android: 21 # android min sdk min:16, default 21
```

```shell
flutter pub run flutter_launcher_icons
```

## [Onboarding Screen](https://pub.dev/packages/introduction_screen/example)

```shell
flutter pub add introduction_screen
```


## [Flutter Secure Storage](https://pub.dev/packages/flutter_secure_storage)
```shell
flutter pub add flutter_secure_storage
```