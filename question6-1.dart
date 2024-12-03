class Laptop{
  String? id;
  String? name;
  String? ram;

  Laptop(String? id, String? name, String? ram){
    this.id = id;
    this.name = name;
    this.ram = ram;
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'id: $id, name: $name, ram: $ram';
    // return super.toString();
  }

}

void main(){
  List<Laptop> laptops = [];
  laptops.add(Laptop('sn1234','Lenovo Thinkbook','8GB'));
  laptops.add(Laptop('sn1235','Lenovo Thinkpad','16GB'));
  laptops.add(Laptop('sn1236','Lenovo Ideapad','4GB'));
  print(laptops);
}