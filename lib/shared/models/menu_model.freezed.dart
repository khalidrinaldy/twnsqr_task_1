// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MenuModel {
  Widget get page => throw _privateConstructorUsedError;
  Widget get activeIcon => throw _privateConstructorUsedError;
  Widget get icon => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  bool get showInBottomNav => throw _privateConstructorUsedError;

  /// Create a copy of MenuModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MenuModelCopyWith<MenuModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuModelCopyWith<$Res> {
  factory $MenuModelCopyWith(MenuModel value, $Res Function(MenuModel) then) =
      _$MenuModelCopyWithImpl<$Res, MenuModel>;
  @useResult
  $Res call(
      {Widget page,
      Widget activeIcon,
      Widget icon,
      String label,
      bool showInBottomNav});
}

/// @nodoc
class _$MenuModelCopyWithImpl<$Res, $Val extends MenuModel>
    implements $MenuModelCopyWith<$Res> {
  _$MenuModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MenuModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? activeIcon = null,
    Object? icon = null,
    Object? label = null,
    Object? showInBottomNav = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as Widget,
      activeIcon: null == activeIcon
          ? _value.activeIcon
          : activeIcon // ignore: cast_nullable_to_non_nullable
              as Widget,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Widget,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      showInBottomNav: null == showInBottomNav
          ? _value.showInBottomNav
          : showInBottomNav // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MenuModelImplCopyWith<$Res>
    implements $MenuModelCopyWith<$Res> {
  factory _$$MenuModelImplCopyWith(
          _$MenuModelImpl value, $Res Function(_$MenuModelImpl) then) =
      __$$MenuModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Widget page,
      Widget activeIcon,
      Widget icon,
      String label,
      bool showInBottomNav});
}

/// @nodoc
class __$$MenuModelImplCopyWithImpl<$Res>
    extends _$MenuModelCopyWithImpl<$Res, _$MenuModelImpl>
    implements _$$MenuModelImplCopyWith<$Res> {
  __$$MenuModelImplCopyWithImpl(
      _$MenuModelImpl _value, $Res Function(_$MenuModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MenuModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? activeIcon = null,
    Object? icon = null,
    Object? label = null,
    Object? showInBottomNav = null,
  }) {
    return _then(_$MenuModelImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as Widget,
      activeIcon: null == activeIcon
          ? _value.activeIcon
          : activeIcon // ignore: cast_nullable_to_non_nullable
              as Widget,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Widget,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      showInBottomNav: null == showInBottomNav
          ? _value.showInBottomNav
          : showInBottomNav // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MenuModelImpl implements _MenuModel {
  const _$MenuModelImpl(
      {required this.page,
      required this.activeIcon,
      required this.icon,
      required this.label,
      required this.showInBottomNav});

  @override
  final Widget page;
  @override
  final Widget activeIcon;
  @override
  final Widget icon;
  @override
  final String label;
  @override
  final bool showInBottomNav;

  @override
  String toString() {
    return 'MenuModel(page: $page, activeIcon: $activeIcon, icon: $icon, label: $label, showInBottomNav: $showInBottomNav)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenuModelImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.activeIcon, activeIcon) ||
                other.activeIcon == activeIcon) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.showInBottomNav, showInBottomNav) ||
                other.showInBottomNav == showInBottomNav));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, page, activeIcon, icon, label, showInBottomNav);

  /// Create a copy of MenuModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MenuModelImplCopyWith<_$MenuModelImpl> get copyWith =>
      __$$MenuModelImplCopyWithImpl<_$MenuModelImpl>(this, _$identity);
}

abstract class _MenuModel implements MenuModel {
  const factory _MenuModel(
      {required final Widget page,
      required final Widget activeIcon,
      required final Widget icon,
      required final String label,
      required final bool showInBottomNav}) = _$MenuModelImpl;

  @override
  Widget get page;
  @override
  Widget get activeIcon;
  @override
  Widget get icon;
  @override
  String get label;
  @override
  bool get showInBottomNav;

  /// Create a copy of MenuModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MenuModelImplCopyWith<_$MenuModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
