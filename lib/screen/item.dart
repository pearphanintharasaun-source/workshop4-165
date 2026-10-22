import 'package:flutter/material.dart';
import 'foodmenu.dart';
import 'addform.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  List<FoodMenu> foodMenus = [
    FoodMenu(
      name: 'ต้มยำกุ้ง',
      component: 'กุ้ง, ตะไคร้, มะนาว',
      price: 50,
      foodType: FoodType.ttype2,
      foodpic: Foodpic.menu1,
    ),
    FoodMenu(
      name: 'สเต็กเนื้อ',
      component: 'เนื้อ, เครื่องเทศ',
      price: 120,
      foodType: FoodType.ttype2,
      foodpic: Foodpic.menu2,
    ),
    FoodMenu(
      name: 'ผัดไทย',
      component: 'เส้น, กุ้ง, ไข่, น้ำมะขาม',
      price: 45,
      foodType: FoodType.ttype4,
      foodpic: Foodpic.menu4,
    ),
    FoodMenu(
      name: 'ข้าวผัดกุ้ง',
      component: 'ข้าวสวย, กุุ้ง, ไข่,หอมใหญ่',
      price: 60,
      foodType: FoodType.ttype3,
      foodpic: Foodpic.menu3,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("รายการอาหาร", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: foodMenus.length,
        itemBuilder: (context, index) {
          var menu = foodMenus[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            elevation: 3,
            child: ListTile(
              // เพิ่มส่วนแสดงรูปภาพด้านซ้าย
              leading: Image.asset(
                menu.foodpic.image,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
              title: Text(
                menu.name,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "ส่วนประกอบ: ${menu.component}\nราคา: ${menu.price} บาท | ชนิด: ${menu.foodType.ty}",
              ),
              isThreeLine: true,
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddForm(foodMenus: foodMenus),
            ),
          ).then((value) {
            setState(() {});
          });
        },
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}