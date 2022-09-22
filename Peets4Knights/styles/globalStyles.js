import { StyleSheet } from 'react-native';

export const globalStyles = StyleSheet.create({
    container: {
        flex: 1,
        backgroundColor: '#fff',
        alignItems: 'center',
        justifyContent: 'center',
    },
    homeButton: {
        padding: 15,
        position: 'relative',
        marginTop: '50%',
        width: '100%',
    },
})

export const homeStyle = StyleSheet.create({
    container: {
        flex: 1,
        backgroundColor: 'white',
        alignItems: 'center',
        justifyContent: 'center',
    },
    homeButton: {
        padding: 10,
        position: 'relative',
        marginTop: '20%',
        width: '100%',
    },
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