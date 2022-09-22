import * as React from 'react';
import { useState } from "react";
import { Button, Text, TextInput, View, Image } from 'react-native';

import { regStyle } from '../styles/globalStyles';
import { globalStyles } from '../styles/globalStyles';

const fontStyles = ["normal", "italic"];

export default function SignUpScreen({ navigation }) {
    const [name, setName] = useState("");
    const [email, setEmail] = useState("");
    const [password, setPassword] = useState("");
    const [checkPassword, confirmPassword] = useState("");

    return (
        <View style={globalStyles.container}>
            <Image
                style = {{width: 120, height: 95}}
                source={require('../pics/appname.png')} 
            />

            <TextInput
                style={regStyle.container}
                value={name}
                placeholder={"Name"}
                onChangeText={(text) => setName(text)}
                autoCapitalize={"none"}
            />

            <TextInput
                style={regStyle.container}
                value={email}
                placeholder={"Email"}
                onChangeText={(text) => setEmail(text)}
                autoCapitalize={"none"}
            />

            <TextInput
                style={regStyle.container}
                value={password}
                placeholder={"Password"}
                onChangeText={(text) => setPassword(text)}
                autoCapitalize={"none"}
            />
            
            <TextInput
                style={regStyle.container}
                value={checkPassword}
                placeholder={"Comfirm Password"}
                onChangeText={(text) => confirmPassword(text)}
                autoCapitalize={"none"}
            />

            <Text style = {{fontStyle: 'italic', fontSize: 13, fontWeight: ''}}>
                {"\n"}{"\n"}* Please enter Calvin email only.
            </Text>

            
            <View style={regStyle.signUpButton} >
                <Button
                    color='black'
                    title="Sign up!"
                    fontWeight= 'bold'
                    onPress={() => {
                        /*navigation.navigate('home');*/
                        return 0
                    }
                } />
            </View>
            
            <Text>{"\n"}{"\n"}{"\n"}{"\n"}{"\n"}CS262 Fall 2022 Team-Gold</Text>
            <Text>©Calvin University</Text>

        </View>
    );
}