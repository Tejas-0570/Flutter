

class MyPricingCalculator{
  // calculate price based on tax and shipping
  static double calculateTotalPrice(double productPrice, String location){
    //double taxRate = getTaxRateForLocation(location);
   // double texAmount = productPrice * taxRate;

    //double shippingCost = getShippingCost(location);

    //double totalPrice = productPrice * taxAmount * shippingCost;
    return 0;//totalPrice;
  }

  //calculate shipping cost
  // static String calculateShippingCost(double productPrice, String location){
  //   double shippingCost = getShippingCost(location);
  //   return shippingCost.toStringAsFixed(2);
  // }


  // calculate tax
  static String calculateTax(double productPrice, String location){
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location){
    //calculate after adding API
    return 5.00;//for Example
  }

  // sum all cart values and return total amount
  // static double calculateCartTotal(CartModel cart){
  //   return cart.items.map((e) => e.price).fold(0, (previousPrice, currentPrice) => previousPrice + (currentPrice ?? 0));
  // }





}