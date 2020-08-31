--# -path=.:../foods:present

concrete FoodsChi of Foods = FoodsI with
  (Syntax = SyntaxChi),
  (LexFoods = LexFoodsChi) ;

-- concrete FoodsChi of Foods = open SyntaxChi,ParadigmsChi in {
--   lincat
--     Phrase = Cl ;
--     Item = NP ;
--     Kind = CN ;
--     Quality = AP ;      

--   lin
--     Is item quality = mkCl item quality ;
--     This kind = mkNP this_Det kind ;
--     That kind = mkNP that_Det kind ;
--     These kind = mkNP these_Det kind ;
--     Those kind = mkNP those_Det kind ;
--     QKind quality kind = mkCN quality kind ;
--     Very quality = mkAP very_AdA quality ;

--     Wine = mkCN (mkN "葡萄酒") ;
--     Pizza = mkCN (mkN "批萨") ;
--     Cheese = mkCN (mkN "芝士") ;
--     Fish = mkCN (mkN "鱼") ;
--     Fresh = mkAP (mkA "新鲜") ;
--     Warm = mkAP (mkA "温") ;
--     Italian = mkAP (mkA "意大利") ;
--     Expensive = mkAP (mkA "昂贵") ;
--     Delicious = mkAP (mkA "可口") ;
--     Boring = mkAP (mkA "无聊") ;

-- }