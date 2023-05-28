import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@freezed
class Category with _$Category {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Category({
    required int id,
    @Default('N/A') String categoryName,
    @JsonKey(name: 'description') required String categoryDescription,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

/*
dart run build_runner build
dart run build_runner build lib/ --delete-conflicting-outputs
# or
dart run build_runner watch lib/ --delete-conflicting-outputs


targets:
  $default:
    builders:
      source_gen|combining_builder:
        options:
          build_extensions:
            '^lib/{{}}.dart': 'lib/generated/{{}}.g.dart'


*/