// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DashboardUIState {
  List<MenuModel> get bottomNavBars => throw _privateConstructorUsedError;
  List<MenuModel> get drawerItems => throw _privateConstructorUsedError;
  int get currentIndex => throw _privateConstructorUsedError;

  /// Create a copy of DashboardUIState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DashboardUIStateCopyWith<DashboardUIState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardUIStateCopyWith<$Res> {
  factory $DashboardUIStateCopyWith(
          DashboardUIState value, $Res Function(DashboardUIState) then) =
      _$DashboardUIStateCopyWithImpl<$Res, DashboardUIState>;
  @useResult
  $Res call(
      {List<MenuModel> bottomNavBars,
      List<MenuModel> drawerItems,
      int currentIndex});
}

/// @nodoc
class _$DashboardUIStateCopyWithImpl<$Res, $Val extends DashboardUIState>
    implements $DashboardUIStateCopyWith<$Res> {
  _$DashboardUIStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardUIState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bottomNavBars = null,
    Object? drawerItems = null,
    Object? currentIndex = null,
  }) {
    return _then(_value.copyWith(
      bottomNavBars: null == bottomNavBars
          ? _value.bottomNavBars
          : bottomNavBars // ignore: cast_nullable_to_non_nullable
              as List<MenuModel>,
      drawerItems: null == drawerItems
          ? _value.drawerItems
          : drawerItems // ignore: cast_nullable_to_non_nullable
              as List<MenuModel>,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DashboardUIStateImplCopyWith<$Res>
    implements $DashboardUIStateCopyWith<$Res> {
  factory _$$DashboardUIStateImplCopyWith(_$DashboardUIStateImpl value,
          $Res Function(_$DashboardUIStateImpl) then) =
      __$$DashboardUIStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<MenuModel> bottomNavBars,
      List<MenuModel> drawerItems,
      int currentIndex});
}

/// @nodoc
class __$$DashboardUIStateImplCopyWithImpl<$Res>
    extends _$DashboardUIStateCopyWithImpl<$Res, _$DashboardUIStateImpl>
    implements _$$DashboardUIStateImplCopyWith<$Res> {
  __$$DashboardUIStateImplCopyWithImpl(_$DashboardUIStateImpl _value,
      $Res Function(_$DashboardUIStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DashboardUIState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bottomNavBars = null,
    Object? drawerItems = null,
    Object? currentIndex = null,
  }) {
    return _then(_$DashboardUIStateImpl(
      bottomNavBars: null == bottomNavBars
          ? _value._bottomNavBars
          : bottomNavBars // ignore: cast_nullable_to_non_nullable
              as List<MenuModel>,
      drawerItems: null == drawerItems
          ? _value._drawerItems
          : drawerItems // ignore: cast_nullable_to_non_nullable
              as List<MenuModel>,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DashboardUIStateImpl implements _DashboardUIState {
  const _$DashboardUIStateImpl(
      {required final List<MenuModel> bottomNavBars,
      required final List<MenuModel> drawerItems,
      required this.currentIndex})
      : _bottomNavBars = bottomNavBars,
        _drawerItems = drawerItems;

  final List<MenuModel> _bottomNavBars;
  @override
  List<MenuModel> get bottomNavBars {
    if (_bottomNavBars is EqualUnmodifiableListView) return _bottomNavBars;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bottomNavBars);
  }

  final List<MenuModel> _drawerItems;
  @override
  List<MenuModel> get drawerItems {
    if (_drawerItems is EqualUnmodifiableListView) return _drawerItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_drawerItems);
  }

  @override
  final int currentIndex;

  @override
  String toString() {
    return 'DashboardUIState(bottomNavBars: $bottomNavBars, drawerItems: $drawerItems, currentIndex: $currentIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardUIStateImpl &&
            const DeepCollectionEquality()
                .equals(other._bottomNavBars, _bottomNavBars) &&
            const DeepCollectionEquality()
                .equals(other._drawerItems, _drawerItems) &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_bottomNavBars),
      const DeepCollectionEquality().hash(_drawerItems),
      currentIndex);

  /// Create a copy of DashboardUIState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardUIStateImplCopyWith<_$DashboardUIStateImpl> get copyWith =>
      __$$DashboardUIStateImplCopyWithImpl<_$DashboardUIStateImpl>(
          this, _$identity);
}

abstract class _DashboardUIState implements DashboardUIState {
  const factory _DashboardUIState(
      {required final List<MenuModel> bottomNavBars,
      required final List<MenuModel> drawerItems,
      required final int currentIndex}) = _$DashboardUIStateImpl;

  @override
  List<MenuModel> get bottomNavBars;
  @override
  List<MenuModel> get drawerItems;
  @override
  int get currentIndex;

  /// Create a copy of DashboardUIState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashboardUIStateImplCopyWith<_$DashboardUIStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
