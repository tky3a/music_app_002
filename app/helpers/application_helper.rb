module ApplicationHelper
  def full_title(page_title)
    base_title = "Ruby on Rails Tutorial Sample App"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end

  def bootstrap_class_for(flash_type) #bootstrapでフラッシュメッセージのメソッド設定
    case flash_type #フラッシュタイプの場合
      when :success #いつ：成功？"警告が成功したら"
        "alert-success" #（緑色のメッセージ）

      when :error #いつ：エラー？"危険な警告だったら"
        "alert-danger" #（赤色のメッセージ）

      when :alert #いつ：アラートなるん？"危ない時に警告"
        "alert-warning" #（黄色のメッセージ）
        
      when :notice #いつ：通知される？"アラート情報が出た時"
        "alert-info" #（青色のメッセージ）
      else
        flash_type.to_s
    end
  end
end