require "test_helper"

class AppEmpresasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @app_empresa = app_empresas(:one)
  end

  test "should get index" do
    get app_empresas_url
    assert_response :success
  end

  test "should get new" do
    get new_app_empresa_url
    assert_response :success
  end

  test "should create app_empresa" do
    assert_difference("AppEmpresa.count") do
      post app_empresas_url, params: { app_empresa: { app_empresa: @app_empresa.app_empresa, rut: @app_empresa.rut } }
    end

    assert_redirected_to app_empresa_url(AppEmpresa.last)
  end

  test "should show app_empresa" do
    get app_empresa_url(@app_empresa)
    assert_response :success
  end

  test "should get edit" do
    get edit_app_empresa_url(@app_empresa)
    assert_response :success
  end

  test "should update app_empresa" do
    patch app_empresa_url(@app_empresa), params: { app_empresa: { app_empresa: @app_empresa.app_empresa, rut: @app_empresa.rut } }
    assert_redirected_to app_empresa_url(@app_empresa)
  end

  test "should destroy app_empresa" do
    assert_difference("AppEmpresa.count", -1) do
      delete app_empresa_url(@app_empresa)
    end

    assert_redirected_to app_empresas_url
  end
end
