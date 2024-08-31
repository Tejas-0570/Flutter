class MyPricingCalculator {
  /// Calculate price based on tax and shipping
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    /// calculate total price
    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  /// Calculate and return shipping cost
  static double calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost;
  }

  /// Calculate and return tax
  static double calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount;
  }

  // Get tax rate based on location (This should be replaced with API call)
  static double getTaxRateForLocation(String location) {
    // Placeholder value, adjust as needed
    return 0.05;
  }

  // Get shipping cost based on location (This should be replaced with API call)
  static double getShippingCost(String location) {
    // Placeholder value, adjust as needed
    return 10.00;
  }

  // Sum all cart values and return total amount
  // static double calculateCartTotal(CartModel cart) {
  //   return cart.items.map((e) => e.price).fold(0, (previousPrice, currentPrice) => previousPrice + (currentPrice ?? 0));
  // }
}
