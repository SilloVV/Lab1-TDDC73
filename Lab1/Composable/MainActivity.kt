package com.example.layout_3

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.layout.*
import androidx.compose.material3.Text
import androidx.compose.material3.Button
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.graphics.Color
import androidx.compose.material3.ButtonDefaults
import androidx.compose.ui.draw.scale
import androidx.compose.ui.unit.sp
import androidx.compose.ui.Alignment
import androidx.compose.ui.res.painterResource
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.TextField
import androidx.compose.runtime.getValue


import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.geometry.Size
import androidx.compose.ui.text.input.ImeAction
import java.time.format.TextStyle


class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            MyComposable()

        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Preview


@Composable
fun MyComposable() {
    Column {


        Text(
            text = "Example 1",
            modifier = Modifier
                .background(color = Color.Green)
                .fillMaxWidth()
                .padding(horizontal = 20.dp, vertical = 30.dp),
            color = Color.White,
            fontSize = 25.sp
        )
        Box(
            contentAlignment = Alignment.Center,
            modifier = Modifier
                .fillMaxWidth()
                .height(150.dp)

        ) {
            Image(
                painter = painterResource(id = R.drawable.img),
                contentDescription = "Description de l'image",
                modifier = Modifier.scale(2.5F).padding(top=10.dp)

            )
        }


        Column(
            modifier = Modifier
                .padding(top = 80.dp)
                .padding(start = 80.dp)
                .scale(1.3F).height(500.dp)
        ) {


            Row {
                Button(
                    modifier = Modifier.padding(vertical = 10.dp, horizontal = 20.dp),
                    onClick = { },
                    colors = ButtonDefaults.buttonColors(
                        containerColor = Color.Green
                    )
                ) {
                    Text("Button")
                }

                Button(
                    modifier = Modifier.padding(vertical = 10.dp, horizontal = 20.dp),
                    onClick = { },
                    colors = ButtonDefaults.buttonColors(
                        containerColor = Color.Green
                    )
                ) {
                    Text("Button")
                }
            }



            Row {
                Button(
                    modifier = Modifier.padding(vertical = 10.dp, horizontal = 20.dp),
                    onClick = { },
                    colors = ButtonDefaults.buttonColors(
                        containerColor = Color.Green,
                    )
                )
                {
                    Text("Button")
                }


                Button(
                    modifier = Modifier.padding(vertical = 10.dp, horizontal = 20.dp),
                    onClick = { },
                    colors = ButtonDefaults.buttonColors(
                        containerColor = Color.Green
                    )
                ) {
                    Text("Button")
                }
            }


            val textState = remember { mutableStateOf("") }

            var text by remember { mutableStateOf("") }

            OutlinedTextField(
                value = text,
                onValueChange = { text = it },
                label = {
                    Text("E-mail")
                },
                modifier = Modifier.fillMaxWidth(0.8F)


            )

        }

    }
}

