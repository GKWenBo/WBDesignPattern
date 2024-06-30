import UIKit

class TaxStrategy {
    func calculate(price: Double) -> Double {
        return 0.0
    }
}

class CNTaxStrategy: TaxStrategy {
    override func calculate(price: Double) -> Double {
        return price * 0.1
    }
}

class CNYTaxStrategy: TaxStrategy {
    override func calculate(price: Double) -> Double {
        return price * 0.2
    }
}

class USDStrategy: TaxStrategy {
    override func calculate(price: Double) -> Double {
        return price * 0.3
    }
}

class SalesOrder {
    var taxStrategy: TaxStrategy
    var price: Double
    
    init(taxStrategy: TaxStrategy, price: Double) {
        self.taxStrategy = taxStrategy
        self.price = price
    }
    
    func getTax() -> Double {
        return taxStrategy.calculate(price: price)
    }
}


let usd = SalesOrder(taxStrategy: CNYTaxStrategy(), price: 100)
print(usd.getTax())
