module Views
    module Components
        module Shared
            class SkipToContent < Views::Components::Base
                def view_template
                    a href: "#main-content",
                        class: "sr-only focus:not-sr-only focus:absolute focus:left-2 focus:top-2" do
                            "Aller au contenu principal"
                    end
                end
            end
        end
    end
end
                    