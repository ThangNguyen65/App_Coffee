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
  @override
  void initState() {
    super.initState();

    // Lấy dữ liệu người dùng từ cơ sở dữ liệu Firebase
    FirebaseFirestore.instance
        .collection('users')
        .doc('HIlJxwXR6GHCCAe2MmBT') // Thay '123' bằng ID người dùng tương ứng
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        // Đã tìm thấy người dùng, cập nhật giá trị trong các trường dữ liệu
        Map<String, dynamic> userData =
            documentSnapshot.data() as Map<String, dynamic>;
        setState(() {
          _userController.text = userData['username'] ?? '';
          _lastNameController.text = userData['last name'] ?? '';
          _firstNameController.text = userData['first name'] ?? '';
          _selectedGender = userData['gender'] ?? '';
          _selectedDate = userData['dob'] ?? '';
        });
      } else {
        // Không tìm thấy người dùng
        print('User not found');
      }
    }).catchError((error) {
      // Xử lý lỗi nếu có
      print('Error: $error');
    });
  }

  TextEditingController _userController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _dobController = TextEditingController();
  String _selectedGender = '';
  String _selectedDate = '';

  List<String> _genderOptions = [
    'Male',
    'Female',
    'Other',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
      ),
      body: Padding(
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
            GestureDetector(
              onTap: () {
                _showGenderPicker();
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
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
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                _selectDate(context);
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
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
                          : 'Select Date of Birth',
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Lưu các giá trị đã nhập
                String user = _userController.text;
                String lastName = _lastNameController.text;
                String firstName = _firstNameController.text;
                String dob = _selectedDate;
                String gender = _selectedGender;

                // TODO: Xử lý logic để lưu thông tin

                // Đóng màn hình chỉnh sửa hồ sơ
                Navigator.of(context).pop();
              },
              child: const Text('Save'),
            ),
          ],
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
}
