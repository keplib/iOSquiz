//
//  ContentModel.swift
//  LearningApp
//
//  Created by Balázs Képli on 7/1/22.
//

import Foundation

class ContentModel: ObservableObject {
    
    @Published var modules = [Module]()
    var styleData: Data?
    
    init() {
        getLocalData()
    }
    
    // Parsing the JSON
    
    func getLocalData() {
        
        let jsonUrl = Bundle.main.url(forResource: "data", withExtension: "json")
        
        do {
            let jsonData = try Data(contentsOf: jsonUrl!)
            let jsonDecoder = JSONDecoder()
            
            do {
                let modules =  try jsonDecoder.decode([Module].self, from: jsonData)
            }
            catch {
                print(error)
            }
            self.modules = modules
        }
        catch {
            print(error)
        }
       
        
    // Parsing HTML / CSS
        
        let styleUrl = Bundle.main.url(forResource: "style", withExtension: "html")
        
        do {
            
            let styleData = try Data(contentsOf: styleUrl!)
            
            self.styleData = styleData
            
            
        } catch {
            print(error)
        }

        
    }
    
}
