
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hvatai/core/datasources/remote/api_base.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';
import 'package:hvatai/features/auth/data/models/login_model/login_model.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/auth/domain/usecases/delivery_address_usecase.dart';
import 'package:hvatai/features/auth/domain/usecases/login_usecase.dart';
import 'package:hvatai/features/auth/domain/usecases/check_otp_usecase.dart';
import 'package:hvatai/features/auth/domain/usecases/register_usecase.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class ApiServiceAuth extends ApiBase {
  final FirebaseAuth _auth = FirebaseAuth.instance;
/// 🔹 Google Sign-In
Future<UserRegistrationData> loginWithGoogle() async {
  return executeAndHandleErrorServer<UserRegistrationData>(() async {
    print("[Google] 🚀 Starting Google Sign-In...");

    // 1️⃣ Google Sign-In
    final googleUser = await GoogleSignIn().signIn();
    if (googleUser == null) {
      print("[Google] ❌ Sign-In canceled by user");
      throw Exception("Google Sign-In canceled");
    }
    print("[Google] ✅ Signed in as: ${googleUser.displayName} (${googleUser.email})");

    final googleAuth = await googleUser.authentication;
    print("[Google] 🔹 Got auth tokens (idToken: ${googleAuth.idToken != null}, accessToken: ${googleAuth.accessToken != null})");

    final credential = GoogleAuthProvider.credential(
      idToken: googleAuth.idToken,
      accessToken: googleAuth.accessToken,
    );

    // 2️⃣ Sign in to Firebase
    print("[Google] 🔹 Signing into Firebase...");
    final userCredential = await _auth.signInWithCredential(credential);
    final user = userCredential.user;
    if (user == null) {
      print("[Google] ❌ Firebase sign-in failed");
      throw Exception("Firebase sign-in failed");
    }
    print("[Google] ✅ Firebase user: uid=${user.uid}, email=${user.email}");

    // 3️⃣ Get FCM token
    // final fcmToken = await FirebaseMessaging.instance.getToken();
    // print("[Google] 🔹 FCM token: $fcmToken");

    // 4️⃣ Call your API
    print("[Google] 📡 Sending login request to server...");
    final response = await post(
      ServerConfig.loginWithGoogle,
      body: {
        "google_id": user.uid,
        "email": user.email,
        "name": user.displayName ?? "",
        // "fcm_token": fcmToken ?? "",
      },
    );
    print("[Google] 🔹 Server response: ${response.statusCode} ${response.json}");

    if (response.statusCode == 200 || response.statusCode == 201) {
      print("[Google] ✅ Login successful, parsing user data...");
      return UserRegistrationData.fromJson(response.json);
    } else {
      print("[Google] ❌ Server returned error ${response.statusCode}");
      throw Exception("Server error ${response.statusCode}");
    }
  });
}

/// 🔹 Apple Sign-In
Future<UserRegistrationData> loginWithApple() async {
  return executeAndHandleErrorServer<UserRegistrationData>(() async {
    print("[Apple] 🚀 Starting Apple Sign-In...");

    // 1️⃣ Apple Sign-In
    final appleCredential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName
      ],
    );
    print("[Apple] ✅ Got Apple credentials (email: ${appleCredential.email}, fullName: ${appleCredential.givenName ?? ''} ${appleCredential.familyName ?? ''})");

    final oauthCredential = OAuthProvider("apple.com").credential(
      idToken: appleCredential.identityToken,
      accessToken: appleCredential.authorizationCode,
    );

    // 2️⃣ Sign in to Firebase
    print("[Apple] 🔹 Signing into Firebase...");
    final userCredential = await _auth.signInWithCredential(oauthCredential);
    final user = userCredential.user;
    if (user == null) {
      print("[Apple] ❌ Firebase sign-in failed");
      throw Exception("Firebase sign-in failed");
    }
    print("[Apple] ✅ Firebase user: uid=${user.uid}, email=${user.email}");

    // 3️⃣ Get FCM token
    // final fcmToken = await FirebaseMessaging.instance.getToken();
    // print("[Apple] 🔹 FCM token: $fcmToken");

    // 4️⃣ Call your API
    print("[Apple] 📡 Sending login request to server...");
    final response = await post(
      ServerConfig.loginWithApple,
      body: {
        "apple_id": user.uid,
        "email": user.email ?? appleCredential.email ?? "",
        "name": user.displayName ??
            "${appleCredential.givenName ?? ''} ${appleCredential.familyName ?? ''}".trim(),
        // "fcm_token": fcmToken ?? "",
      },
    );
    print("[Apple] 🔹 Server response: ${response.statusCode} ${response.json}");

    if (response.statusCode == 200 || response.statusCode == 201) {
      print("[Apple] ✅ Login successful, parsing user data...");
      return UserRegistrationData.fromJson(response.json);
    } else {
      print("[Apple] ❌ Server returned error ${response.statusCode}");
      throw Exception("Server error ${response.statusCode}");
    }
  });
}


  Future<LoginModel> checkOtp(CheckOtpParams params) async {
    return executeAndHandleErrorServer<LoginModel>(() async {
      final response = await post(ServerConfig.checkOtp, body: params.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return LoginModel.fromJson(response.json);
      } else {
        throw Exception;
      }
    });
  }

//
  Future<LoginModel> login(LoginParams params) async {
    return executeAndHandleErrorServer<LoginModel>(() async {
      final response = await post(ServerConfig.login, body: params.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return LoginModel.fromJson(response.json['data']);
      } else {
        throw Exception;
      }
    });
  }

  Future<UserRegistrationData> register(RegisterParams params) async {
    return executeAndHandleErrorServer<UserRegistrationData>(() async {
      final requestBody = {
        ...params.toJson(),
        'role': 'user',
      };

      final response = await post(ServerConfig.register, body: requestBody);

      if (response.statusCode == 200 || response.statusCode == 201) {
        return UserRegistrationData.fromJson(response.json);
      } else {
        throw Exception();
      }
    });
  }

  Future<UserRegistrationData> deliveryAddress(
      DeliveryAddressParams params) async {
    return executeAndHandleErrorServer<UserRegistrationData>(() async {
      final response =
          await post(ServerConfig.deliveryAddress, body: params.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return UserRegistrationData.fromJson(response.json);
      } else {
        throw Exception;
      }
    });
  }
}
