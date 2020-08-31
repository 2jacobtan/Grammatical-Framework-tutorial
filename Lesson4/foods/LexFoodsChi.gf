instance LexFoodsChi of LexFoods = open SyntaxChi, ParadigmsChi in {
  oper
    wine_N = mkN "葡萄酒" ;
    pizza_N = mkN "批萨" ;
    cheese_N = mkN "芝士" ;
    fish_N = mkN "鱼" ;
    fresh_A = mkA "新鲜" ;
    warm_A = mkA "温" ;
    italian_A = mkA "意大利" ;
    expensive_A = mkA "昂贵" ;
    delicious_A = mkA "可口" ;
    boring_A = mkA "无聊" ;
}