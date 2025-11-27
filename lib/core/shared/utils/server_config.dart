abstract class ServerConfig {
  static const String domen = "https://khvatai.ru/"; //prod
  static const baseUrl = "${domen}api/v1/";
  static String token = "";

  static const String login = "sign-in";
  static const String register = "sign-up";
  static const String checkOtp = "submit-otp";
  static const String interestsCategories = "interestsCategories";
  static const String loginWithGoogle = "auth/google";
  static const String loginWithApple = "auth/apple";

  static const String deliveryAddress = "addresses";
  static String deliveryAddressId(int addressId) =>
      '$deliveryAddress/$addressId';
  static String notificationMarkRead(int id) => '$notifications/$id/read';
  static String togglefav(int id) => '$products/$id/toggle-favorite';
  static String cardId(int cardId) => '$cards/$cardId';
  static String cartId(int cartId) => '$cart/$cartId/clear';
  static String updateCart(int cartId) => '$addToCart/$cartId';
  static const String profile = "profile";
  static const String cards = "cards";
  static const String cart = "cart";
  static const String notifications = "notifications";
  static const String deleteAccount = "delete-account";
  static const String signOut = "sign-out";
  static const String categories = "categories";
  static const String favCategory = "category-favorites";
  static const String upgrade = "upgrade-to-business";
  static const String products = "products";
  static const String getProduct = "get-products";
  static const String getFavProduct = "favorites?type=product";
  static const String streams = "streams";
  static const String search = "search";
  static const String addToCart = "cart/items";
  static const String changePassword = "change-password";
  static const String favFilter = "category-favorites/filtered";

  static String chats = 'chats';
  static String supportChat = 'support/chat';
  static String chatMessages(int id) => 'chats/$id/messages';
  static String sendSupportMessages = 'support/messages';
  static String supportChatMessages(int id) => 'support/chats/$id/messages';

  static String markAsRead(int id) => 'chats/$id/mark-as-read';
  static String messages = 'messages';

  static String streamComments(int id) => "streams/$id/comments";
  static String startStream(int id) => "streams/$id/start";
  static String leaveStream(int id) => "streams/$id/leave";
  static String joinStream(int id) => 'streams/$id/join';

  static String endStream(int id) => "streams/$id/end";
  static String bidStream(int id) => "streams/$id/bids";
  static String addBidStream(int streamId, int productId) =>
      "streams/$streamId/products/$productId/bid";
  static String addProductToStream(int streamId) =>
      "streams/$streamId/products";
  static String getStreamProducts(int streamId) => "streams/$streamId/products";
  static String getBidSession(int streamId) =>
      "streams/$streamId/current-bid-session";
  static String toggleBidding(int streamId, int streamProductId) =>
      "streams/$streamId/products/$streamProductId/toggle-bidding";
  static const String subscribedUsers = "me/subscribed-users";
  static String toggleSubscription(int userId) =>
      "users/$userId/toggle-subscription";

  static String updateProduct(int productId) => "products/$productId";

  // Wallet endpoints
  static String getWallet(int walletId) => "wallets/$walletId";
  static String getWalletTransactions(int walletId) => "wallets/$walletId/transactions";
  static String withdrawToCard(int walletId) => "wallets/$walletId/top-up-card";

  // My Streams endpoint
  static const String myStreams = "streams/my-streams";

  // Orders endpoint
  static const String orderFromCart = "orders/from-cart";
  static const String userOrders = "orders/user";
}
