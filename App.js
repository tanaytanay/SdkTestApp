/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow strict-local
 */

import React, { useState } from 'react';

import {
  SafeAreaView,
  StyleSheet,
  ScrollView,
  View,
  Text,
  StatusBar,
  TouchableOpacity
} from 'react-native';

export default function App() {
  var ReactN = require('react-native')

  return (
      <SafeAreaView>
        <ScrollView
          contentInsetAdjustmentBehavior="automatic"
          style={styles.scrollView}>
          <View style = {{ justifyContent: 'center', alignItems: 'center', padding: 50}}>
            <TouchableOpacity
              onPress={() => {
                console.dir(ReactN.NativeModules.Bridge)
                // ReactN.NativeModules.Bridge.testFunc(value =>  {
                //   console.log('In Callback')
                //   //console.dir(o)
                // });

                // ReactN.NativeModules.Bridge.connectToWifi("ssid", "password", value => {
                //   // let arr;
                //   // arr = [...o]
                  
                //   console.log('In Callback')
                //   console.log(value)
                //   //console.log(value.length)
                //  // console.log(JSON.stringify(o))
                // });

                 ReactN.NativeModules.Bridge.osTest( value => {
                  // let arr;
                  // arr = [...o]
                  
                  console.log('In Callback')
                  console.log(value)
                  //console.log(value.length)
                 // console.log(JSON.stringify(o))
                });

                // ReactN.NativeModules.Bridge.getCount(value => {
                //   console.log(value)
                // })
              }}
            >
              <View style = {{ justifyContent: 'center', alignItems: 'center', borderWidth: 1, padding: 10}}>
                <Text style={{textAlign: 'center'}}> PressMe for OS</Text>
              </View>
            </TouchableOpacity>

            <TouchableOpacity
              onPress={() => {
                console.dir(ReactN.NativeModules.Bridge)
                // ReactN.NativeModules.Bridge.testFunc(value =>  {
                //   console.log('In Callback')
                //   //console.dir(o)
                // });

                ReactN.NativeModules.Bridge.connectToWifi("ssid", "password", value => {
                  // let arr;
                  // arr = [...o]
                  
                  console.log('In Callback')
                  console.log(value)
                  //console.log(value.length)
                 // console.log(JSON.stringify(o))
                });

                //  ReactN.NativeModules.Bridge.osTest( value => {
                //   // let arr;
                //   // arr = [...o]
                  
                //   console.log('In Callback')
                //   console.log(value)
                //   //console.log(value.length)
                //  // console.log(JSON.stringify(o))
                // });

                // ReactN.NativeModules.Bridge.getCount(value => {
                //   console.log(value)
                // })
              }}
            >
              <View style = {{ justifyContent: 'center', alignItems: 'center', borderWidth: 1, padding: 10}}>
                <Text style={{textAlign: 'center'}}> PressMe for Wifi </Text>
              </View>
            </TouchableOpacity>
          </View>
        </ScrollView>
      </SafeAreaView>
    
  );
};

const styles = StyleSheet.create({
});

