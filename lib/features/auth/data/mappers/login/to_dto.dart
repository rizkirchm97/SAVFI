import 'package:savfi/features/auth/data/DTO/login/login_dto.dart';
import 'package:savfi/features/auth/domain/entities/login/send_login_entity.dart';

SendLoginDTO toLoginDTO(SendLoginEntity sendLoginEntity) => SendLoginDTO(
      userPhoneNumber: sendLoginEntity.userPhoneNumber,
    );
