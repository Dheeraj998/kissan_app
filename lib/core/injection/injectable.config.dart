// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:kisan_app/application/Auth/auth_bloc.dart' as _i9;
import 'package:kisan_app/application/Home/home_bloc.dart' as _i5;
import 'package:kisan_app/core/services/image_picker.dart' as _i8;
import 'package:kisan_app/domain/auth/auth_respository.dart' as _i3;
import 'package:kisan_app/domain/home/home_repository.dart' as _i6;
import 'package:kisan_app/infrastructure/auth/auth_implementation.dart' as _i4;
import 'package:kisan_app/infrastructure/Home/home_implementation.dart' as _i7;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.AuthRepository>(() => _i4.AuthImpl());
    gh.factory<_i5.HomeBloc>(() => _i5.HomeBloc());
    gh.lazySingleton<_i6.HomeRepository>(() => _i7.HopmeImpl());
    gh.lazySingleton<_i8.ImagePickerClass>(() => _i8.ImagePickerClass());
    gh.factory<_i9.AuthBloc>(() => _i9.AuthBloc(gh<_i3.AuthRepository>()));
    return this;
  }
}
