class Array
  def blank_all?
    self.all? { |x| x.blank? }
  end

  def present_any?
    self.any? { |x| x.present? }
  end

  def reject_blank
    self.reject(&:blank?)
  end

  def reject_blank!
    self.reject!(&:blank?)
  end
end
