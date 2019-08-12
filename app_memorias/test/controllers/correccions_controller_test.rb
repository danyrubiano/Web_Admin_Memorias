require 'test_helper'

class CorreccionsControllerTest < ActionController::TestCase
  setup do
    @correccion = correccions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:correccions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create correccion" do
    assert_difference('Correccion.count') do
      post :create, correccion: { mem_id: @correccion.mem_id, ruta_correccion: @correccion.ruta_correccion, teacher_id: @correccion.teacher_id, tipo_correccion_id: @correccion.tipo_correccion_id, validez_correcion: @correccion.validez_correcion }
    end

    assert_redirected_to correccion_path(assigns(:correccion))
  end

  test "should show correccion" do
    get :show, id: @correccion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @correccion
    assert_response :success
  end

  test "should update correccion" do
    patch :update, id: @correccion, correccion: { mem_id: @correccion.mem_id, ruta_correccion: @correccion.ruta_correccion, teacher_id: @correccion.teacher_id, tipo_correccion_id: @correccion.tipo_correccion_id, validez_correcion: @correccion.validez_correcion }
    assert_redirected_to correccion_path(assigns(:correccion))
  end

  test "should destroy correccion" do
    assert_difference('Correccion.count', -1) do
      delete :destroy, id: @correccion
    end

    assert_redirected_to correccions_path
  end
end
