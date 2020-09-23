import 'package:json_annotation/json_annotation.dart';
import 'package:pokemon/data/model/ability.model.dart';
import 'package:pokemon/data/model/version_details.model.dart';

part 'held_items.model.g.dart';

@JsonSerializable()
class HeldItems {
  Ability item;
  List<VersionDetails> versionDetails;

  HeldItems({this.item, this.versionDetails});

  factory HeldItems.fromJson(Map<String, dynamic> json) =>
      _$HeldItemsFromJson(json);
}
