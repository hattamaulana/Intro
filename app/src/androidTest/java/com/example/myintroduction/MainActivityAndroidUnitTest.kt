package com.example.myintroduction

import androidx.test.espresso.Espresso.onView
import androidx.test.espresso.assertion.ViewAssertions.matches
import androidx.test.espresso.matcher.ViewMatchers.*
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.filters.LargeTest
import androidx.test.rule.ActivityTestRule
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith

const val TEXT_RESULT = "Mahatta Maulana"
const val TEXT_SHOULD_ERROR = "Maulana Mahatta"

@RunWith(AndroidJUnit4::class)
@LargeTest
class MainActivityAndroidUnitTest {

    @get:Rule
    val activityRule = ActivityTestRule(MainActivity::class.java)

    @Test fun checkText() {
        onView(withText(TEXT_RESULT)).check(matches(isDisplayed()))

        // Contoh Error
        // onView(withId(R.id.tv_main)).check(matches(withText(TEXT_SHOULD_ERROR)))
    }
}