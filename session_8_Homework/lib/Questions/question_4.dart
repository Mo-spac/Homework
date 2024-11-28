void main() {
  Manager salesManager = Manager();
  double baseSalary = salesManager.calculateSalary();
  print("Base salary = $baseSalary");
  double totalSalary = salesManager.addBonus(baseSalary);
  print("Total Salary after bonus = $totalSalary");
}

abstract class Employee {
  double calculateSalary();
}

mixin Bonus {
  double addBonus(double baseSalary) {
    double totalSalary = baseSalary * 1.10;
    return totalSalary;
  }
}

class Manager extends Employee with Bonus {
  @override
  double calculateSalary() {
    double baseSalary = 5000;
    return baseSalary;
  }
}
