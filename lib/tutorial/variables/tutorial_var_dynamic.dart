void main(List<String> args) {
  // var : nhận tất cả dữ liệu   -- Khuyến cáo không sài
  // Khai báo biến có thể số , chữ, viết hoa viết thường , và dấu gạch dưới , dấu $
  // Bắt đầu không được phép bằng số và dấu _

  var a_var = "flutter";
  // var a_var = "Swift";  // Không phép cho khai báo lại
  a_var = "Kotlin"; // Cho phép gán lại
  {
    var a_var = 'Java';
  }

  var b_var = 3;
  var $_var = 3.49;
  var c_var = true;

  var d_var = () {
    // Kiểu viết 1 biến nhận vào 1 hàm
    print("Var nhận được cả function");
  };

  d_var(); // Cái biến này nó nhận 1 hàm -> bản thân nó là 1 hàm -> có thể call chạy được bằng ()

  // dynamic  : dynamic sài nhiều để hứng các giá trị mà dev chưa biết rõ là gì
  dynamic a_dynamic = "flutter";
  dynamic b_dynamic = 3;
  dynamic c_dynamic = 4.3;
  dynamic d_dynamic = () {
    print("dynamic có thể nhận hàm ");
  };

  d_dynamic();
}
