package com.github.bassaer.travismylib

/**
 * Message is sample class
 */
class Message(private val id: Int, private val text: String) {

    /**
     * get formatted string
     * @return formatted string
     */
    fun get() = "{\"id\":\"%d\",\"text\":\"%s\"}".format(id, text)

}