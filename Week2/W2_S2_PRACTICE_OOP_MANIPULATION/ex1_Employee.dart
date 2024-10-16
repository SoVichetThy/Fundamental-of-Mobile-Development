enum Skill {
  coding('Coding'),
  communication('Communication'),
  musical_instrument('Musical_instrument');

  final String skillName;
  const Skill(this.skillName);
  String toString() {
    return switch (this) {
      Skill.coding => this.skillName,
      Skill.communication => this.skillName,
      Skill.musical_instrument => this.skillName,
    };
  }
}

class Address {
  String street;
  String city;
  String zipCode;

  Address({
    required this.street,
    required this.city,
    required this.zipCode,
  });
}

class Employee {
  String name;
  static const double baseSalary = 40000;
  final int yearOfExperience;
  List<Skill> skills = []; //empty list
  Address address;

  Employee({
    required this.name,
    required this.yearOfExperience,
    required this.address,
  });
  // //Employee.employee(
  //     {required this.name,
  //     required this.baseSalary,
  //     required this.yearOfExperience});

  void addSkill(Skill newSkill) {
    skills.add(newSkill);
  }

  double comput_salary() {
    double total = 0;
    for (int i = 0; i < skills.length; i++) {
      //print(skills[i]);
      switch (skills[i]) {
        case Skill.coding:
        total += 3000;
          break;
        case Skill.communication:
          total += 1000;
          break;
        case Skill.musical_instrument:
          total += 2500;
          break;
      }
    }
    total += 2000 * yearOfExperience;
    return total + baseSalary;
  }
  @override
  String toString() {
    //return back string
    return '\nEmployee Name: $name\n$name\'s address: ${address.street} \n$name\'s salary: $baseSalary \$\n$name\'s experinced: ${skills.map((skill) => skill.toString()).join(', ')}\n$name\'s total Salary: ${comput_salary()} \$ \n';
  }
  
}
  
void main() {
  final employee = Employee(
      name: 'Sovichet_Thy',
      yearOfExperience: 5,
      address: Address(
          street: '63, trasokPaem', city: 'Phnom Penh', zipCode: '1202'));
  // employee.addSkill(Skill.musical_instrument);
  //employee.addSkill(Skill.coding);
  employee.addSkill(Skill.coding);
  employee.addSkill(Skill.communication);
  employee.addSkill(Skill.musical_instrument);
  print(employee);
  //print(employee.comput_salary());
}
