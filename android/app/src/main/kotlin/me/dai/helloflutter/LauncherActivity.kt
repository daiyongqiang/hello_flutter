package me.dai.helloflutter

import android.os.Bundle
import android.view.View
import android.content.Intent

class LauncherActivity() : android.app.Activity(), View.OnClickListener {

    private lateinit var container: View

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        container = findViewById(R.id.container)
        container.setOnClickListener(this)
    }

    override fun onClick(v: View?) {
        when (v?.id) {
            R.id.container -> {
                val intent = Intent()
                //获取intent对象
                intent.setClass(this, MainActivity::class.java)
                // 获取class是使用::反射
                startActivity(intent)
                finish()
            }
        }
    }
}
