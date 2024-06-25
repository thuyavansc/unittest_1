import 'package:flutter_test/flutter_test.dart';
import 'package:unittest_1/counter.dart';

void main(){
  // Pretest
  setUp((){});
  setUpAll((){});

  //Testing
  group(
    'Counter Class -',
      (){
        // put all test methods inside here which need to group

        final Counter counter = Counter();

        //Test-1
        //given | when | then
        test(
            'given Counter class when it is initiated then value of count should be 0',
                (){
              // Arrange - given
              //Act - when
              final val = counter.counter;
              //Asset - then
              expect(val,0);
            }
        );

        //test-2
        //given | when | then
        test(
            'given Counter class when it is incremented then value of count should be 1',
                (){
              //Arrange - given
              //Act - when
              counter.incrementCounter(); // calling increment method
              final val = counter.counter; // getting value after method call
              //Assert - then
              expect(val, 1);

            }
        );

        //test-3
        //given | when | then
        test(
          'given Counter class when it is decremented then value of counter should be -1',
            (){
              //Arrange - given
              //Act - when
              counter.decrementCounter();
              final val = counter.counter;
              //Assert - then
              expect(val, -1);
            }
        );

      }
  );

  // Post test
  tearDown((){});
  tearDownAll((){});

}