module Views
    module Components
        module Footer
            class Main < Views::Components::Base
                def view_template
                    footer class: "site-footer" do
                        p { "© Nexspro" }
                    end
                end
            end
        end
    end
end
