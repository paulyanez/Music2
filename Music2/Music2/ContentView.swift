//
//  ContentView.swift
//  Music2
//
//  Created by Paul Yanez on 6/5/23.
//

import SwiftUI

struct ContentView: View {
    @State var selectedIndex = 0
    
    var body: some View {
        NavigationView {
            TabView(selection: $selectedIndex) {
                Music()
                    .tabItem {
                        Label("Listen Now", systemImage: "play.circle.fill")
                    }.tag(0)
                
                Music()
                    .tabItem {
                        Label("Browse", systemImage: "square.grid.2x2.fill")
                    }.tag(1)
                
                Music()
                    .tabItem {
                        Label("Radio", systemImage: "dot.radiowaves.left.and.right")
                    }.tag(2)
                
                Music()
                    .tabItem {
                        Label("Library", systemImage: "square.stack.fill")
                    }.tag(3)
                
                    .toolbarBackground(.visible, for: .tabBar)
                
                Music()
                    .tabItem {
                        Label("Search", systemImage: "magnifyingglass")
                    }.tag(4)
            }
            .tint(Color.pink)
        }
    }
}

struct Music: View {
    @State var queryString = ""
    var twoColumnGrid = [GridItem(.flexible(), spacing: 6), GridItem(.flexible(), spacing: 6)]
    var height:CGFloat = 360
    
    var body: some View {
        NavigationView {
            VStack {
                topNav
                albumView
    
                ZStack {
                    musicListView
                    playertView
                }
            }
            .accentColor(.pink)
        }
    }
    
