import 'package:hasura_connect/hasura_connect.dart';

abstract class HasuraAbstract extends HasuraConnect {
  HasuraAbstract(String url) : super(url);
}
