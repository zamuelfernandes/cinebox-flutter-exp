// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_user_logged_command.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(CheckUserLoggedCommand)
const checkUserLoggedCommandProvider = CheckUserLoggedCommandProvider._();

final class CheckUserLoggedCommandProvider
    extends $AsyncNotifierProvider<CheckUserLoggedCommand, bool?> {
  const CheckUserLoggedCommandProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'checkUserLoggedCommandProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$checkUserLoggedCommandHash();

  @$internal
  @override
  CheckUserLoggedCommand create() => CheckUserLoggedCommand();
}

String _$checkUserLoggedCommandHash() =>
    r'928692cd4b298e1f8a0f88ca4be2e9ce4f40a6e9';

abstract class _$CheckUserLoggedCommand extends $AsyncNotifier<bool?> {
  FutureOr<bool?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<bool?>, bool?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<bool?>, bool?>,
              AsyncValue<bool?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
