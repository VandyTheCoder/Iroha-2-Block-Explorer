module ApplicationHelper
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
