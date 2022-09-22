import { StyleSheet } from 'react-native';

export const globalStyles = StyleSheet.create({
    container: {
        flex: 1,
        backgroundColor: '#fff',
        alignItems: 'center',
        justifyContent: 'center',
    },
    loginBtn: {
        width: "80%",
        borderRadius: 25,
        height: 50,
        alignItems: "center",
        justifyContent: "center",
        marginTop: 40,
        backgroundColor: "#800000",
      },
      loginText: {
        color:'white',
        fontWeight: 'bold'
    },
})

export const homeStyle = StyleSheet.create({
    container: {
        flex: 1,
        backgroundColor: 'white',
        alignItems: 'center',
        justifyContent: 'center',
    },
})

export const LoginStyle = StyleSheet.create({
    input: {
      height: 40,
      marginBottom: 10,
      backgroundColor: '#fff',
    },
      inputView: {
        backgroundColor: "#FFC0CB",
        borderRadius: 30,
        width: "70%",
        height: 45,
        marginBottom: 20,
        alignItems: "center",
      },
      
      TextInput: {
        height: 50,
        flex: 1,
        padding: 10,
        marginLeft: 20,
      }
})

export const regStyle = StyleSheet.create({
    input: {
      height: 40,
      marginBottom: 10,
      backgroundColor: '#fff',
      marginTop: 10,
    },

    signUpButton: {
        padding: 15,
        position: 'relative',
        width: '100%',
    },
})