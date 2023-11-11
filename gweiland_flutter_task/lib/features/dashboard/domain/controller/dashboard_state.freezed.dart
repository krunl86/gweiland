// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DashboardState {
  NetworkState get networkstate => throw _privateConstructorUsedError;
  CryptoListModel? get cryptoListModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashboardStateCopyWith<DashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
          DashboardState value, $Res Function(DashboardState) then) =
      _$DashboardStateCopyWithImpl<$Res, DashboardState>;
  @useResult
  $Res call({NetworkState networkstate, CryptoListModel? cryptoListModel});

  $NetworkStateCopyWith<$Res> get networkstate;
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res, $Val extends DashboardState>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networkstate = null,
    Object? cryptoListModel = freezed,
  }) {
    return _then(_value.copyWith(
      networkstate: null == networkstate
          ? _value.networkstate
          : networkstate // ignore: cast_nullable_to_non_nullable
              as NetworkState,
      cryptoListModel: freezed == cryptoListModel
          ? _value.cryptoListModel
          : cryptoListModel // ignore: cast_nullable_to_non_nullable
              as CryptoListModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NetworkStateCopyWith<$Res> get networkstate {
    return $NetworkStateCopyWith<$Res>(_value.networkstate, (value) {
      return _then(_value.copyWith(networkstate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DashboardStateImplCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory _$$DashboardStateImplCopyWith(_$DashboardStateImpl value,
          $Res Function(_$DashboardStateImpl) then) =
      __$$DashboardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NetworkState networkstate, CryptoListModel? cryptoListModel});

  @override
  $NetworkStateCopyWith<$Res> get networkstate;
}

/// @nodoc
class __$$DashboardStateImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$DashboardStateImpl>
    implements _$$DashboardStateImplCopyWith<$Res> {
  __$$DashboardStateImplCopyWithImpl(
      _$DashboardStateImpl _value, $Res Function(_$DashboardStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networkstate = null,
    Object? cryptoListModel = freezed,
  }) {
    return _then(_$DashboardStateImpl(
      null == networkstate
          ? _value.networkstate
          : networkstate // ignore: cast_nullable_to_non_nullable
              as NetworkState,
      freezed == cryptoListModel
          ? _value.cryptoListModel
          : cryptoListModel // ignore: cast_nullable_to_non_nullable
              as CryptoListModel?,
    ));
  }
}

/// @nodoc

class _$DashboardStateImpl implements _DashboardState {
  _$DashboardStateImpl(this.networkstate, this.cryptoListModel);

  @override
  final NetworkState networkstate;
  @override
  final CryptoListModel? cryptoListModel;

  @override
  String toString() {
    return 'DashboardState(networkstate: $networkstate, cryptoListModel: $cryptoListModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardStateImpl &&
            (identical(other.networkstate, networkstate) ||
                other.networkstate == networkstate) &&
            (identical(other.cryptoListModel, cryptoListModel) ||
                other.cryptoListModel == cryptoListModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, networkstate, cryptoListModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardStateImplCopyWith<_$DashboardStateImpl> get copyWith =>
      __$$DashboardStateImplCopyWithImpl<_$DashboardStateImpl>(
          this, _$identity);
}

abstract class _DashboardState implements DashboardState {
  factory _DashboardState(final NetworkState networkstate,
      final CryptoListModel? cryptoListModel) = _$DashboardStateImpl;

  @override
  NetworkState get networkstate;
  @override
  CryptoListModel? get cryptoListModel;
  @override
  @JsonKey(ignore: true)
  _$$DashboardStateImplCopyWith<_$DashboardStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
