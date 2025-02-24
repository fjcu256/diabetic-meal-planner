//
//  MainView.swift
//  GlucoseGenie
//
//  Created by Francisco Cruz-Urbanc on 2/23/25.

import SwiftUI

struct MainView: View {
    @EnvironmentObject private var authenticationService: AuthenticationService
    @State private var showMenu = false
    
    var body: some View {
        VStack {
            Text("This is the main view :)")
            
            Button("Settings"){
                Task {
                    // Go to settings page
                    // Displayed with settings logo
                }
            }
            
            Button("Recipes") {
                Task{
                    // Go to recipe display page.
                }
            }
            
            // TODO Recipe Search Bar
            // TODO Recipe Display
            
            Button("Weekly Meal Plan"){
                Task {
                    // Go to Weekly Meal Plan Page
                    // Weekly meal plan page should have a section that
                    // shows nutrient totals from recipes.
                }
            }
            Button("Saved Recipes"){
                Task{
                    // Go to Saved Recipes Page
                }
            }
            Button("Grocery List"){
                Task{
                    // Go to GroceryListViewer Page
                }
            }
            Button("Grocery Stores"){
                Task{
                    // Go to GroceryStoreViewer
                }
            }

            // TODO Sign out can be placed in menu
            Button("Sign out") {
                Task {
                    await authenticationService.signOut()
                }
            }
            
            Button("MORE"){
                withAnimation {
                    showMenu.toggle()
                }
            }
            .padding()
            //.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.blue)
            .ignoresSafeArea()
            
        }
    }
}

#Preview {
    MainView()
}
