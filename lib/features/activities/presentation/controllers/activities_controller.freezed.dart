// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activities_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ActivitiesUIState {
  List<FilterModel<String>> get filters => throw _privateConstructorUsedError;
  List<FilterModel<String>> get selectedFilter =>
      throw _privateConstructorUsedError;

  /// Create a copy of ActivitiesUIState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActivitiesUIStateCopyWith<ActivitiesUIState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivitiesUIStateCopyWith<$Res> {
  factory $ActivitiesUIStateCopyWith(
          ActivitiesUIState value, $Res Function(ActivitiesUIState) then) =
      _$ActivitiesUIStateCopyWithImpl<$Res, ActivitiesUIState>;
  @useResult
  $Res call(
      {List<FilterModel<String>> filters,
      List<FilterModel<String>> selectedFilter});
}

/// @nodoc
class _$ActivitiesUIStateCopyWithImpl<$Res, $Val extends ActivitiesUIState>
    implements $ActivitiesUIStateCopyWith<$Res> {
  _$ActivitiesUIStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActivitiesUIState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = null,
    Object? selectedFilter = null,
  }) {
    return _then(_value.copyWith(
      filters: null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<FilterModel<String>>,
      selectedFilter: null == selectedFilter
          ? _value.selectedFilter
          : selectedFilter // ignore: cast_nullable_to_non_nullable
              as List<FilterModel<String>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActivitiesUIStateImplCopyWith<$Res>
    implements $ActivitiesUIStateCopyWith<$Res> {
  factory _$$ActivitiesUIStateImplCopyWith(_$ActivitiesUIStateImpl value,
          $Res Function(_$ActivitiesUIStateImpl) then) =
      __$$ActivitiesUIStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<FilterModel<String>> filters,
      List<FilterModel<String>> selectedFilter});
}

/// @nodoc
class __$$ActivitiesUIStateImplCopyWithImpl<$Res>
    extends _$ActivitiesUIStateCopyWithImpl<$Res, _$ActivitiesUIStateImpl>
    implements _$$ActivitiesUIStateImplCopyWith<$Res> {
  __$$ActivitiesUIStateImplCopyWithImpl(_$ActivitiesUIStateImpl _value,
      $Res Function(_$ActivitiesUIStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivitiesUIState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = null,
    Object? selectedFilter = null,
  }) {
    return _then(_$ActivitiesUIStateImpl(
      filters: null == filters
          ? _value._filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<FilterModel<String>>,
      selectedFilter: null == selectedFilter
          ? _value._selectedFilter
          : selectedFilter // ignore: cast_nullable_to_non_nullable
              as List<FilterModel<String>>,
    ));
  }
}

/// @nodoc

class _$ActivitiesUIStateImpl implements _ActivitiesUIState {
  const _$ActivitiesUIStateImpl(
      {required final List<FilterModel<String>> filters,
      required final List<FilterModel<String>> selectedFilter})
      : _filters = filters,
        _selectedFilter = selectedFilter;

  final List<FilterModel<String>> _filters;
  @override
  List<FilterModel<String>> get filters {
    if (_filters is EqualUnmodifiableListView) return _filters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filters);
  }

  final List<FilterModel<String>> _selectedFilter;
  @override
  List<FilterModel<String>> get selectedFilter {
    if (_selectedFilter is EqualUnmodifiableListView) return _selectedFilter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedFilter);
  }

  @override
  String toString() {
    return 'ActivitiesUIState(filters: $filters, selectedFilter: $selectedFilter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivitiesUIStateImpl &&
            const DeepCollectionEquality().equals(other._filters, _filters) &&
            const DeepCollectionEquality()
                .equals(other._selectedFilter, _selectedFilter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_filters),
      const DeepCollectionEquality().hash(_selectedFilter));

  /// Create a copy of ActivitiesUIState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivitiesUIStateImplCopyWith<_$ActivitiesUIStateImpl> get copyWith =>
      __$$ActivitiesUIStateImplCopyWithImpl<_$ActivitiesUIStateImpl>(
          this, _$identity);
}

abstract class _ActivitiesUIState implements ActivitiesUIState {
  const factory _ActivitiesUIState(
          {required final List<FilterModel<String>> filters,
          required final List<FilterModel<String>> selectedFilter}) =
      _$ActivitiesUIStateImpl;

  @override
  List<FilterModel<String>> get filters;
  @override
  List<FilterModel<String>> get selectedFilter;

  /// Create a copy of ActivitiesUIState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActivitiesUIStateImplCopyWith<_$ActivitiesUIStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
