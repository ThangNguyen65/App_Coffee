import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController _userController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _dobController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  TextEditingController _phoneNumberController = TextEditingController();

  String _selectedGender = '';
  String _selectedDate = '';
  String _userId = '';

  List<String> _genderOptions = [
    'Male',
    'Female',
    'Other',
  ];

  @override
  void initState() {
    super.initState();
    fetchLatestUser();
  }

  void fetchLatestUser() async {
    try {
      // Lấy người dùng mới nhất từ cơ sở dữ liệu Firebase
      QuerySnapshot querySnapshot = await FirebaseFirestore.instance
          .collection('users')
          .orderBy('createdAt', descending: true)
          .limit(1)
          .get();

      if (querySnapshot.docs.isNotEmpty) {
        // Lấy tài liệu người dùng mới nhất
        DocumentSnapshot documentSnapshot = querySnapshot.docs.first;
        _userId = documentSnapshot.id;
        Map<String, dynamic> userData =
            documentSnapshot.data() as Map<String, dynamic>;

        // Cập nhật dữ liệu người dùng
        setState(() {
          _userController.text = userData['username'] ?? '';
          _lastNameController.text = userData['last name'] ?? '';
          _firstNameController.text = userData['first name'] ?? '';
          _selectedGender = userData['gender'] ?? '';
          _selectedDate = userData['dob'] ?? '';
          _phoneNumberController.text = userData['phone'] ?? '';
          _addressController.text = userData['address'] ?? '';
        });

        // In ID của người dùng mới nhất
        print('Latest user ID: $_userId');
      } else {
        // Không tìm thấy người dùng
        print('No user found');
      }
    } catch (error) {
      // Xử lý lỗi nếu có
      print('Error fetching latest user: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(158, 2, 93, 138),
        title: const Text('Profile User'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _userController,
                      decoration: const InputDecoration(
                        labelText: 'User',
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: TextFormField(
                      controller: _lastNameController,
                      decoration: const InputDecoration(
                        labelText: 'Last Name',
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: TextFormField(
                      controller: _firstNameController,
                      decoration: const InputDecoration(
                        labelText: 'First Name',
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        _showGenderPicker();
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 12),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Row(
                          children: [
                            const Icon(Icons.person),
                            const SizedBox(width: 12),
                            Text(
                              _selectedGender.isNotEmpty
                                  ? _selectedGender
                                  : 'Select Gender',
                              style: const TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        _selectDate(context);
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 12),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Row(
                          children: [
                            const Icon(Icons.calendar_today),
                            const SizedBox(width: 12),
                            Text(
                              _selectedDate.isNotEmpty
                                  ? _selectedDate
                                  : 'Select Date',
                              style: const TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: TextFormField(
                        controller: _addressController,
                        decoration: const InputDecoration(
                          labelText: 'Address',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: TextFormField(
                        controller: _phoneNumberController,
                        decoration: const InputDecoration(
                          labelText: 'Phone Number',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 90),
                    child: ElevatedButton(
                      onPressed: () {
                        // Lưu các giá trị đã nhập
                        String user = _userController.text;
                        String lastName = _lastNameController.text;
                        String firstName = _firstNameController.text;
                        String dob = _selectedDate;
                        String gender = _selectedGender;
                        String address = _addressController.text;
                        String phone = _phoneNumberController.text;

                        // Cập nhật thông tin người dùng vào Firestore
                        updateUserData(user, lastName, firstName, dob, gender,
                            address, phone);

                        // Đóng màn hình chỉnh sửa hồ sơ
                        Navigator.of(context).pop();
                      },
                      child: Padding(
                          padding: EdgeInsets.only(right: 50, left: 50),
                          child: const Text('Save')),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showGenderPicker() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Column(
          children: [
            Container(
              height: 160,
              child: CupertinoPicker(
                itemExtent: 40,
                onSelectedItemChanged: (int index) {
                  setState(() {
                    _selectedGender = _genderOptions[index];
                  });
                },
                children: _genderOptions.map((String gender) {
                  return Center(
                    child: Text(
                      gender,
                      style: const TextStyle(fontSize: 18),
                    ),
                  );
                }).toList(),
              ),
            ),
            Container(
              height: 40,
              color: Colors.grey[200],
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    'Done',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void _selectDate(BuildContext context) {
    DatePicker.showDatePicker(
      context,
      showTitleActions: true,
      minTime: DateTime(1900),
      maxTime: DateTime.now(),
      onChanged: (date) {},
      onConfirm: (date) {
        setState(() {
          _selectedDate = '${date.year}-${date.month}-${date.day}';
        });
      },
    );
  }

  void updateUserData(String user, String lastName, String firstName,
      String dob, String gender, String address, String phone) {
    try {
      FirebaseFirestore.instance.collection('users').doc(_userId).update({
        'username': user,
        'last name': lastName,
        'first name': firstName,
        'dob': dob,
        'gender': gender,
        'address': address,
        'phone': phone,
      });
      print('User data updated successfully');
    } catch (error) {
      print('Error updating user data: $error');
    }
  }
}
