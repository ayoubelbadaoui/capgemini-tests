// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchModelImpl _$$SearchModelImplFromJson(Map<String, dynamic> json) =>
    _$SearchModelImpl(
      resultCount: (json['resultCount'] as num).toInt(),
      results:
          (json['results'] as List<dynamic>)
              .map((e) => Results.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$SearchModelImplToJson(_$SearchModelImpl instance) =>
    <String, dynamic>{
      'resultCount': instance.resultCount,
      'results': instance.results,
    };

_$ResultsImpl _$$ResultsImplFromJson(Map<String, dynamic> json) =>
    _$ResultsImpl(
      artistName: json['artistName'] as String,
      artworkUrl100: json['artworkUrl100'] as String,
      trackCensoredName: json['trackCensoredName'] as String?,
    );

Map<String, dynamic> _$$ResultsImplToJson(_$ResultsImpl instance) =>
    <String, dynamic>{
      'artistName': instance.artistName,
      'artworkUrl100': instance.artworkUrl100,
      'trackCensoredName': instance.trackCensoredName,
    };
