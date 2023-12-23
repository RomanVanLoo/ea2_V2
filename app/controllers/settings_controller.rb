class SettingsController < ApplicationController
  def toggle_arts
    setting = Setting.first
    setting.display_arts = !setting.display_arts
    if setting.save
      redirect_to admin_path, notice: "Arts are now being #{setting.display_arts ? "displayed" : "hidden"}"
    else
      redirect_to admin_path, alert: setting.errors.full_messages.join(", ")
    end
  end

  def toggle_antiques
    setting = Setting.first
    setting.display_antiques = !setting.display_antiques
    if setting.save
      redirect_to admin_path, notice: "Antiques are now being #{setting.display_antiques ? "displayed" : "hidden"}"
    else
      redirect_to admin_path, alert: setting.errors.full_messages.join(", ")
    end
  end

  def toggle_flooring
    setting = Setting.first
    setting.display_flooring = !setting.display_flooring
    if setting.save
      redirect_to admin_path, notice: "Floorings are now being #{setting.display_flooring ? "displayed" : "hidden"}"
    else
      redirect_to admin_path, alert: setting.errors.full_messages.join(", ")
    end
  end
end
