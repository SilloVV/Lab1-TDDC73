import { StatusBar } from 'expo-status-bar';
import { TouchableOpacity,Image,StyleSheet, Text, View, TextInput } from 'react-native';
import {useState} from 'react';

const Img = require("./assets/img.png")

export default function App() {
  
  const [borderBottomColor1,setborderBottomColor]=useState('blue');

  return (
    <View style={styles.container}>

      <StatusBar style="auto" />
      <View style={{backgroundColor: "green",width: '100%',paddingTop:60,paddingBottom:10}}>
      
        <Text style={{color:'white',paddingLeft:10,fontSize:30}}>
          Example 1
        </Text>
      </View>
      <Image source={Img}  style={{height:180, width:240,borderRadius:50,top:40,marginBottom:70}}/>

      <View style={{flexDirection:'row',bottom:20}}>

        <TouchableOpacity style={{height:30, width:90,backgroundColor:'lightgray',borderRadius:5,marginRight:60,marginTop:20,paddingTop:5,paddingLeft:20}}>
        <Text>Button</Text>
        </TouchableOpacity>

        <TouchableOpacity style={{height:30, width:90,backgroundColor:'lightgray',borderRadius:5,paddingTop:5,paddingLeft:20,marginTop:20}}>
        <Text>Button</Text>
        </TouchableOpacity>
      </View>
      <View style={{flexDirection:'row',marginTop:10,bottom:20}}>

        <TouchableOpacity style={{height:30, width:90,backgroundColor:'lightgray',borderRadius:5,marginRight:60,marginTop:15,paddingTop:5,paddingLeft:20}}>
        <Text>Button</Text>
        </TouchableOpacity>

        <TouchableOpacity style={{height:30, width:90,backgroundColor:'lightgray',borderRadius:5,paddingTop:5,paddingLeft:20,marginTop:15}}>
        <Text>Button</Text>
        </TouchableOpacity>
      </View>

      <View style={{flexDirection:'row'}}>
        <Text style={{paddingTop:10,paddingLeft:5,height:40,width:'15%',top:12,left:12}}>
          E-mail
        </Text>

      <TextInput style={{height: 40,
    margin: 12,
    borderBottomWidth:1,
    borderBottomColor:borderBottomColor1,
    padding: 10,
    width:'70%',fontSize:18,paddingTop:10}}
    onFocus={() => {
      setborderBottomColor('red');
    }}
    onBlur={() => {
      setborderBottomColor('blue');
    }}
    
    >

      </TextInput>
      </View>

    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
  },
});
