//
//  AuthService.swift
//  Food Swipe
//
//  Created by Phat Cao on 5/20/25.
//

import Foundation
import FirebaseAuth

class AuthService{
    static let shared = AuthService()
    
    private init() {}
    
    func signUp(email: String, password: String, completion: @escaping (Result<User, Error>) -> Void) {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                completion(.failure(error))
            } else if let user = result?.user {
                completion(.success(user))
            }
        }
    }
    
    func signIn(email: String, password: String, completion: @escaping (Result<User, Error>) -> Void) {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                completion(.failure(error))
            } else if let user = result?.user {
                completion(.success(user))
            }
            else {
                let unknownError = NSError(domain: "", code: -1, userInfo: [NSLocalizedDescriptionKey: "Unknown authentication error"])
                completion(.failure(unknownError))
            }
        }
    }
    
    
    func signOut() throws {
        try Auth.auth().signOut()
    }

    func getCurrentUser() -> User? {
        return Auth.auth().currentUser
    }
}
