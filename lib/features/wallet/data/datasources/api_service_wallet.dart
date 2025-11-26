import 'package:hvatai/core/datasources/remote/api_base.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';
import 'package:hvatai/features/wallet/data/models/transaction_model/transaction_model.dart';
import 'package:hvatai/features/wallet/data/models/wallet_model/wallet_model.dart';

class ApiServiceWallet extends ApiBase {
  Future<WalletResponse> getWallet(int walletId) async {
    return executeAndHandleErrorServer<WalletResponse>(() async {
      final response = await get(ServerConfig.getWallet(walletId));
      if (response.statusCode == 200 || response.statusCode == 201) {
        return WalletResponse.fromJson(response.json);
      }
      throw Exception('Failed to get wallet: ${response.statusCode}');
    });
  }

  Future<TransactionResponse> getWalletTransactions(int walletId) async {
    return executeAndHandleErrorServer<TransactionResponse>(() async {
      final response = await get(ServerConfig.getWalletTransactions(walletId));
      if (response.statusCode == 200 || response.statusCode == 201) {
        return TransactionResponse.fromJson(response.json);
      }
      throw Exception('Failed to get wallet transactions: ${response.statusCode}');
    });
  }

  Future<WithdrawResponse> withdrawToCard({
    required int walletId,
    required double amount,
  }) async {
    return executeAndHandleErrorServer<WithdrawResponse>(() async {
      final response = await post(
        ServerConfig.withdrawToCard(walletId),
        body: {'amount': amount , 'test': 1},
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        return WithdrawResponse.fromJson(response.json);
      }
      throw Exception('Failed to withdraw: ${response.statusCode}');
    });
  }
}

