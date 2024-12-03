class Camera {
  // Private properties
  int _id;
  String _brand;
  String _color;
  double _price;

  // Constructor
  Camera(this._id, this._brand, this._color, this._price);

  // Getter and Setter for _id
  int get id => _id;
  set id(int value) {
    if (value > 0) {
      _id = value;
    } else {
      print('ID must be a positive integer.');
    }
  }

  // Getter and Setter for _brand
  String get brand => _brand;
  set brand(String value) {
    if (value.isNotEmpty) {
      _brand = value;
    } else {
      print('Brand cannot be empty.');
    }
  }

  // Getter and Setter for _color
  String get color => _color;
  set color(String value) {
    if (value.isNotEmpty) {
      _color = value;
    } else {
      print('Color cannot be empty.');
    }
  }

  // Getter and Setter for _price
  double get price => _price;
  set price(double value) {
    if (value > 0) {
      _price = value;
    } else {
      print('Price must be a positive number.');
    }
  }

  // Method to display camera details
  void displayDetails() {
    print('Camera Details:');
    print('ID: $_id');
    print('Brand: $_brand');
    print('Color: $_color');
    print('Price: \$_$_price');
    print('----------------------');
  }
}

void main() {
  // Creating 3 objects of the Camera class
  Camera camera1 = Camera(1, 'Canon', 'Black', 500.0);
  Camera camera2 = Camera(2, 'Nikon', 'Red', 600.0);
  Camera camera3 = Camera(3, 'Sony', 'Blue', 700.0);

  // Displaying the details of each camera
  camera1.displayDetails();
  camera2.displayDetails();
  camera3.displayDetails();

  // Modifying the properties of camera1 using setters
  camera1.id = 101;
  camera1.brand = 'Fujifilm';
  camera1.color = 'Green';
  camera1.price = 750.0;

  // Displaying the modified details of camera1
  camera1.displayDetails();
}
