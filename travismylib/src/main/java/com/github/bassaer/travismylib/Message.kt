package com.github.bassaer.travismylib

class Message(private val id: Int, private val text: String) {

    fun get() = "{\"id\":\"%d\",\"text\":\"%s\"}".format(id, text)

}