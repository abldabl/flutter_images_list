import 'package:flutter_image_list/data/entries/user/user_entry.dart';
import 'package:flutter_image_list/domain/response_models/user/user_model_data.dart';

class UserEntryToModelDataMapper {
  UserModelData map(UserEntry entry) => UserModelData(
        id: entry.id,
        updatedAt: entry.updatedAt,
        username: entry.username,
        name: entry.name,
        firstName: entry.firstName,
        lastName: entry.lastName,
      );
}
