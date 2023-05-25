import 'package:flutter/material.dart';

class Describe {
  String name;
  String address;
  String time;
  String imageUrl;
  String imageUrl1;
  String imageUrl2;
  String imageUrl3;

  String detailed_address;
  String favorite;
  String phone;

  Describe(
      {required this.imageUrl,
      required this.imageUrl1,
      required this.imageUrl2,
      required this.imageUrl3,
      required this.name,
      required this.address,
      required this.time,
      required this.detailed_address,
      required this.favorite,
      required this.phone});
}

List<Describe> describeList = [
  Describe(
      imageUrl:
          'https://i.pinimg.com/564x/70/fd/63/70fd633ca9a25cb64b612eeb17fd3cc6.jpg',
      imageUrl1:
          'https://i.pinimg.com/564x/70/fd/63/70fd633ca9a25cb64b612eeb17fd3cc6.jpg',
      imageUrl2:
          'https://i.pinimg.com/564x/fc/34/df/fc34df9d70e2408699b13c95126b0deb.jpg',
      imageUrl3:
          'https://i.pinimg.com/564x/a3/2e/ae/a32eae835305c6c01b301c64fc14ded3.jpg',
      name: 'Cái tiệm Coffee',
      address: '296 Quang Trung',
      time: 'Giờ mở cửa: 7:00 - 22:00',
      detailed_address: '293 Quang Trung, Quận Gò Vấp, Hồ Chí Minh, Việt Nam',
      favorite: 'Thêm vào danh sách yêu thích',
      phone: 'Liên hệ '),
  Describe(
      imageUrl:
          'https://toplisthanoi.com/wp-content/uploads/2019/10/quan-cafe-dep-o-ha-noi-cau-giay-1..jpg',
      imageUrl1:
          'https://i.pinimg.com/564x/70/fd/63/70fd633ca9a25cb64b612eeb17fd3cc6.jpg',
      imageUrl2:
          'https://i.pinimg.com/564x/fc/34/df/fc34df9d70e2408699b13c95126b0deb.jpg',
      imageUrl3:
          'https://i.pinimg.com/564x/a3/2e/ae/a32eae835305c6c01b301c64fc14ded3.jpg',
      name: 'Cái tiệm Coffee',
      address: '86 Cao Thắng',
      time: 'Giờ mở cửa: 7:00 - 22:00',
      detailed_address: '293 Quang Trung, Quận Gò Vấp, Hồ Chí Minh, Việt Nam',
      favorite: 'Thêm vào danh sách yêu thích',
      phone: 'Liên hệ '),
  Describe(
      imageUrl:
          'https://danang.plus/wp-content/uploads/2022/10/cafe-son-tra-da-nang-4.jpg',
      imageUrl1:
          'https://i.pinimg.com/564x/70/fd/63/70fd633ca9a25cb64b612eeb17fd3cc6.jpg',
      imageUrl2:
          'https://i.pinimg.com/564x/fc/34/df/fc34df9d70e2408699b13c95126b0deb.jpg',
      imageUrl3:
          'https://i.pinimg.com/564x/a3/2e/ae/a32eae835305c6c01b301c64fc14ded3.jpg',
      name: 'Cái tiệm Coffee',
      address: '798 Sư Vạn Hạnh',
      time: 'Giờ mở cửa: 7:00 - 22:00',
      detailed_address: '293 Quang Trung, Quận Gò Vấp, Hồ Chí Minh, Việt Nam',
      favorite: 'Thêm vào danh sách yêu thích',
      phone: 'Liên hệ '),
  Describe(
      imageUrl:
          'https://kienviet.net/wp-content/uploads/2023/04/kienviet-tong-hop-10-quan-cafe-mo-ra-thien-nhien-40.jpg',
      imageUrl1:
          'https://i.pinimg.com/564x/70/fd/63/70fd633ca9a25cb64b612eeb17fd3cc6.jpg',
      imageUrl2:
          'https://i.pinimg.com/564x/fc/34/df/fc34df9d70e2408699b13c95126b0deb.jpg',
      imageUrl3:
          'https://i.pinimg.com/564x/a3/2e/ae/a32eae835305c6c01b301c64fc14ded3.jpg',
      name: 'Cái tiệm Coffee',
      address: '95 Nguyễn Ảnh Thủ',
      time: 'Giờ mở cửa: 7:00 - 22:00',
      detailed_address: '293 Quang Trung, Quận Gò Vấp, Hồ Chí Minh, Việt Nam',
      favorite: 'Thêm vào danh sách yêu thích',
      phone: 'Liên hệ '),
  Describe(
      imageUrl:
          'https://vietworld.world/Userfiles/Upload/images/281353874_1070179267039723_2436192077224018683_n.jpg',
      imageUrl1:
          'https://i.pinimg.com/564x/70/fd/63/70fd633ca9a25cb64b612eeb17fd3cc6.jpg',
      imageUrl2:
          'https://i.pinimg.com/564x/fc/34/df/fc34df9d70e2408699b13c95126b0deb.jpg',
      imageUrl3:
          'https://i.pinimg.com/564x/a3/2e/ae/a32eae835305c6c01b301c64fc14ded3.jpg',
      name: 'Cái tiệm Coffee',
      address: '55 Thống Nhất',
      time: 'Giờ mở cửa: 7:00 - 22:00',
      detailed_address: '293 Quang Trung, Quận Gò Vấp, Hồ Chí Minh, Việt Nam',
      favorite: 'Thêm vào danh sách yêu thích',
      phone: 'Liên hệ '),
  Describe(
      imageUrl: 'https://noithatsaigonaz.vn/uploads/source/ca-phe/cf44.jpg',
      imageUrl1:
          'https://i.pinimg.com/564x/70/fd/63/70fd633ca9a25cb64b612eeb17fd3cc6.jpg',
      imageUrl2:
          'https://i.pinimg.com/564x/fc/34/df/fc34df9d70e2408699b13c95126b0deb.jpg',
      imageUrl3:
          'https://i.pinimg.com/564x/a3/2e/ae/a32eae835305c6c01b301c64fc14ded3.jpg',
      name: 'Cái tiệm Coffee',
      address: '27 Lê Lợi',
      time: 'Giờ mở cửa: 7:00 - 22:00',
      detailed_address: '293 Quang Trung, Quận Gò Vấp, Hồ Chí Minh, Việt Nam',
      favorite: 'Thêm vào danh sách yêu thích',
      phone: 'Liên hệ '),
  Describe(
      imageUrl:
          'https://vietworld.world/Userfiles/Upload/images/family-cafe-3.jpg',
      imageUrl1:
          'https://i.pinimg.com/564x/70/fd/63/70fd633ca9a25cb64b612eeb17fd3cc6.jpg',
      imageUrl2:
          'https://i.pinimg.com/564x/fc/34/df/fc34df9d70e2408699b13c95126b0deb.jpg',
      imageUrl3:
          'https://i.pinimg.com/564x/a3/2e/ae/a32eae835305c6c01b301c64fc14ded3.jpg',
      name: 'Cái tiệm Coffee',
      address: 'Song Hành',
      time: 'Giờ mở cửa: 7:00 - 22:00',
      detailed_address: '293 Quang Trung, Quận Gò Vấp, Hồ Chí Minh, Việt Nam',
      favorite: 'Thêm vào danh sách yêu thích',
      phone: 'Liên hệ '),
];
