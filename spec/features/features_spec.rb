require './app/controllers/app'
require './app/models/computer'

feature "Rock, Paper, Scissors" do

    scenario "register player's name" do
      sign_in_and_enter()
      expect(page).to have_content("Wanda Maximoff")
    end

    scenario "tells player they have lost when they lose" do
      allow_any_instance_of(Array).to receive(:sample).and_return(:PAPER)
      sign_in_and_enter()
      click_button "ROCK"
      expect(page).to have_content("YOU LOSE!")
    end

    scenario "tells player they have won when they win" do
      allow_any_instance_of(Array).to receive(:sample).and_return(:PAPER)
      sign_in_and_enter()
      click_button "SCISSORS"
      expect(page).to have_content("YOU WIN!")
    end

    scenario "tells player they have drawn when they draw" do
      allow_any_instance_of(Array).to receive(:sample).and_return(:SCISSORS)
      sign_in_and_enter()
      click_button "SCISSORS"
      expect(page).to have_content("DRAW!")
    end

  end

  feature "Highlights" do

    scenario "what the player has selected" do
      sign_in_and_enter()
      click_button "ROCK"
      expect(page).to have_content("You chose ROCK")
    end

    scenario "what the player has selected" do
      sign_in_and_enter()
      click_button "PAPER"
      expect(page).to have_content("You chose PAPER")
    end

    scenario "what the player has selected" do
      sign_in_and_enter()
      click_button "SCISSORS"
      expect(page).to have_content("You chose SCISSORS")
    end

    feature "Results" do

      scenario "highlights the winning image" do
        sign_in_and_enter()
        click_button "ROCK"
        expect(page).to have_css(div.winner)
      end
    end
  end
