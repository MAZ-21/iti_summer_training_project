import 'package:dartz/dartz.dart';
import 'package:spotify_app/core/configs/usecase/use_case.dart';
import 'package:spotify_app/data/models/auth/create_user_request.dart';
import 'package:spotify_app/data/models/auth/signin_user_request.dart';
import 'package:spotify_app/domain/repository/auth/auth_repo.dart';
import 'package:spotify_app/service_locator.dart';

class SigninUseCase implements UseCase<Either, SigninUserRequest>{
  @override
  Future<Either<dynamic, dynamic>> call({SigninUserRequest? params}) {
    return sl<AuthRepository>().signin(params!);
  }
}