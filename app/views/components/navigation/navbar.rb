module Views
    module Components
        module Navigation
            class Navbar < Views::Components::Base
                def view_template
                    header class: "site-header" do
                        nav class: "site-nav" do
                            ul do
                                li { link_to "Acceuil", root_path }
                            end
                        end
                    end
                end
            end
        end
    end
end