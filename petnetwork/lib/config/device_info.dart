import 'dart:io';

import 'package:device_info/device_info.dart';
import 'package:petnetwork/caches/shared_storage.dart';
import 'package:petnetwork/models/divice_info_model.dart';

class DeviceInfo {
  static Future<void> initialezed() async {
    DeviceInfoPlugin plugin = DeviceInfoPlugin();
    if (Platform.isAndroid) {
      AndroidDeviceInfo android = await plugin.androidInfo;
      handleDeviceInfo(android, null);
    } else {
      IosDeviceInfo ios = await plugin.iosInfo;
      handleDeviceInfo(null, ios);
    }
  }

  static handleDeviceInfo(AndroidDeviceInfo android, IosDeviceInfo iOSInfo) {
    final isIOS = Platform.isIOS;
    Map<String, dynamic> jsonMap = {
      "mobileType": isIOS ? iOSInfo.name : android.device,
      "mobileVersion": isIOS ? iOSInfo.systemVersion : android.version,
      "mobileSystem": isIOS ? iOSInfo.systemName : android.device,
      "modelType": isIOS ? iOSInfo.model : android.model,
      "localizedModel": isIOS ? iOSInfo.localizedModel : android.androidId,
      "mobileUid": isIOS ? iOSInfo.identifierForVendor : android.device,
      "isPhysicalDevice":
          isIOS ? iOSInfo.isPhysicalDevice : android.isPhysicalDevice,
    };
    SharedStorage.deviceInfo = DeviceInfoModel.fromJson(jsonMap);
    SharedStorage.saveDeviceInfo();
  }
}
