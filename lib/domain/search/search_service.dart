

import 'model/search_respons.dart';

abstract class SearchService {
  Future <SearchRespons?> getSearchImages(int pageNum,String imageQuery);
 
}
