//
//  NewToDoView.swift
//  ToDoList
//
//  Created by Amanda Martin on 7/14/25.
//

import SwiftUI
import SwiftData

struct NewToDoView: View {
    @Binding var showNewTask: Bool
    @Bindable var toDoItem: ToDoItem
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        VStack{
            Text("Task Title:")
                .font(.title)
                .fontWeight(.bold)
            TextField("Enter the task description...", text: $toDoItem.title, axis : .vertical)
                .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                .padding()
            
            Toggle(isOn: $toDoItem.isImportant) {
                Text("Is it important?")
            }//toggle
            
            Button("Save") {
                addToDo()
                showNewTask = false
            }//button
            .font(.title)
            .fontWeight(.bold)
            
        }//vstack
        .padding()
    }//body
    func addToDo() {
        let toDo = ToDoItem(title: toDoItem.title, isImportant: toDoItem.isImportant)
        modelContext.insert(toDo)
    }//todo func
}//struct

#Preview {
    NewToDoView(showNewTask: .constant(false), toDoItem: ToDoItem(title: "", isImportant: false))
     }

