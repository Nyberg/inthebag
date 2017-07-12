module Inthebag::Cell
  class Master < Trailblazer::Cell
    include ActionView::Helpers::TranslationHelper
    include Cell::Translation
    include ActionView::Helpers::DateHelper
    include ActionView::Helpers::FormOptionsHelper
    include ActionView::Helpers::FormTagHelper
    include Kaminari::Cells

    def form
      context[:form]
    end

    def current_user
      context[:current_user]
    end

  end
end