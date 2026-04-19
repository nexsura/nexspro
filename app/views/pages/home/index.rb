module Views
  module Pages
    module Home
      class Index < Views::Base
        def page_title
          "Acceuil"
        end

        def view_template
          section class: "home-page" do
            h1 { "Bienvenu sur Nexspro" }

            p do
              " Ton projet Rails 8 fonctionne maintenant avec une page full phlex "
            end
          end
        end
      end
    end
  end
end
