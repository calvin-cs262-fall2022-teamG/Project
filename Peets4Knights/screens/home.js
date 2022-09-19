import * as React from 'react';
import { StatusBar } from 'expo-status-bar';
import { Button, StyleSheet, Text, TouchableOpacity, View, Image } from 'react-native';

import { homeStyle } from '../styles/globalStyles';
const fontStyles = ["normal", "italic"];

export default function HomeScreen({ navigation }) {
    return (
        <View style={homeStyle.container}>
            <Image
                style = {{width: 250, height: 85, marginTop: 60}}
                source={require('../pics/appname.png')} 
            />
            

            <Text style = {{fontStyle: 'italic', fontSize: 13, fontWeight: ''}}>
                {"\n"}{"\n"}Prototype v1.
            </Text>

            <Text style = {{fontStyle: 'italic', fontSize: 11, fontWeight: 'bold'}}>
                {"\n"} - Sep 18 2022 - {"\n"}
            </Text>
            
            <View style={homeStyle.homeButton} >
                <Button
                    color='black'
                    title="Peet's Calvin"
                    fontWeight= 'bold'
                    onPress={() => {
                        /*navigation.navigate('menu');*/
                        return 0
                    }
                    } />
                                <Button
                    color='black'
                    title="Customer"
                    fontWeight= 'bold'
                    onPress={() => {
                        /*navigation.navigate('menu');*/
                        return 0
                    }
                    } />
            </View>
            
            <Text>{"\n"}{"\n"}{"\n"}{"\n"}{"\n"}CS262 Fall 2022 Team-Gold</Text>
            <Text>©Calvin University</Text>

        </View>
    );
}