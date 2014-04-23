class Balanco < ActiveRecord::Base
  attr_accessible :Cliente, :Codigo, :DataEntrada, :DataSaida, :Observacao, :Produto, :ValorEntrada, :ValorSaida, :troca
end
