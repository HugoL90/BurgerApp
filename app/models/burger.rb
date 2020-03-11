class Burger < ApplicationRecord
    def getNutriments
        require 'openfoodfacts'

        product = Openfoodfacts::Product.get(self.code, locale: 'fr')
        
        if product == nil
        product = [["Aucune données"], [""]]
        else
        product = product.nutriments
        end
        
        return product
    end
end
