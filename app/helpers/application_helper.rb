module ApplicationHelper
  def render_prev_button(page)
    if controller_name == "home_page"
      return link_to root_url(index: (@page.to_i - 10)), class: "page-link" do
        t("previous")
      end
    elsif controller_name == "accounts"
      return link_to accounts_index_url(index: (@page.to_i - 10)), class: "page-link" do
        t("previous")
      end
    else
      return link_to assets_index_url(index: (@page.to_i - 10)), class: "page-link" do
        t("previous")
      end
    end
  end

  def render_next_button(page)
    if controller_name == "home_page"
      return link_to root_url(index: (@page.to_i + 10)), class: "page-link" do
        t("next")
      end
    elsif controller_name == "accounts"
      return link_to accounts_index_url(index: (@page.to_i + 10)), class: "page-link" do
        t("next")
      end
    else
      return link_to assets_index_url(index: (@page.to_i + 10)), class: "page-link" do
        t("next")
      end
    end
  end

  def get_instruction(instruction)
    case
    when instruction["transferBox"].present?
      "Transfer Asset"
    when instruction["registerBox"].present?
      object = instruction["registerBox"].to_s
      if object.include? "newAccount"
        "Register Account"
      elsif object.include? "newAssetDefinition"
        "Register Asset Definition"
      elsif object.include? "asset"
        "Register Asset"
      elsif object.include? "newDomain"
        "Register Domain"
      elsif object.include? "newRole"
        "Register Role"
      elsif object.include? "validtor"
        "Register Validator"
      elsif object.include? "definition"
        "Register Permission"
      elsif object.include? "peer"
        "Register Peer"
      else
        "Register"
      end
    when instruction["unregisterBox"].present?
      object = instruction["unregisterBox"].to_s
      if object.include? "assetId"
        "Unregister Asset"
      elsif object.include? "accountId"
        "Unregister Account"
      elsif object.include? "domainId"
        "Unregister Domain"
      elsif object.include? "assetDefinitionId"
        "Unregister Asset Definition"
      elsif object.include? "peerId"
        "Unregister Peer"
      elsif object.include? "triggerId"
        "Unregister Peer"
      elsif object.include? "roleId"
        "Unregister Role"
      elsif object.include? "permissionTokenDefinitionId"
        "Unregister Permission Token"
      elsif object.include? "validatorId"
        "Unregister Validator"
      else
        "Unregister"
      end
    when instruction["grantBox"].present?
      "Grant Access"
    when instruction["revokeBox"].present?
      "Revoke Access"
    when instruction["mintBox"].present?
      "Mint Asset"
    when instruction["burnBox"].present?
      "Burn Asset"
    else
      "Unknown"
    end
  end
end
