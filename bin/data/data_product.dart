import 'dart:convert';
import 'dart:core';

List<Product> userListFromData(String data) =>
    List<Product>.from(jsonDecode(data).map((e) => Product.fromJson(e)));


class Product {
  late String productId;
  late String productName;
  late num price;
  late bool inStock;
  late Details details;
  late Availability availability;

  Product.fromJson(Map<String, dynamic> json) {
    productId = json["productId"];
    productName = json["productName"];
    price = json["price"];
    inStock = json["inStock"];
    details = Details.fromJson(json["details"]);
    availability = Availability.fromJson(json["availability"]);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "productId": productId,
      "productName": productName,
      "price": price,
      "inStock": inStock,
      "details": details,
      "availability": availability
    };
    return map;
  }

  @override
  String toString() {
    return "productId $productId\nproductName: $productName\nprice: $price\ninStock: $inStock\ndetails: $details\navailability: $availability";
  }
}

class Availability {
  late bool online;
  late Offline offline;

  Availability.fromJson(Map<String, dynamic> json) {
    online = json["online"];
    offline = Offline.fromJson(json["offline"]);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "online": online,
      "offline": offline,
    };
    return map;
  }

  @override
  String toString() {
    return "Online: $online\nOffline: $offline";
  }
}

class Offline {
  late num store1;
  late num store2;
  late num store3;

  Offline.fromJson(Map<String, dynamic> json) {
    store1 = json["store1"];
    store2 = json["store2"];
    store3 = json["store3"];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "store1": store1,
      "store2": store2,
      "store3": store3,
    };
    return map;
  }

  @override
  String toString() {
    return "store1: $store1\nstore2: $store2\nstore3: $store3";
  }
}

class Details {
  late String brand;
  late String model;
  late Specs specs;

  Details.fromJson(Map<String, dynamic> json) {
    brand = json["brand"];
    model = json["model"];
    specs = Specs.fromJson(json["specs"]);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "brand": brand,
      "model": model,
      "specs": specs,
    };
    return map;
  }

  @override
  String toString() {
    return "brand: $brand\nmodel: $model\nspecs: $specs";
  }
}

class Specs {
  late Screen screen;
  late Storage storage;
  late Ram ram;
  late Camera? camera;
  late Graphics? graphics;
  late Battery battery;
  late OperatingSystem operatingSystem;
  late Connectivity connectivity;
  late Warranty warranty;

  Specs.fromJson(Map<String, dynamic> json) {
    screen = Screen.fromJson(json["screen"]);
    storage = Storage.fromJson(json["storage"]);
    ram = Ram.fromJson(json["ram"]);
    camera = (json["camera"] != null ? Camera.fromJson(json["camera"]):null);
    graphics = (json["graphics"] != null ? Graphics.fromJson(json["graphics"]):null);

    battery = Battery.fromJson(json["battery"]);
    operatingSystem = OperatingSystem.fromJson(json["operatingSystem"]);
    connectivity = Connectivity.fromJson(json["connectivity"]);
    warranty = Warranty.fromJson(json["warranty"]);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "screen": screen,
      "storage": storage,
      "ram": ram,
      "camera": camera,
      "battery": battery,
      "operatingSystem": operatingSystem,
      "connectivity": connectivity,
      "warranty": warranty,
    };
    return map;
  }

  @override
  String toString() {
    return "Screen: $screen\nStorage: $storage\nRam: $ram\ncamera: $camera\nbattery: $battery\noperatingSystem: $operatingSystem\nconnectivity: $connectivity\nwarranty: $warranty";
  }
}

class Screen {
  late String type;
  late num size;
  late String resolution;

  Screen.fromJson(Map<String, dynamic> json) {
    type = json["type"];
    size = json["size"];
    resolution = json["resolution"];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "type": type,
      "size": size,
      "resolution": resolution,
    };
    return map;
  }

  @override
  String toString() {
    return "type: $type\nsize: $size\nresolution: $resolution";
  }
}

class Storage {
  late String type;
  late String capacity;

  Storage.fromJson(Map<String, dynamic> json) {
    type = json["type"];
    capacity = json["capacity"];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "type": type,
      "capacity": capacity,
    };
    return map;
  }

  @override
  String toString() {
    return "type: $type\ncapacity: $capacity";
  }
}

