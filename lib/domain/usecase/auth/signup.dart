import 'package:dartz/dartz.dart';
import 'package:spotify_app/core/configs/usecase/use_case.dart';
import 'package:spotify_app/data/models/auth/create_user_request.dart';
import 'package:spotify_app/domain/repository/auth/auth_repo.dart';
import 'package:spotify_app/service_locator.dart';

class SignupUseCase implements UseCase<Either, CreateUserRequest>{
  @override
  Future<Either<dynamic, dynamic>> call({CreateUserRequest? params}) {
    return sl<AuthRepository>().signup(params!);
  }
}