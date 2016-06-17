.class public Lcom/wandoujia/p4/pay/utils/LogEvent;
.super Ljava/lang/Object;
.source "LogEvent.java"


# static fields
.field private static final APPKEY:Ljava/lang/String; = "appkey"

.field private static final BUTTON:Ljava/lang/String; = "button"

.field public static final BUTTON_NO:Ljava/lang/String; = "no"

.field public static final BUTTON_YES:Ljava/lang/String; = "yes"

.field private static final CLICK_TIME:Ljava/lang/String; = "click_time"

.field public static final CREATED_MODEL:Ljava/lang/String; = "created_model"

.field public static final CREATED_NETWORK_TYPE:Ljava/lang/String; = "created_net_type"

.field public static final CREATED_SDK_INT:Ljava/lang/String; = "created_sdk_int"

.field public static final CREATED_VERSION_CODE:Ljava/lang/String; = "created_vc"

.field private static final CREATE_TIME:Ljava/lang/String; = "create_time"

.field private static final DEFAULT_MONEY:Ljava/lang/String; = "default_money"

.field private static final DEFAULT_PAYMETHOD:Ljava/lang/String; = "default_paymethod"

.field private static final DO_LOGIN_TIME:Ljava/lang/String; = "do_login_time"

.field private static final DO_PAY_TIME:Ljava/lang/String; = "do_pay_time"

.field public static final EVENT_CLICK:Ljava/lang/String; = "paysdk.click"

.field public static final EVENT_CRASH:Ljava/lang/String; = "paysdk.application.crash"

.field public static final EVENT_CREATE_SUCCESS:Ljava/lang/String; = "paysdk.order.create_success"

.field public static final EVENT_DO_LOGIN:Ljava/lang/String; = "paysdk.user.dologin"

.field public static final EVENT_DO_PAY:Ljava/lang/String; = "paysdk.order.dopay"

.field public static final EVENT_PAYRESULT:Ljava/lang/String; = "paysdk.order.result"

.field public static final EVENT_USER_LOGIN_FAIL:Ljava/lang/String; = "paysdk.user.login_fail"

.field public static final EVENT_USER_LOGIN_SUCCESS:Ljava/lang/String; = "paysdk.user.login_success"

.field public static final EVENT_USER_REGISTER_FAIL:Ljava/lang/String; = "paysdk.user.register_fail"

.field public static final EVENT_USER_REGISTER_SUCCESS:Ljava/lang/String; = "paysdk.user.register_success"

.field public static final EVENT_USER_TOKEN_FIAL:Ljava/lang/String; = "paysdk.user.token_fail"

.field private static final FINISH_PAY_TIME:Ljava/lang/String; = "finish_pay_time"

.field private static final LINK_OID:Ljava/lang/String; = "link_oid"

.field private static final MONEY:Ljava/lang/String; = "money"

.field private static final OID:Ljava/lang/String; = "oid"

.field private static final ORDER_MONEY:Ljava/lang/String; = "order_money"

.field private static final PAGE:Ljava/lang/String; = "page"

.field public static final PAGE_CANCEL_PAY:Ljava/lang/String; = "cancel_pay"

.field public static final PAGE_RECHARGE_NOT_ENOUGHT:Ljava/lang/String; = "recharge_not_enought"

.field public static final PAGE_SMS_PAY_CHECK:Ljava/lang/String; = "sms_pay_check"

.field public static final PAGE_WDB_PAY:Ljava/lang/String; = "wdb_pay"

.field private static final PAYMETHOD:Ljava/lang/String; = "paymethod"

.field private static final PAYSDK_LOG_PROFILE_NAME:Ljava/lang/String; = "paysdk"

.field private static final SDK_VERSION:Ljava/lang/String; = "sdk_version"

.field private static final TAG:Ljava/lang/String; = "LogEvent"

.field private static final UID:Ljava/lang/String; = "uid"

