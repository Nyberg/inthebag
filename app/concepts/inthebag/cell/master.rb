module Inthebag::Cell
  class Master < Trailblazer::Cell
    include ActionView::Helpers::TranslationHelper
    include Cell::Translation
    include ActionView::Helpers::DateHelper
    include ActionView::Helpers::FormOptionsHelper
    include Kaminari::Cells

    def form
      context[:form]
    end

  end
end