class Ram {
  late String type;
  late String capacity;
  late String speed;

  Ram.fromJson(Map<String, dynamic> json) {
    type = json["type"];
    capacity = json["capacity"];
    speed = json["speed"];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "type": type,
      "capacity": capacity,
      "speed": speed,
    };
    return map;
  }

  @override
  String toString() {
    return "type: $type\ncapacity: $capacity\nspeed: $speed";
  }
}

class Camera {
  late Rear rear;
  late Front front;

  Camera.fromJson(Map<String, dynamic> json) {
    rear = Rear.fromJson(json["rear"]);
    front = Front.fromJson(json["front"]);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "rear": rear,
      "front": front,
    };
    return map;
  }

  @override
  String toString() {
    return "Rear: $rear\nFront: $front";
  }
}
class Graphics{
  late String type;

  Graphics.fromJson(Map<String, dynamic>json ){
    type = json["type"];
  }
}

class Rear {
  late String resolution;
  late String aperture;

  Rear.fromJson(Map<String, dynamic> json) {
    resolution = json["resolution"];
    aperture = json["aperture"];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "resolution": resolution,
      "aperture": aperture,
    };
    return map;
  }

  @override
  String toString() {
    return "resolution: $resolution\naperture: $aperture";
  }
}

class Front {
  late String resolution;
  late String aperture;

  Front.fromJson(Map<String, dynamic> json) {
    resolution = json["resolution"];
    aperture = json["aperture"];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "resolution": resolution,
      "aperture": aperture,
    };
    return map;
  }

  @override
  String toString() {
    return "resolution: $resolution\naperture: $aperture";
  }
}

class Battery {
  late String capacity;
  late String type;
  late Charging charging;

  Battery.fromJson(Map<String, dynamic> json) {
    capacity = json["capacity"];
    type = json["type"];
    charging = Charging.fromJson(json["charging"]);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "capacity": capacity,
      "type": type,
      "charging": charging,
    };
    return map;
  }

  @override
  String toString() {
    return "Capacity: $capacity\nType: $type\nCharging: $charging";
  }
}

class Charging {
  late String type;
  late num wattage;

  Charging.fromJson(Map<String, dynamic> json) {
    type = json["type"];
    wattage = json["wattage"];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "type": type,
      "wattage": wattage,
    };
    return map;
  }

  @override
  String toString() {
    return "type: $type\nwattage: $wattage";
  }
}

class OperatingSystem {
  late String name;
  late String version;
  late String? customSkin;

  OperatingSystem.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    version = json["version"];
    customSkin = json["customSkin"];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "name": name,
      "version": version,
      "customSkin": customSkin,
    };
    return map;
  }

  @override
  String toString() {
    return "Name: $name\nVersion: $version\nCustomSkin: $customSkin";
  }
}

class Connectivity {
  late String wifi;
  late String bluetooth;
  late bool? nfc;
  late UsbPorts? usbPorts;
  late num? thunderboltPort;
  late bool? hdmi;

  Connectivity.fromJson(Map<String, dynamic> json) {
    wifi = json["wifi"];
    bluetooth = json["bluetooth"];
    nfc = json["nfc"];
    usbPorts = (json["usbPorts"] != null ? UsbPorts.fromJson(json["usbPorts"]):null);
    thunderboltPort = json["thunderboltPort"];
    hdmi = json["hdmi"];

  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "wifi": wifi,
      "bluetooth": bluetooth,
      "nfc": nfc,
    };
    return map;
  }

  @override
  String toString() {
    return "Wi Fi: $wifi\nBluetooth: $bluetooth\nNFC: $nfc";
  }
}
class UsbPorts{
  late num typeA;
  late num typeC;

  UsbPorts.fromJson(Map<String, dynamic> json) {
    typeA = json["typeA"];
    typeC = json["typeC"];
  }
}

class Warranty {
  late int months;
  late String type;

  Warranty.fromJson(Map<String, dynamic> json) {
    months = json["months"];
    type = json["type"];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "months": months,
      "type": type,
    };
    return map;
  }

  @override
  String toString() {
    return "Months: $months\ntype: $type";
  }
}
