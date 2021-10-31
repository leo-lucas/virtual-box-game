package com.virtualboxgame.core

import io.quarkus.test.junit.QuarkusTes
import org.junit.jupiter.api.Test

@QuarkusTest
class BattleTest {

    @Test
    fun testCreateBattle() {
        val battle = Battle()
    }

}