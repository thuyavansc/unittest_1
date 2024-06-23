import 'package:flutter_test/flutter_test.dart';
import 'package:unittest_1/counter.dart';

void main(){
  //Test-1
  //given | when | then
  test(
    'given counter class when it is initiated then value of count should be 0',
      (){
        // Arrange - given
        final Counter counter = Counter();
        //Act - when
        final val = counter.counter;
        //Asset - then
        expect(val,0);
      }
  );

  //test-2
  //given | when | then
  test(
    'given counter class when it is incremented then value of count should be 1',
      (){
        //Arrange - given
        final Counter counter = Counter();
        //Act - when
        counter.incrementCounter(); // calling increment method
        final val = counter.counter; // getting value after method call
        //Assert - then
        expect(val, 1);

      }
  );

}