require 'test_helper'

class TipoCorreccionsControllerTest < ActionController::TestCase
  setup do
    @tipo_correccion = tipo_correccions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_correccions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_correccion" do
    assert_difference('TipoCorreccion.count') do
      post :create, tipo_correccion: { nombre: @tipo_correccion.nombre }
    end

    assert_redirected_to tipo_correccion_path(assigns(:tipo_correccion))
  end

  test "should show tipo_correccion" do
    get :show, id: @tipo_correccion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_correccion
    assert_response :success
  end

  test "should update tipo_correccion" do
    patch :update, id: @tipo_correccion, tipo_correccion: { nombre: @tipo_correccion.nombre }
    assert_redirected_to tipo_correccion_path(assigns(:tipo_correccion))
  end

  test "should destroy tipo_correccion" do
    assert_difference('TipoCorreccion.count', -1) do
      delete :destroy, id: @tipo_correccion
    end

    assert_redirected_to tipo_correccions_path
  end
end
