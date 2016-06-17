// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.util;

import android.os.Environment;
import java.io.File;

public interface GlobalInfo
{

    public static final String ALL_FRAGMENT = "all_fragment";
    public static final int ALL_ORDER = 2;
    public static final String APK_DIRS = (new StringBuilder(String.valueOf(Environment.getExternalStorageDirectory().getAbsolutePath()))).append("/weixinjingxuan/").toString();
    public static final String APPLY_FRAGMENT = "apply_fragment";
    public static final String CATEGORY_FRAGMENT = "category_fragment";
    public static final int DAY_ORDER = 1;
    public static final int MAX_NUM = 10;
    public static final String MORE_FRAGMENT = "more_fragment";
    public static final int OPEN_MODE_ACCOUNT = 2;
    public static final int OPEN_MODE_ATTENTION = 3;
    public static final int OPEN_MODE_HOME = 1;
    public static final int PAGE_ALL = 2;
    public static final int PAGE_COUNT = 10;
    public static final int PAGE_JINGXUAN = 0;
    public static final int PAGE_MORE = 3;
    public static final int PAGE_SORT = 1;
    public static final String PREF_NAME = "weixinjingxuan_pref";
    public static final int PUSHSERVICE_BOOT_INTERVAL = 10000;
    public static final String PUSHSERVICE_CLASSNAME = "com.weixin.wxjx.service.PushService";
    public static final String RANDOM_USERID = "use_id";
    public static final String SETTING_FRAGMENT = "setting_fragment";
    public static final String STARTING_IMG_NAME = "welcome.png";
    public static final String STARTING_IMG_STATE = "img_state";
    public static final int START_NUM = 0;
    public static final String START_PUSH_ACTION = "com.weixin.wxjx.action_START_PUSHSERVICE";
    public static final String STRATING_IMG_URL = "img_url";
    public static final String SWITCH_STATE = "switch_state";
    public static final String TAG = "WeiXin";
    public static final int UN_UPDATE_APK = 0;
    public static final int UPDATE_APK = 1;
    public static final int USER_LIKE = 1;
    public static final String USER_MANAGER_FRAGMENT = "manager_fragment";
    public static final int USER_NOT_LIKE = 0;
    public static final int USER_POST_FAIL = 0;
    public static final int USER_POST_SUCCESS = 1;
    public static final String WX_DOWNLOAD_URL = "http://weixin.qq.com/d";
    public static final String WX_PACKAGE_NAME = "com.tencent.mm";
    public static final int WX_PERSONAL_ID = 2;
    public static final int WX_PUBLIC_ID = 1;
    public static final String WX_RECOMMEND = "2";
    public static final String WX_RECOMMEND_HOT = "3";
    public static final String WX_RECOMMEND_NICE = "1";
    public static final int all = 200;
    public static final int all_category = 201;
    public static final int apply_add_repeat = 2;
    public static final int apply_add_success = 1;
    public static final int apply_fail = 4;
    public static final int apply_success = 3;
    public static final String client_url = "http://42.121.127.83:9891/ApptreeManager/WeixinServlet";
    public static final String client_url_bak = "http://42.121.127.83:9892/ApptreeManager2/WeixinServlet";
    public static final int exit_level = 0;
    public static final int home_level = 1;
    public static final int more = 100;
    public static final int more_apply = 101;
    public static final int more_manager = 103;
    public static final int more_setting = 102;
    public static final int net_connect_fail = 2;
    public static final int net_connect_normal = 0;
    public static final int net_connect_other = 3;
    public static final int net_connect_timeout = 1;
    public static final int request_code_url = 1000;
    public static final int request_code_url_bak = 1001;
    public static final int set_level = 2;
    public static final int user_level = 3;

}
