import 'dart:io';

void main() {
  simplePattern8();
}

void simplePattern1() {
  int row = 5;

  for (var i = 0; i < row; i++) {
    for (var i = 0; i < row; i++) {
      stdout.write("*");
    }
    print('');
  }
}

void simplePattern2() {
  int row = 5;

  for (var i = 1; i <= row; i++) {
    for (var j = 0; j < row; j++) {
      stdout.write(i);
    }
    print('');
  }
}

void simplePattern3() {
  int row = 5;

  for (var i = 1; i <= row; i++) {
    for (var j = 1; j <= row; j++) {
      stdout.write(j);
    }
    print('');
  }
}

void simplePattern4() {
  int row = 5;

  for (var i = 1; i <= row; i++) {
    for (var j = 1; j <= row; j++) {
      stdout.write(j * i);
    }
    print('');
  }
}

void simplePattern5() {
  int row = 5;

  for (var i = 1; i <= row; i++) {
    for (var j = 1; j <= i; j++) {
      stdout.write('*');
    }
    print('');
  }
}

void simplePattern6() {
  for (var i = 5; i >= 0; i--) {
    for (var j = 5; j >= i; j--) {
      stdout.write(j);
    }
    print('');
  }
}

void simplePattern7() {
  for (var i = 1; i <= 3; i++) {
    for (var j = 0; j < i * 2; j++) {
      stdout.write('*');
    }

    print('');

    if (i < 3) {
      for (var k = 0; k < i * 3; k++) {
        print('*');
      }
    }
  }
}

void simplePattern8() {
  print('*');
  for (var i = 1; i <= 3; i++) {
    for (var j = 1; j <= (i * i); j++) {
      stdout.write('#');
      if (j % i == 0) {
        print('');
      }
    }
    // print('');
    for (var k = 0; k < i * 3; k++) {
      stdout.write('*');
    }
    print('');
  }
}
