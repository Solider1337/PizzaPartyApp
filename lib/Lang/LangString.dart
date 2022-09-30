import 'package:get/get.dart';
import 'package:pizzaparty/newlibs/global.dart';

class LangString extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    //ENGLISH
    'en_US':{
     'start_button':'Get started',
      'intro_message':'Lets make a great pizza party',
      'app_info':'Calculate how many pizzas you need to order in seconds',
      'continue':'Continue',
      'recalculate':'Recalculate',
      'how_many_people':'How many people are there?',
      'how_many_slices':'How many slices of pizza for one person?',
      'how_many_pieces':'How many pieces does pizza have?',
      'how_many_pieces_2':'How many pieces will your restaurant or you cut the pizza into?. Usually its 8.',
      'popular_size':'Popular size templates',
      'need_to_order':'You need to order',
      'pizza_result':'pizzas, for',
      'peoples_result':' peoples,',
      'slicesforeach_result':' slices for each, pizza has',
      'slices_result':'x slices.',
      'settings':'Settings',
      'select_language':'Select language',
      'active_language':'English',
      'settings_language':'Language',
    },
    //POLISH 'pizza_result'.tr, $people_counter 'peoples_result'.tr, $slices_counter 'slicesforeach_result'.tr $size_counter 'slices_result'.tr',
    'pl_PL':{
      'start_button':'Rozpocznij',
      'intro_message':'Zróbmy świetne pizza party',
      'app_info':'Oblicz ile potrzebujesz zamówić pizzy w kilka sekund',
      'continue':'Dalej',
      'recalculate':'Oblicz ponownie',
      'how_many_people':'Ile jest osób?',
      'how_many_slices':'Ile kawałków pizzy na jedną osobę?',
      'how_many_pieces':'Ile pizza ma kawałków?',
      'how_many_pieces_2':'Na ile kawałków twoja restauracja lub ty pokroisz pizzę?. Zwykle jest to 8.',
      'popular_size':'Popularne rozmiary',
      'need_to_order':'Musisz zamówić',
      'pizza_result':'pizze, dla',
      'peoples_result':'x osób,',
      'slicesforeach_result':'x kawałek dla każdego, pizza ma',
      'slices_result':'x kawałek.',
      'settings':'Ustawienia',
      'select_language':'Wybierz język',
      'active_language':'Polski',
      'settings_language':'Język',
    },
    //GERMAN
    //SPANISH
  };


}