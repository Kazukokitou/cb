module Admin::InformationHelper
  def information_form_options(information)
    information.persisted? ? {url: admin_information_path(information), method: :put} : {url: admin_information_index_path, method: :post}
  end
end
