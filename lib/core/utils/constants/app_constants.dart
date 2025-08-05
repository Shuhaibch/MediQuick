class AppConstants {
  static String tSecretAPIKey = '0';
  static String appName = 'BillApp';
  static String userID = 'userId';
  static String deviceID = 'deviceId';
  static String kerala = 'Kerala';
  static String user = 'User';
  static String appState = 'state';
  static String language = 'language';
  // static String baseUrl = 'https://billappbackend.balancebot.in';
  static String baseUrl = 'https://bill-app-node.uatprosevo.com';

  // API
  static String loginUrl = '/api/company/company-login';
  static String getCompanyByTokenUrl = '/api/company/get-company-by-token';
  static String userLoggOutUrl = '/api/company/logout-company';

  static String otpVerifyUrl = '/api/company/company-verify-register-otp';
  static String accountGroupUrl =
      '/api/company/accounts-group/accounts-group-list';
  static String accountLedgerUrl =
      '/api/company/accounts-ledger/accounts-ledger-list';

  static String createUpdateCategoryUrl =
      '/api/company/category/create-or-update';
  static String getCategoryUrl = '/api/company/category/category-list';

  // unit
  static String createUpdateUnitUrl =
      '/api/company/unit/multiple-create-or-update';
  static String getUnitUrl = '/api/company/unit/unit-list';
  static String deleteUnitUrl = '/api/company/unit';

  // Sales
  static String createUpdateSalesUrl =
      '/api/company/sales/company-sales-mulitple-create-or-update';
  static String getSalesUrl = '/api/company/sales/company-sales-list';
  static String deleteSalesUrl = '/api/company/sales/company-sales-delete';

  // sale line
  static String createUpdateSaleLineUrl =
      '/api/company/salelines/company-salelines-mulitple-create-or-update';
  static String getSaleLineUrl =
      '/api/company/salelines/company-sales-line-list';
  static String deleteSaleLineUrl =
      '/api/company/company-salelines-mulitple-delete';

  // Party
  static String createUpdatePartyUrl =
      '/api/company/parties/multiple-create-or-update';
  static String getPartyUrl = '/api/company/parties/parties-list';
  static String deletePartyUrl = '/api/company/parties';

  // Tax
  static String createUpdateTaxUrl =
      '/api/company/tax/multiple-create-or-update';
  static String getTaxUrl = '/api/company/tax/tax-list';
  static String deleteTaxUrl = '/api/company/tax/multiple-delete';

  // Product
  static String createUpdateProductUrl =
      '/api/company/product/multiple-create-or-update';
  static String getProductUrl = '/api/company/products/products-list';
  static String deleteProductUrl = '/api/company/product/multiple-delete';

  // bank
  static String createUpdateBankUrl =
      '/api/company/bank/company-bank-mulitple-create-or-update';
  static String getBankUrl = '/api/company/bank/company-bank-list';
  static String deleteBankUrl =
      '/api/company/bank/company-bank-mulitple-delete';

  // Stock
  static String createUpdateStockUrl =
      '/api/company/stock-transaction/create-or-update';
  static String getStockUrl = 'api/company/stock-transaction/list';
  static String deleteStockUrl = '/api/company/category/category-delete';

  // purchase
  static String createUpdatePurchaseUrl =
      '/api/company/purchases/company-purchases-multiple-create-or-update';
  static String getPurchaseUrl =
      '/api/company/purchases/company-purchases-list';
  static String deletePurchaseUrl =
      '/api/company/purchases/company-purchases-multiple-delete';

  // purchase line
  static String createUpdatePurchaseLineUrl =
      '/api/company/purchasesline/company-purchaseline-multiple-create-or-update';
  static String getPurchaseLineUrl =
      '/api/company/purchaselines/company-purchase-line-list';
  static String deletePurchaseLineUrl =
      '/api/company/purchaseline/company-purchaselines-multiple-delete';

  // transaction
  static String createUpdateTransationUrl =
      '/api/company/transactions/multiple-create-or-update';
  static String getTransationUrl = '/api/company/transactions/transaction-list';
  static String deleteTransationUrl =
      '/api/company/transactions/multiple-delete';

  // Account Ledger
  static String createUpdateAccountLedgerUrl =
      '/api/company/accounts-ledger/multiple-create-or-update';
  static String getAccountLedgerUrl =
      '/api/company/accounts-ledger/accounts-ledger-list';
  static String deleteAccountLedgerUrl =
      '/api/company/accounts-ledger/multiple-delete';

  // Local Database
  static const String localDatabaseName = "billapplocal";
  static const String salesLocal = "sales";
  static const String saleLineLocal = "sale_line";
  static const String partyLocal = "party";
  static const String purchaseLocal = "purchase";
  static const String purchaseLineLocal = "purchase_line";
  static const String productCategoryLocal = "product_category";
  static const String transationLocal = "transation";
  static const String stockTransationLocal = "stock_transation";
  static const String productLocal = "product";
  static const String taxLocal = "tax";
  static const String unitLocal = "unit";
  static const String accountGroupLocal = "account_group";
  static const String bankLocal = "bank";
  static const String accountLedgerLocal = "account_ledger";
  static const String paymentLocal = "payment";
  static const String incExpLocal = "inc_exp";

  // SQL
  static const String idType = 'TEXT PRIMARY KEY';
  static const String idIntType = 'INTEGER PRIMARY KEY';
  static const String textTypeNullable = 'TEXT';
  static const String realNullable = 'REAL';
  static const String intNullable = 'INTEGER';
  static const String intType = 'INTEGER NOT NULL';
  static const String textType = 'TEXT NOT NULL';
  static const String boolType = 'BOOLEAN NOT NULL';
  static const String foreingKey = 'FOREIGN KEY';
  static const String referenceKey = 'REFERENCES';
  static const String imageKey = 'BLOB';

  // GETX STORAGE

  static const String deletedSales = 'deletedSales';
  static const String createdUpdatedSales = 'createdUpdatedSales';
  
  static const String deletedProduct = 'deletedProduct';
  static const String createdUpdatedProduct = 'createdUpdatedProduct';

  static const String deletedProductCategory = 'deletedProductCategory';
  static const String createdUpdatedProductCategory = 'createdUpdatedProductCategory';

  static const String deletedStock = 'deletedStock';
  static const String createdUpdatedStock = 'createdUpdatedStock';

  static const String deletedUnit = 'deletedUnit';
  static const String createdUpdatedUnit = 'createdUpdatedUnit';

  static const String deletedParty = 'deletedParty';
  static const String createdUpdatedParty = 'createdUpdatedParty';

  static const String deletedIncExp = 'deletedIncExp';
  static const String createdUpdatedIncExp = 'createdUpdatedIncExp';

  static const String deletedSaleLine = 'deletedSaleLine';
  static const String createdUpdatedSaleLine = 'createdUpdatedSaleLine';

  static const String deletedTransation = 'deletedTransation';
  static const String createdUpdatedTransation = 'createdUpdatedTransation';

  static const String deletedPurchase = 'deletedPurchase';
  static const String createdUpdatedPurchase = 'createdUpdatedPurchase';

  static const String deletedPurchaseLine = 'deletedPurchaseLine';
  static const String createdUpdatedPurchaseLine = 'createdUpdatedPurchaseLine';

  static const String deletedBank = 'deletedBank';
  static const String createdUpdatedBank = 'createdUpdatedBank';

  static const String deletedCategory = 'deletedCategory';
  static const String deletedTax = 'deletedTax';
  static const String deletedPayment = 'payment';
  static const String isReadOnly = 'isReadOnly';
}
