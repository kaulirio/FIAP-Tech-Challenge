CREATE TABLE `tech-challenge-3-group-20.dataset_saude_e_trabalho_202011.table_saude_e_trabalho_202011_filtered` as 
  select 
        Indicador As Ind,
        'Nivel Territorial' as Nivel,
        'Abertura Territorial' as UF,
        'Variável de abertura 1' as Var1,
        'Categoria de abertura 1' as Cat1,
        'Variável de abertura 2' as Var2,
        'Categoria de abertura 2' as Cat2,
        Setembro AS `Set`,   
        Outubro AS Out,
        Novembro AS Nov    
        
    from `tech-challenge-3-group-20.dataset_saude_e_trabalho_202011.table_saude_e_trabalho_202011`

    where Indicador in
          (
            -- Comportamento da população na época da COVID-19;
            'Pessoas ocupadas (mil pessoas)', -- OK
                'Pessoas ocupadas e não afastadas do trabalho, que trabalhavam de forma remota (mil pessoas)', -- OK
                'Pessoas ocupadas e afastadas do trabalho que tinham devido ao distanciamento social (mil pessoas)', -- OK
                'Pessoas desocupadas (mil pessoas)', -- OK
                'Pessoas não ocupadas que não procuraram trabalho por conta da pandemia ou por falta de trabalho na localidade, mas que gostariam de trabalhar na semana anterior (mil pessoas)', -- OK
            'Pessoas na força de trabalho (mil pessoas)', -- OK

            -- Sintomas conjugados: perda de cheiro ou sabor ou tosse, febre e dificuldade para respirar ou febre, tosse e dor no peito
            'Pessoas que apresentaram sintomas referenciados conjugados3 (mil pessoas)', -- OK

            -- Testes de COVID realizados
            'Pessoas que fizeram algum teste para saber se estavam infectadas pelo Coronavírus (mil pessoas)', -- OK
            'Pessoas que fizeram algum teste para saber se estavam infectadas pelo Coronavírus e testaram positivo (mil pessoas) ', --OK,

            -- Características econômicas da Sociedade
            'Massa de rendimento médio real efetivamente recebido de todos os trabalhos das pessoas ocupadas com rendimento do trabalho (milhões de R$)' -- OK

          )

  UNION ALL

  select 

      Indicador As Ind,
      N_vel_Territorial as Nivel,
      Abertura_Territorial as UF,
      Vari_vel_de_abertura_1 as Var1,
      Categoria_de_abertura_1 as Cat1,
      Vari_vel_de_abertura_2 as Var2,
      Categoria_de_abertura_2 as Cat2,
      Setembro AS `Set`,
      Outubro AS Out,
      Novembro AS Nov  

    from `tech-challenge-3-group-20.dataset_saude_br_202011.external_table_saude_br_202011`

    where Indicador in
          (
            -- Caracterização dos sintomas clínicos da população (não possui detalhamento por UF)
            'Pessoas que apresentaram os sintomas de tosse, febre e dor no peito (mil pessoas)', -- OK
            'Pessoas que apresentaram os sintomas de tosse, febre e dificuldade para respirar (mil pessoas) ',
            'Pessoas que apresentaram o sintoma de perda de cheiro ou de sabor (mil pessoas)' --OK
          )
