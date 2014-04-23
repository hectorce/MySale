require 'test_helper'

class BalancosControllerTest < ActionController::TestCase
  setup do
    @balanco = balancos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:balancos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create balanco" do
    assert_difference('Balanco.count') do
      post :create, :balanco => { :Cliente => @balanco.Cliente, :Codigo => @balanco.Codigo, :DataEntrada => @balanco.DataEntrada, :DataSaida => @balanco.DataSaida, :Observacao => @balanco.Observacao, :Produto => @balanco.Produto, :ValorEntrada => @balanco.ValorEntrada, :ValorSaida => @balanco.ValorSaida, :troca => @balanco.troca }
    end

    assert_redirected_to balanco_path(assigns(:balanco))
  end

  test "should show balanco" do
    get :show, :id => @balanco
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @balanco
    assert_response :success
  end

  test "should update balanco" do
    put :update, :id => @balanco, :balanco => { :Cliente => @balanco.Cliente, :Codigo => @balanco.Codigo, :DataEntrada => @balanco.DataEntrada, :DataSaida => @balanco.DataSaida, :Observacao => @balanco.Observacao, :Produto => @balanco.Produto, :ValorEntrada => @balanco.ValorEntrada, :ValorSaida => @balanco.ValorSaida, :troca => @balanco.troca }
    assert_redirected_to balanco_path(assigns(:balanco))
  end

  test "should destroy balanco" do
    assert_difference('Balanco.count', -1) do
      delete :destroy, :id => @balanco
    end

    assert_redirected_to balancos_path
  end
end
