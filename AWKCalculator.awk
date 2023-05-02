BEGIN {
  printf "AWKCalculator\n-------------\n"

  print "Enter the first number: "
  getline Num1 < "/dev/tty"
  print "Enter the second number: "
  getline Num2 < "/dev/tty"

  printf "Choose a operation:\n1) Addition\n2) Subtraction\n3) Division\n4) Multiplication\n"
  getline calcType < "/dev/tty"

  if (calcType == 1){
    result = Num1 + Num2;
  }else if (calcType == 2){
    result = Num1 - Num2
  }else if (calcType == 3){
    result = Num1 / Num2
  }else if (calcType == 4){
    result = Num1 * Num2
  }else{
    print "Invalid operation"
  }

  print "Result: " result
}