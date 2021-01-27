package com.github.quadflask.react.navermap;

import android.content.Context;
import android.graphics.Color;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.WindowManager;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.annotations.ReactProp;

import static com.github.quadflask.react.navermap.ReactUtil.toNaverLatLng;

public class RNNaverMapInfoWindowManager extends EventEmittableViewGroupManager<RNNaverMapInfoWindow> {
    private final DisplayMetrics metrics;

    public RNNaverMapInfoWindowManager(ReactApplicationContext reactContext) {
        super(reactContext);
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.JELLY_BEAN_MR1) {
            metrics = new DisplayMetrics();
            ((WindowManager) reactContext.getSystemService(Context.WINDOW_SERVICE)).getDefaultDisplay()
                    .getRealMetrics(metrics);
        } else {
            metrics = reactContext.getResources().getDisplayMetrics();
        }
    }

    @Override
    String[] getEventNames() {
        return new String[] { "onClick" };
    }

    @NonNull
    @Override
    public String getName() {
        return "RNNaverMapInfoWindow";
    }

    @NonNull
    @Override
    protected RNNaverMapInfoWindow createViewInstance(@NonNull ThemedReactContext reactContext) {
        return new RNNaverMapInfoWindow(this, reactContext);
    }

    @ReactProp(name = "coordinate")
    public void setCoordinate(RNNaverMapInfoWindow view, ReadableMap map) {
        view.setCoordinate(toNaverLatLng(map));
    }

    @ReactProp(name = "title")
    public void setTitle(RNNaverMapInfoWindow view, String title) {
        view.setTitle(title);
    }

}
