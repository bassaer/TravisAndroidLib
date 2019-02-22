package com.github.bassaer.travisandroidlib

import android.os.Bundle
import android.support.v7.app.AppCompatActivity
import android.widget.TextView
import com.github.bassaer.travismylib.Message

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        val message = Message(1, "hello")
        val textView = findViewById<TextView>(R.id.text)
        textView.text = message.get()
    }
}
