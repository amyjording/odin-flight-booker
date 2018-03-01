require 'rails/helper'

	scenario "visitor views flight search form" do
		visit root_path
		Given "visitor sees flight search form"
		When "visitor enters all info"
		Then "visitor views search results for available flights"
	end

	def visitor_can_view_flight_search_form
		visit flights_path
		expect(page).to have_content("Search Flights")
	end

	def visitor_enters_search_criteria_for_flights
		select_airports
		enter_date
		click_button "Go"
	end

	def visitor_can_see_search_results
		expect(page).to have_content("From SFO to NYC - Departs 07/11/2018 - 3 hour flight.")
	end

	def select_airports
		# refactor this, it's not the right rspec structure
		select('From Airport', :from => "flights[from_airport]['SFO']")
		select('To Airport', :from => "flights[to_airport]['NYC']")
		select('07/11/2018', :from => "Flight Date")
	end

	def select_from_available_flights
		# describe the behavior here
		select()
	end

	