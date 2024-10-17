

abstract class Translation{
 String get hi;
 String get bye;
 String get howAreYou;
//  String get niceToMeetYou;
}
 
 class Deutsch implements Translation{
   @override
   String get hi => 'Hallo';
   @override
   String get bye => 'Tschüss';
   @override
   String get howAreYou => 'Wie geht es dir?';
 }
 class English implements Translation{
   @override
   String get hi => 'Hello';
   @override
   String get bye => 'Bye';
   @override
   String get howAreYou => 'How are you?';
 }
class Spanish implements Translation{
   @override
   String get hi => 'Hola';
   @override
   String get bye => 'Adiós';
   @override
   String get howAreYou => '¿Cómo estás?';
 }

 class Francais implements Translation{
   @override
   String get hi => 'Salut';
   @override
   String get bye => 'Au revoir';
   @override
   String get howAreYou => 'Comment ça va?';
 }
 
 