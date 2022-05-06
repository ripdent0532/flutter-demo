import 'dart:ui';

/// SizeFit 不同屏幕尺寸适配
class SizeFit {
  /// 物理宽度
  static late double _physicalWidth;

  /// 物理高度
  static late double _physicalHeight;

  /// 屏幕宽度
  static late double _screenWidth;

  /// 屏幕高度
  static late double _screenHeight;

  /// 设备像素比
  static late double _dpr;

  /// 状态栏高度
  static late double _statusHeight;

  static late double _rpx;
  static late double _px;

  static void initialize({double standardSize = 750}) {
    // 手机分辨率
    _physicalWidth = window.physicalSize.width;
    _physicalHeight = window.physicalSize.height;

    // dpr
    _dpr = window.devicePixelRatio;

    // 宽度和高度
    _screenWidth = _physicalWidth / _dpr;
    _screenHeight = _physicalHeight / _dpr;

    // 状态栏高度
    _statusHeight = window.padding.top / _dpr;

    // 计算rpx大小
    _rpx = _screenWidth / standardSize;
    _px = _screenWidth / standardSize * 2;
  }

  static double setPx(double size) {
    return _px * size;
  }

  static double setRpx(double size) {
    return _rpx * size;
  }
}
