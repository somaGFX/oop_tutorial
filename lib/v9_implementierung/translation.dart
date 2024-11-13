



void main() {
  translate('es');
  // translate('de');
  // translate('en');
}

// abstract Klass, die die verwendeten texten in der App enthält.
abstract class Translation{
 String get hi;
 String get bye;
 String get howAreYou;
//  String get niceToMeetYou;
}
 
 // Klassen, die die Translation Klasse implementieren.
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
 

 // Methode, die die Sprache als Parameter nimmt und die entsprechende Klasse instanziiert.
 translate(String language) {
  Translation translation;
  switch (language) {
    case 'de':
      translation = Deutsch();
      break;
    case 'en':
      translation = English();
      break;
    case 'es':
      translation = Spanish();
      break;
    case 'fr':
      translation = Francais();
      break;
    default:
      translation = English();
  }
  print(translation.hi);
  print(translation.bye);
  print(translation.howAreYou);
}