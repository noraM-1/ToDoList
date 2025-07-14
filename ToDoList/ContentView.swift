//
//  ContentView.swift
//  ToDoList
//
//  Created by Amanda Martin on 7/14/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
   @State private var showNewTask = false
    
    
   @Query var toDos: [ToDoItem]
    var body: some View {
        
        VStack {
            HStack {
                Text("To-Do List")
                    .font(.system(size:40))
                    .fontWeight(.black)
                Spacer()
                
                
                
                Button{
                    withAnimation {
                        showNewTask = true
                    }
                } label: {
                    Text("+")
                        .font(.title)
                        .fontWeight(.bold)
                }//label
            }//hstack
            
        }//vastack
        .padding()
        Spacer()
        
        List{
            ForEach(toDos) {toDoItem in
                Text (toDoItem.title)
            }
        }
        
            if showNewTask {
                NewToDoView(showNewTask: $showNewTask, toDoItem: ToDoItem(title: "", isImportant: false))
            }
    
        
        
    }//body
}//struct

#Preview {
    ContentView()
}
