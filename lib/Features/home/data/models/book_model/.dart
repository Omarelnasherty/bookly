import 'item.dart';

class  {
	String? kind;
	int? totalItems;
	List<Item>? items;

	({this.kind, this.totalItems, this.items});

	factory .fromJson(Map<String, dynamic> json) => (
				kind: json['kind'] as String?,
				totalItems: json['totalItems'] as int?,
				items: (json['items'] as List<dynamic>?)
						?.map((e) => Item.fromJson(e as Map<String, dynamic>))
						.toList(),
			);

	Map<String, dynamic> toJson() => {
				'kind': kind,
				'totalItems': totalItems,
				'items': items?.map((e) => e.toJson()).toList(),
			};
}
