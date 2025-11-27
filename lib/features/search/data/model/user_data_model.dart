class UserDataModel {
  const UserDataModel({
    this.id,
    this.name,
    this.lastName,
    this.email,
    this.phone,
    this.gender,
    this.country,
    this.image,
    this.description,
    this.personalRating,
    this.personalRatingCount,
    this.personalAvg,
    this.favoritesCount,
    this.isFavorited,
    this.subscribersCount,
    this.subscribedUsersCount,
  });

  final int? id;
  final String? name;
  final String? lastName;
  final String? email;
  final String? phone;
  final String? gender;
  final String? country;
  final String? image;
  final String? description;
  final int? personalRating;
  final int? personalRatingCount;
  final double? personalAvg;
  final int? favoritesCount;
  final bool? isFavorited;
  final int? subscribersCount;
  final int? subscribedUsersCount;

  factory UserDataModel.fromJson(Map<String, dynamic> json) {
    double? toDoubleValue(dynamic value) {
      if (value == null) return null;
      if (value is double) return value;
      if (value is int) return value.toDouble();
      return double.tryParse(value.toString());
    }

    return UserDataModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      lastName: json['last_name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      gender: json['gender'] as String?,
      country: json['country'] as String?,
      image: json['image'] as String?,
      description: json['description'] as String?,
      personalRating: json['personal_rating'] as int?,
      personalRatingCount: json['personal_rating_count'] as int?,
      personalAvg: toDoubleValue(json['personal_avg']),
      favoritesCount: json['favorites_count'] as int?,
      isFavorited: json['is_favorited'] as bool?,
      subscribersCount: json['subscribers_count'] as int?,
      subscribedUsersCount: json['subscribed_users_count'] as int?,
    );
  }

  UserDataModel copyWith({
    int? id,
    String? name,
    String? lastName,
    String? email,
    String? phone,
    String? gender,
    String? country,
    String? image,
    String? description,
    int? personalRating,
    int? personalRatingCount,
    double? personalAvg,
    int? favoritesCount,
    bool? isFavorited,
    int? subscribersCount,
    int? subscribedUsersCount,
  }) {
    return UserDataModel(
      id: id ?? this.id,
      name: name ?? this.name,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      gender: gender ?? this.gender,
      country: country ?? this.country,
      image: image ?? this.image,
      description: description ?? this.description,
      personalRating: personalRating ?? this.personalRating,
      personalRatingCount: personalRatingCount ?? this.personalRatingCount,
      personalAvg: personalAvg ?? this.personalAvg,
      favoritesCount: favoritesCount ?? this.favoritesCount,
      isFavorited: isFavorited ?? this.isFavorited,
      subscribersCount: subscribersCount ?? this.subscribersCount,
      subscribedUsersCount: subscribedUsersCount ?? this.subscribedUsersCount,
    );
  }
}
