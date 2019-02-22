package com.github.bassaer.travismylib

import org.junit.Assert.assertEquals
import org.junit.Test

class MessageTest {
    @Test
    fun testGet() {
        val message = Message(1, "test")
        val expected = "{\"id\":\"1\",\"text\":\"test\"}"
        assertEquals(expected, message.get())
    }
}