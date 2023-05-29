import 'package:app_coffee/ProductDetail.dart';
import 'package:app_coffee/product.dart';
import 'package:flutter/material.dart';

class SearchProduct extends StatefulWidget {
  const SearchProduct({super.key});

  @override
  State<SearchProduct> createState() => _SearchProductState();
}

class _SearchProductState extends State<SearchProduct> {
  static List<Product> list_product = [
    Product(
      name: 'Phin Đen Đá',
      imageUrl: 'assets/images/tea.png',
      price: 1.99,
      discribe:
          'Đắng Đậm, Thơm Đặc Biệt Nồng Nàn, Không chua. Hạt Robusta-Culi-Arabica-Moka-Cherry là Dòng cafe đặc biệt thượng hạng, kết hợp hoàn hảo giữa Hương thơm ngây ngất từng vị  của từng hạt Moka-Arabica-Cherrfy, vị đắng đậm đà của Culi và độ giàu caffeine của Robusta. Công thức độc quyền của Galaxy Coffee tạo ra dòng cà phê xuất sắc  cực kì thơm ngon  vừa mạnh mẽ, vừa tỏa hương thơm, vị chua và vị đắng hòa quyện hài hòa. Đây chính là sự lựa chọn hoàn hảo cho để pha những ly, cà phê rang mộc như Cappuccino, Latte, Espresso, Americano với lớp crema dày và vị đậm đà thơm ngon. Thành  phần cà phê rang : Robusta-Culi-Arabica- Moka- Cherry. Nguyên chất cà phê rang xay 100%, không trộn đậu bắp, cà phê rang mộc. Cà phê rang không sao tẩm hương liệu, hóa chất. Phù hợp khẩu vị người Việt thơm cà phê tự nhiên, vị đắng nhẹ, không chua',
    ),
    Product(
      name: 'Bạc Xỉu Đá',
      imageUrl: 'assets/images/tea.png',
      price: 2.99,
      discribe:
          'Đắng Đậm, Thơm Đặc Biệt Nồng Nàn, Không chua. Hạt Robusta-Culi-Arabica-Moka-Cherry là Dòng cafe đặc biệt thượng hạng, kết hợp hoàn hảo giữa Hương thơm ngây ngất từng vị  của từng hạt Moka-Arabica-Cherrfy, vị đắng đậm đà của Culi và độ giàu caffeine của Robusta. Công thức độc quyền của Galaxy Coffee tạo ra dòng cà phê xuất sắc  cực kì thơm ngon  vừa mạnh mẽ, vừa tỏa hương thơm, vị chua và vị đắng hòa quyện hài hòa. Đây chính là sự lựa chọn hoàn hảo cho để pha những ly, cà phê rang mộc như Cappuccino, Latte, Espresso, Americano với lớp crema dày và vị đậm đà thơm ngon. Thành  phần cà phê rang : Robusta-Culi-Arabica- Moka- Cherry. Nguyên chất cà phê rang xay 100%, không trộn đậu bắp, cà phê rang mộc. Cà phê rang không sao tẩm hương liệu, hóa chất. Phù hợp khẩu vị người Việt thơm cà phê tự nhiên, vị đắng nhẹ, không chua',
    ),
    Product(
      name: 'Bạc Xỉu Nóng',
      imageUrl: 'assets/images/tea.png',
      price: 1.99,
      discribe:
          'Đắng Đậm, Thơm Đặc Biệt Nồng Nàn, Không chua. Hạt Robusta-Culi-Arabica-Moka-Cherry là Dòng cafe đặc biệt thượng hạng, kết hợp hoàn hảo giữa Hương thơm ngây ngất từng vị  của từng hạt Moka-Arabica-Cherrfy, vị đắng đậm đà của Culi và độ giàu caffeine của Robusta. Công thức độc quyền của Galaxy Coffee tạo ra dòng cà phê xuất sắc  cực kì thơm ngon  vừa mạnh mẽ, vừa tỏa hương thơm, vị chua và vị đắng hòa quyện hài hòa. Đây chính là sự lựa chọn hoàn hảo cho để pha những ly, cà phê rang mộc như Cappuccino, Latte, Espresso, Americano với lớp crema dày và vị đậm đà thơm ngon. Thành  phần cà phê rang : Robusta-Culi-Arabica- Moka- Cherry. Nguyên chất cà phê rang xay 100%, không trộn đậu bắp, cà phê rang mộc. Cà phê rang không sao tẩm hương liệu, hóa chất. Phù hợp khẩu vị người Việt thơm cà phê tự nhiên, vị đắng nhẹ, không chua',
    ),
    Product(
      name: 'Phin Đen Nóng',
      imageUrl: 'assets/images/tea.png',
      price: 2.99,
      discribe:
          'Đắng Đậm, Thơm Đặc Biệt Nồng Nàn, Không chua. Hạt Robusta-Culi-Arabica-Moka-Cherry là Dòng cafe đặc biệt thượng hạng, kết hợp hoàn hảo giữa Hương thơm ngây ngất từng vị  của từng hạt Moka-Arabica-Cherrfy, vị đắng đậm đà của Culi và độ giàu caffeine của Robusta. Công thức độc quyền của Galaxy Coffee tạo ra dòng cà phê xuất sắc  cực kì thơm ngon  vừa mạnh mẽ, vừa tỏa hương thơm, vị chua và vị đắng hòa quyện hài hòa. Đây chính là sự lựa chọn hoàn hảo cho để pha những ly, cà phê rang mộc như Cappuccino, Latte, Espresso, Americano với lớp crema dày và vị đậm đà thơm ngon. Thành  phần cà phê rang : Robusta-Culi-Arabica- Moka- Cherry. Nguyên chất cà phê rang xay 100%, không trộn đậu bắp, cà phê rang mộc. Cà phê rang không sao tẩm hương liệu, hóa chất. Phù hợp khẩu vị người Việt thơm cà phê tự nhiên, vị đắng nhẹ, không chua',
    ),
    Product(
      name: 'Phin Sữa Nóng',
      imageUrl: 'assets/images/tea.png',
      price: 1.99,
      discribe:
          'Đắng Đậm, Thơm Đặc Biệt Nồng Nàn, Không chua. Hạt Robusta-Culi-Arabica-Moka-Cherry là Dòng cafe đặc biệt thượng hạng, kết hợp hoàn hảo giữa Hương thơm ngây ngất từng vị  của từng hạt Moka-Arabica-Cherrfy, vị đắng đậm đà của Culi và độ giàu caffeine của Robusta. Công thức độc quyền của Galaxy Coffee tạo ra dòng cà phê xuất sắc  cực kì thơm ngon  vừa mạnh mẽ, vừa tỏa hương thơm, vị chua và vị đắng hòa quyện hài hòa. Đây chính là sự lựa chọn hoàn hảo cho để pha những ly, cà phê rang mộc như Cappuccino, Latte, Espresso, Americano với lớp crema dày và vị đậm đà thơm ngon. Thành  phần cà phê rang : Robusta-Culi-Arabica- Moka- Cherry. Nguyên chất cà phê rang xay 100%, không trộn đậu bắp, cà phê rang mộc. Cà phê rang không sao tẩm hương liệu, hóa chất. Phù hợp khẩu vị người Việt thơm cà phê tự nhiên, vị đắng nhẹ, không chua',
    ),
    Product(
      name: 'Americano Nóng',
      imageUrl: 'assets/images/tea.png',
      price: 1.99,
      discribe:
          'Đắng Đậm, Thơm Đặc Biệt Nồng Nàn, Không chua. Hạt Robusta-Culi-Arabica-Moka-Cherry là Dòng cafe đặc biệt thượng hạng, kết hợp hoàn hảo giữa Hương thơm ngây ngất từng vị  của từng hạt Moka-Arabica-Cherrfy, vị đắng đậm đà của Culi và độ giàu caffeine của Robusta. Công thức độc quyền của Galaxy Coffee tạo ra dòng cà phê xuất sắc  cực kì thơm ngon  vừa mạnh mẽ, vừa tỏa hương thơm, vị chua và vị đắng hòa quyện hài hòa. Đây chính là sự lựa chọn hoàn hảo cho để pha những ly, cà phê rang mộc như Cappuccino, Latte, Espresso, Americano với lớp crema dày và vị đậm đà thơm ngon. Thành  phần cà phê rang : Robusta-Culi-Arabica- Moka- Cherry. Nguyên chất cà phê rang xay 100%, không trộn đậu bắp, cà phê rang mộc. Cà phê rang không sao tẩm hương liệu, hóa chất. Phù hợp khẩu vị người Việt thơm cà phê tự nhiên, vị đắng nhẹ, không chua',
    ),
    Product(
      name: 'Caramel Macchiato Đá',
      imageUrl: 'assets/images/tea.png',
      price: 2.99,
      discribe:
          'Đắng Đậm, Thơm Đặc Biệt Nồng Nàn, Không chua. Hạt Robusta-Culi-Arabica-Moka-Cherry là Dòng cafe đặc biệt thượng hạng, kết hợp hoàn hảo giữa Hương thơm ngây ngất từng vị  của từng hạt Moka-Arabica-Cherrfy, vị đắng đậm đà của Culi và độ giàu caffeine của Robusta. Công thức độc quyền của Galaxy Coffee tạo ra dòng cà phê xuất sắc  cực kì thơm ngon  vừa mạnh mẽ, vừa tỏa hương thơm, vị chua và vị đắng hòa quyện hài hòa. Đây chính là sự lựa chọn hoàn hảo cho để pha những ly, cà phê rang mộc như Cappuccino, Latte, Espresso, Americano với lớp crema dày và vị đậm đà thơm ngon. Thành  phần cà phê rang : Robusta-Culi-Arabica- Moka- Cherry. Nguyên chất cà phê rang xay 100%, không trộn đậu bắp, cà phê rang mộc. Cà phê rang không sao tẩm hương liệu, hóa chất. Phù hợp khẩu vị người Việt thơm cà phê tự nhiên, vị đắng nhẹ, không chua',
    ),
    Product(
      name: 'Cappuccino Đá',
      imageUrl: 'assets/images/tea.png',
      price: 2.99,
      discribe:
          'Đắng Đậm, Thơm Đặc Biệt Nồng Nàn, Không chua. Hạt Robusta-Culi-Arabica-Moka-Cherry là Dòng cafe đặc biệt thượng hạng, kết hợp hoàn hảo giữa Hương thơm ngây ngất từng vị  của từng hạt Moka-Arabica-Cherrfy, vị đắng đậm đà của Culi và độ giàu caffeine của Robusta. Công thức độc quyền của Galaxy Coffee tạo ra dòng cà phê xuất sắc  cực kì thơm ngon  vừa mạnh mẽ, vừa tỏa hương thơm, vị chua và vị đắng hòa quyện hài hòa. Đây chính là sự lựa chọn hoàn hảo cho để pha những ly, cà phê rang mộc như Cappuccino, Latte, Espresso, Americano với lớp crema dày và vị đậm đà thơm ngon. Thành  phần cà phê rang : Robusta-Culi-Arabica- Moka- Cherry. Nguyên chất cà phê rang xay 100%, không trộn đậu bắp, cà phê rang mộc. Cà phê rang không sao tẩm hương liệu, hóa chất. Phù hợp khẩu vị người Việt thơm cà phê tự nhiên, vị đắng nhẹ, không chua',
    ),
    Product(
      name: 'Espresso',
      imageUrl: 'assets/images/tea.png',
      price: 2.99,
      discribe:
          'Đắng Đậm, Thơm Đặc Biệt Nồng Nàn, Không chua. Hạt Robusta-Culi-Arabica-Moka-Cherry là Dòng cafe đặc biệt thượng hạng, kết hợp hoàn hảo giữa Hương thơm ngây ngất từng vị  của từng hạt Moka-Arabica-Cherrfy, vị đắng đậm đà của Culi và độ giàu caffeine của Robusta. Công thức độc quyền của Galaxy Coffee tạo ra dòng cà phê xuất sắc  cực kì thơm ngon  vừa mạnh mẽ, vừa tỏa hương thơm, vị chua và vị đắng hòa quyện hài hòa. Đây chính là sự lựa chọn hoàn hảo cho để pha những ly, cà phê rang mộc như Cappuccino, Latte, Espresso, Americano với lớp crema dày và vị đậm đà thơm ngon. Thành  phần cà phê rang : Robusta-Culi-Arabica- Moka- Cherry. Nguyên chất cà phê rang xay 100%, không trộn đậu bắp, cà phê rang mộc. Cà phê rang không sao tẩm hương liệu, hóa chất. Phù hợp khẩu vị người Việt thơm cà phê tự nhiên, vị đắng nhẹ, không chua',
    ),
    Product(
      name: 'Latte Nóng',
      imageUrl: 'assets/images/tea.png',
      price: 2.99,
      discribe:
          'Đắng Đậm, Thơm Đặc Biệt Nồng Nàn, Không chua. Hạt Robusta-Culi-Arabica-Moka-Cherry là Dòng cafe đặc biệt thượng hạng, kết hợp hoàn hảo giữa Hương thơm ngây ngất từng vị  của từng hạt Moka-Arabica-Cherrfy, vị đắng đậm đà của Culi và độ giàu caffeine của Robusta. Công thức độc quyền của Galaxy Coffee tạo ra dòng cà phê xuất sắc  cực kì thơm ngon  vừa mạnh mẽ, vừa tỏa hương thơm, vị chua và vị đắng hòa quyện hài hòa. Đây chính là sự lựa chọn hoàn hảo cho để pha những ly, cà phê rang mộc như Cappuccino, Latte, Espresso, Americano với lớp crema dày và vị đậm đà thơm ngon. Thành  phần cà phê rang : Robusta-Culi-Arabica- Moka- Cherry. Nguyên chất cà phê rang xay 100%, không trộn đậu bắp, cà phê rang mộc. Cà phê rang không sao tẩm hương liệu, hóa chất. Phù hợp khẩu vị người Việt thơm cà phê tự nhiên, vị đắng nhẹ, không chua',
    ),
    Product(
      name: 'Mocha Nóng',
      imageUrl: 'assets/images/tea.png',
      price: 2.99,
      discribe:
          'Đắng Đậm, Thơm Đặc Biệt Nồng Nàn, Không chua. Hạt Robusta-Culi-Arabica-Moka-Cherry là Dòng cafe đặc biệt thượng hạng, kết hợp hoàn hảo giữa Hương thơm ngây ngất từng vị  của từng hạt Moka-Arabica-Cherrfy, vị đắng đậm đà của Culi và độ giàu caffeine của Robusta. Công thức độc quyền của Galaxy Coffee tạo ra dòng cà phê xuất sắc  cực kì thơm ngon  vừa mạnh mẽ, vừa tỏa hương thơm, vị chua và vị đắng hòa quyện hài hòa. Đây chính là sự lựa chọn hoàn hảo cho để pha những ly, cà phê rang mộc như Cappuccino, Latte, Espresso, Americano với lớp crema dày và vị đậm đà thơm ngon. Thành  phần cà phê rang : Robusta-Culi-Arabica- Moka- Cherry. Nguyên chất cà phê rang xay 100%, không trộn đậu bắp, cà phê rang mộc. Cà phê rang không sao tẩm hương liệu, hóa chất. Phù hợp khẩu vị người Việt thơm cà phê tự nhiên, vị đắng nhẹ, không chua',
    ),
    Product(
      name: 'Cappuccino Nóng',
      imageUrl: 'assets/images/tea.png',
      price: 2.99,
      discribe:
          'Đắng Đậm, Thơm Đặc Biệt Nồng Nàn, Không chua. Hạt Robusta-Culi-Arabica-Moka-Cherry là Dòng cafe đặc biệt thượng hạng, kết hợp hoàn hảo giữa Hương thơm ngây ngất từng vị  của từng hạt Moka-Arabica-Cherrfy, vị đắng đậm đà của Culi và độ giàu caffeine của Robusta. Công thức độc quyền của Galaxy Coffee tạo ra dòng cà phê xuất sắc  cực kì thơm ngon  vừa mạnh mẽ, vừa tỏa hương thơm, vị chua và vị đắng hòa quyện hài hòa. Đây chính là sự lựa chọn hoàn hảo cho để pha những ly, cà phê rang mộc như Cappuccino, Latte, Espresso, Americano với lớp crema dày và vị đậm đà thơm ngon. Thành  phần cà phê rang : Robusta-Culi-Arabica- Moka- Cherry. Nguyên chất cà phê rang xay 100%, không trộn đậu bắp, cà phê rang mộc. Cà phê rang không sao tẩm hương liệu, hóa chất. Phù hợp khẩu vị người Việt thơm cà phê tự nhiên, vị đắng nhẹ, không chua',
    ),
    Product(
      name: 'Latte Đá',
      imageUrl: 'assets/images/tea.png',
      price: 2.99,
      discribe:
          'Đắng Đậm, Thơm Đặc Biệt Nồng Nàn, Không chua. Hạt Robusta-Culi-Arabica-Moka-Cherry là Dòng cafe đặc biệt thượng hạng, kết hợp hoàn hảo giữa Hương thơm ngây ngất từng vị  của từng hạt Moka-Arabica-Cherrfy, vị đắng đậm đà của Culi và độ giàu caffeine của Robusta. Công thức độc quyền của Galaxy Coffee tạo ra dòng cà phê xuất sắc  cực kì thơm ngon  vừa mạnh mẽ, vừa tỏa hương thơm, vị chua và vị đắng hòa quyện hài hòa. Đây chính là sự lựa chọn hoàn hảo cho để pha những ly, cà phê rang mộc như Cappuccino, Latte, Espresso, Americano với lớp crema dày và vị đậm đà thơm ngon. Thành  phần cà phê rang : Robusta-Culi-Arabica- Moka- Cherry. Nguyên chất cà phê rang xay 100%, không trộn đậu bắp, cà phê rang mộc. Cà phê rang không sao tẩm hương liệu, hóa chất. Phù hợp khẩu vị người Việt thơm cà phê tự nhiên, vị đắng nhẹ, không chua',
    ),
    Product(
      name: 'Mocha Đá',
      imageUrl: 'assets/images/tea.png',
      price: 2.99,
      discribe:
          'Đắng Đậm, Thơm Đặc Biệt Nồng Nàn, Không chua. Hạt Robusta-Culi-Arabica-Moka-Cherry là Dòng cafe đặc biệt thượng hạng, kết hợp hoàn hảo giữa Hương thơm ngây ngất từng vị  của từng hạt Moka-Arabica-Cherrfy, vị đắng đậm đà của Culi và độ giàu caffeine của Robusta. Công thức độc quyền của Galaxy Coffee tạo ra dòng cà phê xuất sắc  cực kì thơm ngon  vừa mạnh mẽ, vừa tỏa hương thơm, vị chua và vị đắng hòa quyện hài hòa. Đây chính là sự lựa chọn hoàn hảo cho để pha những ly, cà phê rang mộc như Cappuccino, Latte, Espresso, Americano với lớp crema dày và vị đậm đà thơm ngon. Thành  phần cà phê rang : Robusta-Culi-Arabica- Moka- Cherry. Nguyên chất cà phê rang xay 100%, không trộn đậu bắp, cà phê rang mộc. Cà phê rang không sao tẩm hương liệu, hóa chất. Phù hợp khẩu vị người Việt thơm cà phê tự nhiên, vị đắng nhẹ, không chua',
    ),
    Product(
      name: 'Americano Đá',
      imageUrl: 'assets/images/tea.png',
      price: 1.99,
      discribe:
          'Đắng Đậm, Thơm Đặc Biệt Nồng Nàn, Không chua. Hạt Robusta-Culi-Arabica-Moka-Cherry là Dòng cafe đặc biệt thượng hạng, kết hợp hoàn hảo giữa Hương thơm ngây ngất từng vị  của từng hạt Moka-Arabica-Cherrfy, vị đắng đậm đà của Culi và độ giàu caffeine của Robusta. Công thức độc quyền của Galaxy Coffee tạo ra dòng cà phê xuất sắc  cực kì thơm ngon  vừa mạnh mẽ, vừa tỏa hương thơm, vị chua và vị đắng hòa quyện hài hòa. Đây chính là sự lựa chọn hoàn hảo cho để pha những ly, cà phê rang mộc như Cappuccino, Latte, Espresso, Americano với lớp crema dày và vị đậm đà thơm ngon. Thành  phần cà phê rang : Robusta-Culi-Arabica- Moka- Cherry. Nguyên chất cà phê rang xay 100%, không trộn đậu bắp, cà phê rang mộc. Cà phê rang không sao tẩm hương liệu, hóa chất. Phù hợp khẩu vị người Việt thơm cà phê tự nhiên, vị đắng nhẹ, không chua',
    ),
    Product(
      name: 'Caramel Macchiato Nóng',
      imageUrl: 'assets/images/tea.png',
      price: 2.99,
      discribe:
          'Đắng Đậm, Thơm Đặc Biệt Nồng Nàn, Không chua. Hạt Robusta-Culi-Arabica-Moka-Cherry là Dòng cafe đặc biệt thượng hạng, kết hợp hoàn hảo giữa Hương thơm ngây ngất từng vị  của từng hạt Moka-Arabica-Cherrfy, vị đắng đậm đà của Culi và độ giàu caffeine của Robusta. Công thức độc quyền của Galaxy Coffee tạo ra dòng cà phê xuất sắc  cực kì thơm ngon  vừa mạnh mẽ, vừa tỏa hương thơm, vị chua và vị đắng hòa quyện hài hòa. Đây chính là sự lựa chọn hoàn hảo cho để pha những ly, cà phê rang mộc như Cappuccino, Latte, Espresso, Americano với lớp crema dày và vị đậm đà thơm ngon. Thành  phần cà phê rang : Robusta-Culi-Arabica- Moka- Cherry. Nguyên chất cà phê rang xay 100%, không trộn đậu bắp, cà phê rang mộc. Cà phê rang không sao tẩm hương liệu, hóa chất. Phù hợp khẩu vị người Việt thơm cà phê tự nhiên, vị đắng nhẹ, không chua',
    ),
    Product(
      name: 'Trà Dưa Hấu Vải',
      imageUrl: 'assets/images/tea.png',
      price: 1.99,
      discribe:
          'Đắng Đậm, Thơm Đặc Biệt Nồng Nàn, Không chua. Hạt Robusta-Culi-Arabica-Moka-Cherry là Dòng cafe đặc biệt thượng hạng, kết hợp hoàn hảo giữa Hương thơm ngây ngất từng vị  của từng hạt Moka-Arabica-Cherrfy, vị đắng đậm đà của Culi và độ giàu caffeine của Robusta. Công thức độc quyền của Galaxy Coffee tạo ra dòng cà phê xuất sắc  cực kì thơm ngon  vừa mạnh mẽ, vừa tỏa hương thơm, vị chua và vị đắng hòa quyện hài hòa. Đây chính là sự lựa chọn hoàn hảo cho để pha những ly, cà phê rang mộc như Cappuccino, Latte, Espresso, Americano với lớp crema dày và vị đậm đà thơm ngon. Thành  phần cà phê rang : Robusta-Culi-Arabica- Moka- Cherry. Nguyên chất cà phê rang xay 100%, không trộn đậu bắp, cà phê rang mộc. Cà phê rang không sao tẩm hương liệu, hóa chất. Phù hợp khẩu vị người Việt thơm cà phê tự nhiên, vị đắng nhẹ, không chua',
    ),
    Product(
      name: 'Trà Xanh Đậu Đỏ Nóng',
      imageUrl: 'assets/images/tea.png',
      price: 2.99,
      discribe:
          'Đắng Đậm, Thơm Đặc Biệt Nồng Nàn, Không chua. Hạt Robusta-Culi-Arabica-Moka-Cherry là Dòng cafe đặc biệt thượng hạng, kết hợp hoàn hảo giữa Hương thơm ngây ngất từng vị  của từng hạt Moka-Arabica-Cherrfy, vị đắng đậm đà của Culi và độ giàu caffeine của Robusta. Công thức độc quyền của Galaxy Coffee tạo ra dòng cà phê xuất sắc  cực kì thơm ngon  vừa mạnh mẽ, vừa tỏa hương thơm, vị chua và vị đắng hòa quyện hài hòa. Đây chính là sự lựa chọn hoàn hảo cho để pha những ly, cà phê rang mộc như Cappuccino, Latte, Espresso, Americano với lớp crema dày và vị đậm đà thơm ngon. Thành  phần cà phê rang : Robusta-Culi-Arabica- Moka- Cherry. Nguyên chất cà phê rang xay 100%, không trộn đậu bắp, cà phê rang mộc. Cà phê rang không sao tẩm hương liệu, hóa chất. Phù hợp khẩu vị người Việt thơm cà phê tự nhiên, vị đắng nhẹ, không chua',
    ),
    Product(
      name: 'Trà Thạch Đào',
      imageUrl: 'assets/images/tea.png',
      price: 2.99,
      discribe:
          'Đắng Đậm, Thơm Đặc Biệt Nồng Nàn, Không chua. Hạt Robusta-Culi-Arabica-Moka-Cherry là Dòng cafe đặc biệt thượng hạng, kết hợp hoàn hảo giữa Hương thơm ngây ngất từng vị  của từng hạt Moka-Arabica-Cherrfy, vị đắng đậm đà của Culi và độ giàu caffeine của Robusta. Công thức độc quyền của Galaxy Coffee tạo ra dòng cà phê xuất sắc  cực kì thơm ngon  vừa mạnh mẽ, vừa tỏa hương thơm, vị chua và vị đắng hòa quyện hài hòa. Đây chính là sự lựa chọn hoàn hảo cho để pha những ly, cà phê rang mộc như Cappuccino, Latte, Espresso, Americano với lớp crema dày và vị đậm đà thơm ngon. Thành  phần cà phê rang : Robusta-Culi-Arabica- Moka- Cherry. Nguyên chất cà phê rang xay 100%, không trộn đậu bắp, cà phê rang mộc. Cà phê rang không sao tẩm hương liệu, hóa chất. Phù hợp khẩu vị người Việt thơm cà phê tự nhiên, vị đắng nhẹ, không chua',
    ),
    Product(
      name: 'Trà Sen Vàng Nóng',
      imageUrl: 'assets/images/tea.png',
      price: 2.99,
      discribe:
          'Đắng Đậm, Thơm Đặc Biệt Nồng Nàn, Không chua. Hạt Robusta-Culi-Arabica-Moka-Cherry là Dòng cafe đặc biệt thượng hạng, kết hợp hoàn hảo giữa Hương thơm ngây ngất từng vị  của từng hạt Moka-Arabica-Cherrfy, vị đắng đậm đà của Culi và độ giàu caffeine của Robusta. Công thức độc quyền của Galaxy Coffee tạo ra dòng cà phê xuất sắc  cực kì thơm ngon  vừa mạnh mẽ, vừa tỏa hương thơm, vị chua và vị đắng hòa quyện hài hòa. Đây chính là sự lựa chọn hoàn hảo cho để pha những ly, cà phê rang mộc như Cappuccino, Latte, Espresso, Americano với lớp crema dày và vị đậm đà thơm ngon. Thành  phần cà phê rang : Robusta-Culi-Arabica- Moka- Cherry. Nguyên chất cà phê rang xay 100%, không trộn đậu bắp, cà phê rang mộc. Cà phê rang không sao tẩm hương liệu, hóa chất. Phù hợp khẩu vị người Việt thơm cà phê tự nhiên, vị đắng nhẹ, không chua',
    ),
    Product(
      name: 'Trà Sen Vàng',
      imageUrl: 'assets/images/tea.png',
      price: 2.99,
      discribe:
          'Đắng Đậm, Thơm Đặc Biệt Nồng Nàn, Không chua. Hạt Robusta-Culi-Arabica-Moka-Cherry là Dòng cafe đặc biệt thượng hạng, kết hợp hoàn hảo giữa Hương thơm ngây ngất từng vị  của từng hạt Moka-Arabica-Cherrfy, vị đắng đậm đà của Culi và độ giàu caffeine của Robusta. Công thức độc quyền của Galaxy Coffee tạo ra dòng cà phê xuất sắc  cực kì thơm ngon  vừa mạnh mẽ, vừa tỏa hương thơm, vị chua và vị đắng hòa quyện hài hòa. Đây chính là sự lựa chọn hoàn hảo cho để pha những ly, cà phê rang mộc như Cappuccino, Latte, Espresso, Americano với lớp crema dày và vị đậm đà thơm ngon. Thành  phần cà phê rang : Robusta-Culi-Arabica- Moka- Cherry. Nguyên chất cà phê rang xay 100%, không trộn đậu bắp, cà phê rang mộc. Cà phê rang không sao tẩm hương liệu, hóa chất. Phù hợp khẩu vị người Việt thơm cà phê tự nhiên, vị đắng nhẹ, không chua',
    ),
    Product(
      name: 'Trà Xanh Đậu Đỏ ',
      imageUrl: 'assets/images/tea.png',
      price: 2.99,
      discribe:
          'Đắng Đậm, Thơm Đặc Biệt Nồng Nàn, Không chua. Hạt Robusta-Culi-Arabica-Moka-Cherry là Dòng cafe đặc biệt thượng hạng, kết hợp hoàn hảo giữa Hương thơm ngây ngất từng vị  của từng hạt Moka-Arabica-Cherrfy, vị đắng đậm đà của Culi và độ giàu caffeine của Robusta. Công thức độc quyền của Galaxy Coffee tạo ra dòng cà phê xuất sắc  cực kì thơm ngon  vừa mạnh mẽ, vừa tỏa hương thơm, vị chua và vị đắng hòa quyện hài hòa. Đây chính là sự lựa chọn hoàn hảo cho để pha những ly, cà phê rang mộc như Cappuccino, Latte, Espresso, Americano với lớp crema dày và vị đậm đà thơm ngon. Thành  phần cà phê rang : Robusta-Culi-Arabica- Moka- Cherry. Nguyên chất cà phê rang xay 100%, không trộn đậu bắp, cà phê rang mộc. Cà phê rang không sao tẩm hương liệu, hóa chất. Phù hợp khẩu vị người Việt thơm cà phê tự nhiên, vị đắng nhẹ, không chua',
    ),
    Product(
      name: 'Trà Thạch Đào Nóng',
      imageUrl: 'assets/images/tea.png',
      price: 2.99,
      discribe:
          'Đắng Đậm, Thơm Đặc Biệt Nồng Nàn, Không chua. Hạt Robusta-Culi-Arabica-Moka-Cherry là Dòng cafe đặc biệt thượng hạng, kết hợp hoàn hảo giữa Hương thơm ngây ngất từng vị  của từng hạt Moka-Arabica-Cherrfy, vị đắng đậm đà của Culi và độ giàu caffeine của Robusta. Công thức độc quyền của Galaxy Coffee tạo ra dòng cà phê xuất sắc  cực kì thơm ngon  vừa mạnh mẽ, vừa tỏa hương thơm, vị chua và vị đắng hòa quyện hài hòa. Đây chính là sự lựa chọn hoàn hảo cho để pha những ly, cà phê rang mộc như Cappuccino, Latte, Espresso, Americano với lớp crema dày và vị đậm đà thơm ngon. Thành  phần cà phê rang : Robusta-Culi-Arabica- Moka- Cherry. Nguyên chất cà phê rang xay 100%, không trộn đậu bắp, cà phê rang mộc. Cà phê rang không sao tẩm hương liệu, hóa chất. Phù hợp khẩu vị người Việt thơm cà phê tự nhiên, vị đắng nhẹ, không chua',
    ),
    Product(
      name: 'Trà Thạch Đào',
      imageUrl: 'assets/images/tea.png',
      price: 2.99,
      discribe:
          'Đắng Đậm, Thơm Đặc Biệt Nồng Nàn, Không chua. Hạt Robusta-Culi-Arabica-Moka-Cherry là Dòng cafe đặc biệt thượng hạng, kết hợp hoàn hảo giữa Hương thơm ngây ngất từng vị  của từng hạt Moka-Arabica-Cherrfy, vị đắng đậm đà của Culi và độ giàu caffeine của Robusta. Công thức độc quyền của Galaxy Coffee tạo ra dòng cà phê xuất sắc  cực kì thơm ngon  vừa mạnh mẽ, vừa tỏa hương thơm, vị chua và vị đắng hòa quyện hài hòa. Đây chính là sự lựa chọn hoàn hảo cho để pha những ly, cà phê rang mộc như Cappuccino, Latte, Espresso, Americano với lớp crema dày và vị đậm đà thơm ngon. Thành  phần cà phê rang : Robusta-Culi-Arabica- Moka- Cherry. Nguyên chất cà phê rang xay 100%, không trộn đậu bắp, cà phê rang mộc. Cà phê rang không sao tẩm hương liệu, hóa chất. Phù hợp khẩu vị người Việt thơm cà phê tự nhiên, vị đắng nhẹ, không chua',
    ),
    Product(
      name: 'Trà Thạch Vải',
      imageUrl: 'assets/images/tea.png',
      price: 2.99,
      discribe:
          'Đắng Đậm, Thơm Đặc Biệt Nồng Nàn, Không chua. Hạt Robusta-Culi-Arabica-Moka-Cherry là Dòng cafe đặc biệt thượng hạng, kết hợp hoàn hảo giữa Hương thơm ngây ngất từng vị  của từng hạt Moka-Arabica-Cherrfy, vị đắng đậm đà của Culi và độ giàu caffeine của Robusta. Công thức độc quyền của Galaxy Coffee tạo ra dòng cà phê xuất sắc  cực kì thơm ngon  vừa mạnh mẽ, vừa tỏa hương thơm, vị chua và vị đắng hòa quyện hài hòa. Đây chính là sự lựa chọn hoàn hảo cho để pha những ly, cà phê rang mộc như Cappuccino, Latte, Espresso, Americano với lớp crema dày và vị đậm đà thơm ngon. Thành  phần cà phê rang : Robusta-Culi-Arabica- Moka- Cherry. Nguyên chất cà phê rang xay 100%, không trộn đậu bắp, cà phê rang mộc. Cà phê rang không sao tẩm hương liệu, hóa chất. Phù hợp khẩu vị người Việt thơm cà phê tự nhiên, vị đắng nhẹ, không chua',
    ),
    Product(
      name: 'Trà Sen Vàng Củ Năng Nóng',
      imageUrl: 'assets/images/tea.png',
      price: 2.99,
      discribe:
          'Đắng Đậm, Thơm Đặc Biệt Nồng Nàn, Không chua. Hạt Robusta-Culi-Arabica-Moka-Cherry là Dòng cafe đặc biệt thượng hạng, kết hợp hoàn hảo giữa Hương thơm ngây ngất từng vị  của từng hạt Moka-Arabica-Cherrfy, vị đắng đậm đà của Culi và độ giàu caffeine của Robusta. Công thức độc quyền của Galaxy Coffee tạo ra dòng cà phê xuất sắc  cực kì thơm ngon  vừa mạnh mẽ, vừa tỏa hương thơm, vị chua và vị đắng hòa quyện hài hòa. Đây chính là sự lựa chọn hoàn hảo cho để pha những ly, cà phê rang mộc như Cappuccino, Latte, Espresso, Americano với lớp crema dày và vị đậm đà thơm ngon. Thành  phần cà phê rang : Robusta-Culi-Arabica- Moka- Cherry. Nguyên chất cà phê rang xay 100%, không trộn đậu bắp, cà phê rang mộc. Cà phê rang không sao tẩm hương liệu, hóa chất. Phù hợp khẩu vị người Việt thơm cà phê tự nhiên, vị đắng nhẹ, không chua',
    ),
    Product(
      name: 'Trà Thanh Đào Nóng',
      imageUrl: 'assets/images/tea.png',
      price: 2.99,
      discribe:
          'Đắng Đậm, Thơm Đặc Biệt Nồng Nàn, Không chua. Hạt Robusta-Culi-Arabica-Moka-Cherry là Dòng cafe đặc biệt thượng hạng, kết hợp hoàn hảo giữa Hương thơm ngây ngất từng vị  của từng hạt Moka-Arabica-Cherrfy, vị đắng đậm đà của Culi và độ giàu caffeine của Robusta. Công thức độc quyền của Galaxy Coffee tạo ra dòng cà phê xuất sắc  cực kì thơm ngon  vừa mạnh mẽ, vừa tỏa hương thơm, vị chua và vị đắng hòa quyện hài hòa. Đây chính là sự lựa chọn hoàn hảo cho để pha những ly, cà phê rang mộc như Cappuccino, Latte, Espresso, Americano với lớp crema dày và vị đậm đà thơm ngon. Thành  phần cà phê rang : Robusta-Culi-Arabica- Moka- Cherry. Nguyên chất cà phê rang xay 100%, không trộn đậu bắp, cà phê rang mộc. Cà phê rang không sao tẩm hương liệu, hóa chất. Phù hợp khẩu vị người Việt thơm cà phê tự nhiên, vị đắng nhẹ, không chua',
    ),
    Product(
      name: 'Trà Thạch Vải Nóng',
      imageUrl: 'assets/images/tea.png',
      price: 2.99,
      discribe:
          'Đắng Đậm, Thơm Đặc Biệt Nồng Nàn, Không chua. Hạt Robusta-Culi-Arabica-Moka-Cherry là Dòng cafe đặc biệt thượng hạng, kết hợp hoàn hảo giữa Hương thơm ngây ngất từng vị  của từng hạt Moka-Arabica-Cherrfy, vị đắng đậm đà của Culi và độ giàu caffeine của Robusta. Công thức độc quyền của Galaxy Coffee tạo ra dòng cà phê xuất sắc  cực kì thơm ngon  vừa mạnh mẽ, vừa tỏa hương thơm, vị chua và vị đắng hòa quyện hài hòa. Đây chính là sự lựa chọn hoàn hảo cho để pha những ly, cà phê rang mộc như Cappuccino, Latte, Espresso, Americano với lớp crema dày và vị đậm đà thơm ngon. Thành  phần cà phê rang : Robusta-Culi-Arabica- Moka- Cherry. Nguyên chất cà phê rang xay 100%, không trộn đậu bắp, cà phê rang mộc. Cà phê rang không sao tẩm hương liệu, hóa chất. Phù hợp khẩu vị người Việt thơm cà phê tự nhiên, vị đắng nhẹ, không chua',
    ),
    Product(
      name: 'PhinDi Hạnh Nhân',
      imageUrl: 'assets/images/coffee.png',
      price: 3.99,
      discribe:
          'Đắng Đậm, Thơm Đặc Biệt Nồng Nàn, Không chua. Hạt Robusta-Culi-Arabica-Moka-Cherry là Dòng cafe đặc biệt thượng hạng, kết hợp hoàn hảo giữa Hương thơm ngây ngất từng vị  của từng hạt Moka-Arabica-Cherrfy, vị đắng đậm đà của Culi và độ giàu caffeine của Robusta. Công thức độc quyền của Galaxy Coffee tạo ra dòng cà phê xuất sắc  cực kì thơm ngon  vừa mạnh mẽ, vừa tỏa hương thơm, vị chua và vị đắng hòa quyện hài hòa. Đây chính là sự lựa chọn hoàn hảo cho để pha những ly, cà phê rang mộc như Cappuccino, Latte, Espresso, Americano với lớp crema dày và vị đậm đà thơm ngon. Thành  phần cà phê rang : Robusta-Culi-Arabica- Moka- Cherry. Nguyên chất cà phê rang xay 100%, không trộn đậu bắp, cà phê rang mộc. Cà phê rang không sao tẩm hương liệu, hóa chất. Phù hợp khẩu vị người Việt thơm cà phê tự nhiên, vị đắng nhẹ, không chua',
    ),
    Product(
      name: 'PhinDi Choco',
      imageUrl: 'assets/images/tea.png',
      price: 2.99,
      discribe:
          'Đắng Đậm, Thơm Đặc Biệt Nồng Nàn, Không chua. Hạt Robusta-Culi-Arabica-Moka-Cherry là Dòng cafe đặc biệt thượng hạng, kết hợp hoàn hảo giữa Hương thơm ngây ngất từng vị  của từng hạt Moka-Arabica-Cherrfy, vị đắng đậm đà của Culi và độ giàu caffeine của Robusta. Công thức độc quyền của Galaxy Coffee tạo ra dòng cà phê xuất sắc  cực kì thơm ngon  vừa mạnh mẽ, vừa tỏa hương thơm, vị chua và vị đắng hòa quyện hài hòa. Đây chính là sự lựa chọn hoàn hảo cho để pha những ly, cà phê rang mộc như Cappuccino, Latte, Espresso, Americano với lớp crema dày và vị đậm đà thơm ngon. Thành  phần cà phê rang : Robusta-Culi-Arabica- Moka- Cherry. Nguyên chất cà phê rang xay 100%, không trộn đậu bắp, cà phê rang mộc. Cà phê rang không sao tẩm hương liệu, hóa chất. Phù hợp khẩu vị người Việt thơm cà phê tự nhiên, vị đắng nhẹ, không chua',
    ),
    Product(
      name: 'PhinDi Kem Sữa',
      imageUrl: 'assets/images/tea.png',
      price: 2.99,
      discribe:
          'Đắng Đậm, Thơm Đặc Biệt Nồng Nàn, Không chua. Hạt Robusta-Culi-Arabica-Moka-Cherry là Dòng cafe đặc biệt thượng hạng, kết hợp hoàn hảo giữa Hương thơm ngây ngất từng vị  của từng hạt Moka-Arabica-Cherrfy, vị đắng đậm đà của Culi và độ giàu caffeine của Robusta. Công thức độc quyền của Galaxy Coffee tạo ra dòng cà phê xuất sắc  cực kì thơm ngon  vừa mạnh mẽ, vừa tỏa hương thơm, vị chua và vị đắng hòa quyện hài hòa. Đây chính là sự lựa chọn hoàn hảo cho để pha những ly, cà phê rang mộc như Cappuccino, Latte, Espresso, Americano với lớp crema dày và vị đậm đà thơm ngon. Thành  phần cà phê rang : Robusta-Culi-Arabica- Moka- Cherry. Nguyên chất cà phê rang xay 100%, không trộn đậu bắp, cà phê rang mộc. Cà phê rang không sao tẩm hương liệu, hóa chất. Phù hợp khẩu vị người Việt thơm cà phê tự nhiên, vị đắng nhẹ, không chua',
    ),
  ];

  List<Product> display_list_product = List.from(list_product);

  void updateList(String query) {
    setState(() {
      display_list_product = list_product
          .where((product) =>
              product.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        title: TextField(
          decoration: const InputDecoration(
            hintText: 'Search products',
            border: InputBorder.none,
          ),
          onChanged: updateList,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 16, left: 16, bottom: 16),
        child: Column(
          children: [
            Expanded(
              child: display_list_product.length == 0
                  ? const Center(
                      child: Text(
                        'Không có dữ liệu',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  : ListView.builder(
                      itemCount: display_list_product.length,
                      itemBuilder: (context, index) => ListTile(
                        contentPadding: const EdgeInsets.all(8.0),
                        title: Text(
                          display_list_product[index].name!,
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          '${display_list_product[index].price!}',
                          style: const TextStyle(color: Colors.black),
                        ),
                        leading: Image.asset(
                          display_list_product[index].imageUrl!,
                        ),
                      ),
                    ),
            )
          ],
        ),
      ),
    );
  }
}
