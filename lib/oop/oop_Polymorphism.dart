// Tính đa hình 

// Khai báo về tính năng của Xe
abstract class Xe {
  void chuyenCho(); // Chuyên chở
}
// Khai báo của Xe tải

class XeTai extends Xe {
  @override
  void chuyenCho() {
    print(" Chỉ chở hàng");
  }
}
// Khai báo về Xe khách

class XeKhach extends Xe {
  @override
  void chuyenCho() {
    print(" Chỉ chở người");
  }
}

void main() {
  var xeDemo = new XeKhach();
  xeDemo.chuyenCho();
}
