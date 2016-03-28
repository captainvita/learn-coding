// Simple calculator web app with just two number inputs and 7 math
// operation modes (+, -, *, /, mod, exp, root)
//
//See this resources to know how to programm it:
//https://youtu.be/e57ReoUn6kM?list=PLoYCgNOIyGAB_8_iq1cL8MVeun7cB6eNc
//

number1.addEventListener("input", function() {
  var operator = "+";
  var number1 =  document.getElementById('number1').value;
  var number2 =  document.getElementById('number2').value;
  var result = document.getElementById('result').value;
  result = evaluate(number1, number2, operator)
  document.getElementById('result').value = result;
  console.log(evaluate(number1, number2, operator));

});

function evaluate(param1, param2, operator) {
  if (operator === "+" || operator === "-" || operator === "*" || operator === "/" || operator === "%") {
    return eval(param1 + operator + param2);
  }
  else if (operator === "^") {
    return Math.pow(param1, param2);
  }
  else if (operator === "root") {
    return Math.pow(param1, 1 / param2);
  }
}