.field private static needSetCrashHandler:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x1

    sput-boolean v0, Lcom/wandoujia/p4/pay/utils/LogEvent;->needSetCrashHandler:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static click(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 188
    invoke-static {}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getCurrentConfig()Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v0

    .line 189
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 190
    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v2

    .line 191
    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getUser()Lcom/wandoujia/p4/pay/model/User;

    move-result-object v3

    .line 192
    const-string v4, "appkey"

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v4, "sdk_version"

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string v0, "page"

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v0, "button"

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    if-eqz v3, :cond_0

    .line 197
    const-string v0, "uid"

    invoke-virtual {v3}, Lcom/wandoujia/p4/pay/model/User;->getUid()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOrderId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 199
    const-string v0, "oid"

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOrderId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    :cond_1
    const-string v0, "click_time"

    invoke-static {}, Lcom/wandoujia/p4/pay/utils/Util;->dateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v0, "paysdk.click"

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/ExternUtil;->onEventRealTime(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 202
    const-string v0, "LogEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "paysdk.click"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public static crash(Ljava/util/HashMap;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    invoke-static {}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getCurrentConfig()Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v0

    .line 207
    const-string v1, "appkey"

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v1, "sdk_version"

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getSdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getUser()Lcom/wandoujia/p4/pay/model/User;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_0

    .line 211
    const-string v1, "uid"

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/model/User;->getUid()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_0
    const-string v0, "paysdk.application.crash"

    invoke-static {v0, p0}, Lcom/wandoujia/p4/pay/utils/ExternUtil;->onEventRealTime(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 213
    const-string v0, "LogEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "paysdk.application.crash"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public static createOrder()V
    .locals 6

    .prologue
    .line 109
    invoke-static {}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getCurrentConfig()Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->setOrderCreateTime()V

    .line 111
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 112
    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v2

    .line 113
    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getUser()Lcom/wandoujia/p4/pay/model/User;

    move-result-object v3

    .line 114
    const-string v4, "appkey"

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v4, "sdk_version"

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getSdkVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v4, "uid"

    invoke-virtual {v3}, Lcom/wandoujia/p4/pay/model/User;->getUid()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v3, "oid"

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOrderId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getLinkOrderId()Ljava/lang/Long;

    move-result-object v2

    .line 119
    if-eqz v2, :cond_0

    .line 120
    const-string v3, "link_oid"

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_0
    const-string v2, "default_paymethod"

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getPayMethodList()Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v2, "default_money"

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getDefaultMoney()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v2, "order_money"

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getMoneyInFen()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v2, "create_time"

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrderCreateTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v0, "paysdk.order.create_success"

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/ExternUtil;->onEventRealTime(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 127
    const-string v0, "LogEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "paysdk.order.create_success"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public static doLogin()V
    .locals 4

    .prologue
    .line 71
    invoke-static {}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getCurrentConfig()Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v0

    .line 72
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 73
    const-string v2, "appkey"

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v2, "sdk_version"

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getSdkVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v2, "do_login_time"

    invoke-static {}, Lcom/wandoujia/p4/pay/utils/Util;->dateTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getUser()Lcom/wandoujia/p4/pay/model/User;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_0

    .line 78
    const-string v2, "uid"

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/model/User;->getUid()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_0
    const-string v0, "paysdk.user.dologin"

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/ExternUtil;->onEventRealTime(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 80
    const-string v0, "LogEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "paysdk.user.dologin"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public static doLoginSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-static {}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getCurrentConfig()Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v0

    .line 85
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 86
    const-string v2, "appkey"

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v2, "sdk_version"

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getSdkVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getUser()Lcom/wandoujia/p4/pay/model/User;

    move-result-object v0

    .line 89
    const-string v2, "uid"

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/model/User;->getUid()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v0, "token"

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-static {p0, v1}, Lcom/wandoujia/p4/pay/utils/ExternUtil;->onEventRealTime(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 92
    const-string v0, "LogEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public static doLoingFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-static {}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getCurrentConfig()Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v0

    .line 97
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 98
    const-string v2, "appkey"

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v2, "sdk_version"

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v0, "reason"

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-static {p0, v1}, Lcom/wandoujia/p4/pay/utils/ExternUtil;->onEventRealTime(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 102
    const-string v0, "LogEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public static doPay(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 135
    invoke-static {}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getCurrentConfig()Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v0

    .line 136
    invoke-virtual {v0, p0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->setDoPayTime(Ljava/lang/String;)V

    .line 137
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 138
    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v2

    .line 139
    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getUser()Lcom/wandoujia/p4/pay/model/User;

    move-result-object v3

    .line 140
    const-string v4, "appkey"

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v4, "sdk_version"

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getSdkVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v4, "uid"

    invoke-virtual {v3}, Lcom/wandoujia/p4/pay/model/User;->getUid()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v3, "oid"

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOrderId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getLinkOrderId()Ljava/lang/Long;

    move-result-object v2

    .line 145
    if-eqz v2, :cond_0

    .line 146
    const-string v3, "link_oid"

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_0
    const-string v2, "default_paymethod"

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getPayMethodList()Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v2, "paymethod"

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v2, "money"

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v2, "create_time"

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrderCreateTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v2, "do_pay_time"

    invoke-virtual {v0, p0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getDoPayTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v2, "order_money"

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getMoneyInFen()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v2, "default_money"

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getDefaultMoney()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v0, "paysdk.order.dopay"

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/ExternUtil;->onEventRealTime(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 156
    const-string v0, "LogEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "paysdk.order.dopay"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public static finishPay(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 163
    invoke-static {}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getCurrentConfig()Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v0

    .line 164
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 165
    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v2

    .line 166
    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getUser()Lcom/wandoujia/p4/pay/model/User;

    move-result-object v3

    .line 167
    const-string v4, "appkey"

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v4, "sdk_version"

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getSdkVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v4, "uid"

    invoke-virtual {v3}, Lcom/wandoujia/p4/pay/model/User;->getUid()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v3, "oid"

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOrderId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getLinkOrderId()Ljava/lang/Long;

    move-result-object v2

    .line 172
    if-eqz v2, :cond_0

    .line 173
    const-string v3, "link_oid"

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_0
    const-string v2, "default_paymethod"

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getPayMethodList()Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v2, "paymethod"

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v2, "default_money"

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getDefaultMoney()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v2, "order_money"

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getMoneyInFen()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v2, "money"

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v2, "create_time"

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrderCreateTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v2, "do_pay_time"

    invoke-virtual {v0, p0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getDoPayTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v0, "finish_pay_time"

    invoke-static {}, Lcom/wandoujia/p4/pay/utils/Util;->dateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v0, "paysdk.order.result"

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/ExternUtil;->onEventRealTime(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 184
    const-string v0, "LogEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "paysdk.order.result"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 228
    return-void
.end method
