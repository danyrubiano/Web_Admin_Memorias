require 'test_helper'

class DocumentacionsControllerTest < ActionController::TestCase
  setup do
    @documentacion = documentacions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:documentacions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create documentacion" do
    assert_difference('Documentacion.count') do
      post :create, documentacion: { mem_id: @documentacion.mem_id, nombre: @documentacion.nombre, validez_documentacion: @documentacion.validez_documentacion }
    end

    assert_redirected_to documentacion_path(assigns(:documentacion))
  end

  test "should show documentacion" do
    get :show, id: @documentacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @documentacion
    assert_response :success
  end

  test "should update documentacion" do
    patch :update, id: @documentacion, documentacion: { mem_id: @documentacion.mem_id, nombre: @documentacion.nombre, validez_documentacion: @documentacion.validez_documentacion }
    assert_redirected_to documentacion_path(assigns(:documentacion))
  end

  test "should destroy documentacion" do
    assert_difference('Documentacion.count', -1) do
      delete :destroy, id: @documentacion
    end

    assert_redirected_to documentacions_path
  end
end