    var topNav: some View {
        VStack {
            ZStack {
                Image("music-top")
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width, height: height)
                    .ignoresSafeArea()
       
                HStack(spacing: 2) {
                    Text("TSHA")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    Image(systemName: "play.circle.fill")
                        .font(.system(size: 44))
                        .symbolRenderingMode(.palette)
                        .fontWeight(.thin)
                        .foregroundStyle(.white, .pink)
                    
                }
                .offset(y: height / 5)
                .padding(.horizontal)
                .frame(maxWidth: .infinity, alignment: .bottom)
                
                Spacer()
            }
        }
        .toolbar {
            ToolbarItemGroup(placement: .navigationBarLeading) {
                HStack(spacing: 0.0) {
                    Image(systemName: "chevron.backward.circle.fill")
                        .font(.title2)
                        .fontWeight(.regular)
                        .foregroundColor(.white)
                }
            }
            ToolbarItemGroup(placement: .navigationBarTrailing) {
                HStack(spacing: 0.0) {
                    Image(systemName: "star.circle.fill")
                        .font(.title2)
                        .fontWeight(.thin)
                        .foregroundColor(.white)
                    
                    Image(systemName: "ellipsis.circle.fill")
                        .font(.title2)
                        .fontWeight(.thin)
                        .foregroundColor(.white)
                }
            }
        }
    }
    
    
    var albumView: some View {
        HStack(alignment: .center, spacing: 14) {
            Image("music-album")
                .resizable()
                .scaledToFill()
                .frame(width: 105, height: 105)
                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
         
            VStack(alignment: .leading, spacing: 2.0) {
                Text("JUNE 6, 2023")
                    .font(.caption)
                    .fontWeight(.medium)
                    .foregroundColor(.gray)
                
                Text("Capricorn Sun")
                    .font(.body)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                
                Text("13 Songs")
                    .font(.callout)
                    .fontWeight(.regular)
                    .foregroundColor(.gray)
                
                Button(action: {
                    
                }) {
                    HStack(spacing: 4.0) {
                        Image(systemName: "play.fill")
                            .font(.caption)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                        
                        Text("Play")
                            .font(.callout)
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                            .padding(.vertical, 8)
                            .padding(.trailing, 4)
                    }
                    .padding(.horizontal, 18)
                    .background {
                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .fill(.pink)
                    }
                }
                .padding(.top, 6)
            }
            
            Spacer()
        }
        .frame(height: 180)
        .padding(.horizontal, 20)
        .padding(.top, -height / 4)
    }
    
    var musicListView: some View {
        VStack(alignment: .leading) {
            Text("Top Songs")
                .font(.title3)
                .fontWeight(.bold)
                .padding(.horizontal, 20)
                .padding(.top, 20)
            
            List {
                HStack {
                    Image("music-14")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 65)
                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text("Human Behavior")
                            .font(.callout)
                            .fontWeight(.medium)
                        
                        Text("Bjork")
                            .font(.caption)
                            .fontWeight(.regular)
                            .foregroundColor(Color.gray)
                    }
                    .padding(.horizontal, 6)
                    
                    Spacer()
                }
                .frame(height: 50)
                
                HStack {
                    Image("artist-melanie")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 65)
                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text("The Contortionist")
                            .font(.callout)
                            .fontWeight(.medium)
                        
                        Text("Melanie Martinez")
                            .font(.caption)
                            .fontWeight(.regular)
                            .foregroundColor(Color.gray)
    
                    }
                    .padding(.horizontal, 6)
                    
                    Spacer()
                }
                .frame(height: 50)
                
                
                HStack {
                    Image("music-5")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 65)
                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text("Basket Case")
                            .font(.callout)
                            .fontWeight(.medium)
                        
                        Text("Green Day")
                            .font(.caption)
                            .fontWeight(.regular)
                            .foregroundColor(Color.gray)
                    }
                    .padding(.horizontal, 6)
                    
                    Spacer()
                }
                .frame(height: 50)
                
                
                HStack {
                    Image("artist-kanye")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 65)
                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text("Gold Digger")
                            .font(.callout)
                            .fontWeight(.medium)
                        
                        Text("Kanye")
                            .font(.caption)
                            .fontWeight(.regular)
                            .foregroundColor(Color.gray)
                    }
                    .padding(.horizontal, 6)
                    
                    Spacer()
                }
                .frame(height: 50)
                
                
                HStack {
                    Image("artist-21savage")
                        .resizable()
                        .scaledToFill()
                        .scaleEffect(x: 1.2, y: 1.2)
                        .frame(width: 80, height: 65)
                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text("Creepin'")
                            .font(.callout)
                            .fontWeight(.medium)
                        
                        Text("21 Savage")
                            .font(.caption)
                            .fontWeight(.regular)
                            .foregroundColor(Color.gray)
                    }
                    .padding(.horizontal, 6)
                    
                    Spacer()
                }
                .frame(height: 50)
                
                HStack {
                    Image("music-8")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 65)
                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text("Loser")
                            .font(.callout)
                            .fontWeight(.medium)
                        
                        Text("Beck")
                            .font(.caption)
                            .fontWeight(.regular)
                            .foregroundColor(Color.gray)
                    }
                    .padding(.horizontal, 6)
                    
                    Spacer()
                }
                .frame(height: 50)
                
 
                HStack {
                    Image("artist-harry")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 65)
                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text("Sign of the Times")
                            .font(.callout)
                            .fontWeight(.medium)
                        
                        Text("Harry Styles")
                            .font(.caption)
                            .fontWeight(.regular)
                            .foregroundColor(Color.gray)
                        
                    }
                    .padding(.horizontal, 6)
                    
                    Spacer()
                }
                .frame(height: 50)
                
                HStack {
                    Image("music-12")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 65)
                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text("High Horse")
                            .font(.callout)
                            .fontWeight(.medium)
                        
                        Text("Kacey Musgraves")
                            .font(.caption)
                            .fontWeight(.regular)
                            .foregroundColor(Color.gray)
                    }
                    .padding(.horizontal, 6)
                    
                    Spacer()
                }
                .frame(height: 50)
                
                HStack {
                    Image("artist-rihanna")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 65)
                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    
                    VStack(alignment: .leading, spacing: 4.0) {
                        Text("Diamonds")
                            .font(.callout)
                            .fontWeight(.medium)
                        
                        Text("Rihanna")
                            .font(.caption)
                            .fontWeight(.regular)
                            .foregroundColor(Color.gray)
                    }
                    .padding(.horizontal, 6)
                    
                    Spacer()
                }
                .frame(height: 50)
                
                HStack {
                    Image("music-1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 65)
                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text("Optimistic")
                            .font(.callout)
                            .fontWeight(.medium)
                        
                        Text("Kid A")
                            .font(.caption)
                            .fontWeight(.regular)
                            .foregroundColor(Color.gray)
                    }
                    .padding(.horizontal, 6)
                    
                    Spacer()
                }
                .frame(height: 50)
                .padding(.bottom, 80)
            }
            .padding(.top, -6)
            .listStyle(.plain)
            .environment(\.defaultMinListRowHeight, 1)
            .scrollIndicators(.hidden)
        }
        .padding(.top, -35)
    }
    
    var playertView: some View {
        VStack(spacing: 0.0) {
            Spacer()
            ZStack {
                HStack {
                    Image("music-14")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    
                    Text("Bjork - Homogenic")
                        .font(.callout)
                        .lineLimit(1)
                        .foregroundColor(.primary)
                        .padding(.horizontal, 6)
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                        HStack {
                            Image(systemName: "pause.fill")
                                .font(.title2)
                                .foregroundColor(Color.primary)
                        }
                    }
                    .padding(.trailing, 6)
                    
                    Button(action: {
                        
                    }) {
                        HStack {
                            Image(systemName: "forward.fill")
                                .font(.title2)
                                .foregroundColor(Color.primary)
                        }
                    }
                }
                .padding(.horizontal, 20)
                .frame(maxWidth: .infinity)
                .frame(height: 80)
                .background(.ultraThinMaterial.opacity(1))
                
                ZStack {
                    Rectangle()
                        .fill(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 2)
                        .offset(y: 40)
                        .overlay(alignment: .leading) {
                            Rectangle()
                                .fill(.pink)
                                .frame(width: 240, alignment: .leading)
                                .frame(height: 2)
                                .offset(y: 40)
                        }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
