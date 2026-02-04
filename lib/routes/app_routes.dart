class AppRoutes {
  AppRoutes._(); // Private constructor to prevent instantiation

  static const String splash = '/';

  // =============================== Auth routes ===============================
  static const String socialLogin = '/social_login';
  static const String login = '/login';
  static const String otp = '/otp';
  static const String name = '/name';

  // =============================== Home routes ===============================

  static const String home = '/home';
  static const String categoriesForYou = '/categories_for_you';

  // =============================== Profile routes ===============================
  static const String profile = '/profile';
  static const String profileSettings = '/profile_settings';
  static const String settings = '/settings';
  static const String termsAndConditions = '/terms_and_conditions';
  static const String privacyPolicyProfile = '/privacy_policy_profile';

  static const String search = '/search';
  static const String activity = '/activity';
  static const String menu = '/menu';
  static const String scheduleStream = '/schedule_stream';
  static const String scheduledStreamsList = '/scheduled_streams_list';
  static const String favorite = '/favorite';
  static const String addStream = '/add_stream';
  static const String inviteFriends = '/invite_friends';
  static const String referralReward = '/referral_reward';
  static const String acceptInvite = '/accept_invite';
  static const String acceptInviteSuccess = '/accept_invite_success';
  static const String myProductDetails = '/my_product_details';
  static const String cartProductDetails = '/cart_product_details';
  static const String cart = '/cart';
  static const String selectAwaySend = '/select_away_send';
  static const String clipsCompany = '/clips_company';
  static const String productsCompany = '/products_company';
  static const String reviewCompany = '/review_company';
  static const String leaveReview = '/leave_review';
  static const String companyName = '/company_name';
  static const String sendReward = '/send_reward';
  static const String awardsGift = '/awards_gift';
  static const String verificationCode = '/verification_code';
  static const String analytics = '/analytics';
  static const String termAndConditions = '/term_and_conditions';
  static const String privacyPolicy = '/privacy_policy';
  static const String interests = '/interests';
  static const String notification = '/notification';
  static const String imageDelay = '/image_delay';
  //static const String bottomNavBar = '/bottom_nav_bar';
  static const String myAwards = '/my_awards';
  static const String myGoods = '/my_goods';
  static const String newAddress = '/newAddress';
  static const String addNewPaymentMethod = '/add_new_payment_method';
  static const String payments = '/payments';
  static const String changePassword = '/change_password';
  static const String changeEmail = '/change_email';
  static const String notificationSettings = '/notification_settings';
  static const String tradeProfile = '/trade_profile';
  static const String interestsDetail = '/interests-detail';
  static const String addDeliveryAddress = '/add_delivery_address';
  static const String editDeliveryAddress = '/edit_delivery_address';
  static const String tradeProfileDetail = '/trade_profile_detail';
  static const String addProduct = '/add_product';
  static const String liveStream = '/live_stream';
  static const String chatRoot = '/chat_root';

  static const String chat = 'chat';
  static const String chatDetails = 'chat_details';
  static const String chatSupportDetails = 'chat_support_details';
  static const String mainNotification = '/main_notification';

  static const String liveStreamViewer = '/live_stream_viewer';
  static const String liveStreamBroadcaster = '/live_stream_broadcaster';
  static const String endedStreamViewer = '/ended_stream_viewer';
  static const String wallet = '/wallet';
  static const String myStreams = '/my_streams';
  static const String myOrders = '/my_orders';
  static const String reportViolation = '/report_violation';

  // =============================== Clips routes ===============================
  static const String editVideo = '/edit_video';
  static const String previewVideo = '/preview_video';
}
