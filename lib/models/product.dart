class Product {
  final int id , price ;
  final String title , subTitle, descripition , image;

  // استخدمنه هذا حتى نكدر نستخدم المتغيرات
  Product(
  {required this.id,
    required this.price,
    required this.title,
    required this.subTitle,
    required this.descripition,
    required this.image
});
}

// list of products
List<Product> products = [
  Product(
    id: 1,
    price: 59,
    title: "Airpods",
    subTitle: "high sound quality",
    image: "https://images-na.ssl-images-amazon.com/images/G/01/appcore/01-Airpods_Pro._CB652263686_.png",
    descripition:
    "Lorem Epsom Dollar Set Amit, Consector Adaiba Isking Alite, Set De Yosmud Tempur Ankidionteut Laborit At Dollars Magna Aliquia.",
  ),
  Product(
    id: 2,
    price: 1099,
    title: "Mobile device",
    subTitle: "And mobile became powerful",
    image: "https://cdn.shortpixel.ai/spai/w_1003+q_glossy+ret_img+to_webp/https://mobizil.com/wp-content/uploads/2022/03/Xiaomi-12.jpg",
    descripition:
    "Lorem Epsom Dollar Set Amit, Consector Adaiba Isking Alite, Set De Yosmud Tempur Ankidionteut Laborit At Dollars Magna Aliquia.",
  ),
  Product(
    id: 3,
    price: 39,
    title: "VR Glasses",
    subTitle: "Take you to the virtual world",
    image: "https://m.media-amazon.com/images/I/61KkKIaeiYL.jpg",
    descripition:
    "Lorem Epsom Dollar Set Amit, Consector Adaiba Isking Alite, Set De Yosmud Tempur Ankidionteut Laborit At Dollars Magna Aliquia.",
  ),
  Product(
    id: 4,
    price: 56,
    title: "Headphones",
    subTitle: "long listening hours",
    image: "https://m.media-amazon.com/images/I/71WbWykN5mL.jpg",
    descripition:
    "Lorem Epsom Dollar Set Amit, Consector Adaiba Isking Alite, Set De Yosmud Tempur Ankidionteut Laborit At Dollars Magna Aliquia.",
  ),
  Product(
    id: 5,
    price: 68,
    title: "Voice Recorder",
    subTitle: "Record the around you",
    image: "https://i.pinimg.com/564x/43/fe/31/43fe315b7eb1d846bed75d3be1a0df42.jpg",
    descripition:
    "Lorem Epsom Dollar Set Amit, Consector Adaiba Isking Alite, Set De Yosmud Tempur Ankidionteut Laborit At Dollars Magna Aliquia.",
  ),
  Product(
    id: 6,
    price: 39,
    title: "Computer cameras",
    subTitle: "High image quality and resolution",
    image: "https://ae01.alicdn.com/kf/HTB1RMQfaogQMeJjy0Feq6xOEVXat/HXSJ-S50-USB-720P-HD-1.jpg_Q90.jpg_.webp",
    descripition:
    "Lorem Epsom Dollar Set Amit, Consector Adaiba Isking Alite, Set De Yosmud Tempur Ankidionteut Laborit At Dollars Magna Aliquia.",
  ),
];