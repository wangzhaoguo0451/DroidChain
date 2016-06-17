.class public Lcom/wandoujia/p4/pay/storage/LocalStorage;
.super Ljava/lang/Object;
.source "LocalStorage.java"


# static fields
.field public static final APP_ID:Ljava/lang/String; = "appkey"

.field private static final INSTANTIATION_EXCEPTION_MESSAGE_APPID_NULL:Ljava/lang/String; = "Invalid appId in LocalStorage."

.field private static final INSTANTIATION_EXCEPTION_MESSAGE_CONTEXT_NULL:Ljava/lang/String; = "Context should not be null in LocalStorage-init."

.field private static final INSTANTIATION_EXCEPTION_MESSAGE_SECRETKEY_NULL:Ljava/lang/String; = "Invalid secretKey in LocalStorage."

.field public static final KEY_ALIPAY_ACCOUNT:Ljava/lang/String; = "account_alipay"

.field public static final KEY_BALANCE:Ljava/lang/String; = "account_balance"

.field public static final KEY_BONUSCOUNT:Ljava/lang/String; = "account_bonusCount"

.field public static final KEY_BONUSMONEY:Ljava/lang/String; = "account_bonusMoney"

.field private static final KEY_CHOSED_MONEY:Ljava/lang/String; = "chosed_money"

.field public static final KEY_CONFIG:Ljava/lang/String; = "sdk_config"

.field public static final KEY_CONFIRM_LOGIN:Ljava/lang/String; = "confirm_login"

.field private static final KEY_CREATE_TIME:Ljava/lang/String; = "create_time"

.field private static final KEY_CURRENT_ORDER:Ljava/lang/String; = "cur_order"

.field private static final KEY_CURRENT_USR:Ljava/lang/String; = "cur_user"

.field private static final KEY_CUR_PAYMETHOD:Ljava/lang/String; = "cur_paymethod"

.field private static final KEY_DEFAULT_MONEY:Ljava/lang/String; = "default"

.field private static final KEY_DOWNLOAD_VERSION:Ljava/lang/String; = "download_version"

.field private static final KEY_DO_PAY_TIME:Ljava/lang/String; = "do_pay_time"

.field private static final KEY_FINISH:Ljava/lang/String; = "finish"

.field public static final KEY_LAST_RECHARGE:Ljava/lang/String; = "last_recharge"

.field private static final KEY_LINK_ORDER_ID:Ljava/lang/String; = "link_order_id"

.field public static final KEY_MAX_BONUS:Ljava/lang/String; = "max_bonus"

.field private static final KEY_NEED_PASSWORD:Ljava/lang/String; = "need_password"

.field private static final KEY_NEED_RECHARGE_MONEY:Ljava/lang/String; = "need_recharge_money"

.field public static final KEY_NICK:Ljava/lang/String; = "nick"

.field private static final KEY_ORDER_ID_PREFIX:Ljava/lang/String; = "order_id_prefix"

.field private static final KEY_PAYMENT_FEEDBACK_CATEGORY:Ljava/lang/String; = "PAYMENT_FEEDBACK_CATEGORY"

.field private static final KEY_PAYMENT_FEEDBACK_CHILDREN_CATEGORY:Ljava/lang/String; = "PAYMENT_FEEDBACK_CHILDREN_CATEGORY"

.field private static final KEY_PAYMETHOD:Ljava/lang/String; = "pay_method"

.field public static final KEY_PENDING_RECHARGE:Ljava/lang/String; = "pending_recharge"

.field private static final KEY_RECHARGE_MONEY_LIST:Ljava/lang/String; = "recharge_money_list"

.field public static final KEY_USERNAME:Ljava/lang/String; = "username"

.field private static final KEY_USER_EXTERNAL_STORAGE_FOR_CACHE:Ljava/lang/String; = "USER_EXTERNAL_STORAGE_FOR_CACHE"

.field private static final KEY_WDJ_AUTH:Ljava/lang/String; = "wdj_auth"

.field public static final MANDATORY_LOGIN_KEY:Ljava/lang/String; = "need_login"

.field private static final PAYSDK_CONFIG_PREFERENCE_PREFIX:Ljava/lang/String; = "Wandoujia-PaySdk-"

.field public static final RECHARGE_APP_KEY_ID:Ljava/lang/String; = "100000225"

.field private static final RECHARGE_SECRET_KEY:Ljava/lang/String; = "9e45e1d5cfcd2ad21f86c1b43a12b3d8"

.field public static final SECRET_KEY:Ljava/lang/String; = "secretkey"

.field private static final SHOULD_COMMIT:Z

.field private static final TAG:Ljava/lang/String;

.field private static lock:Ljava/lang/Object;

.field private static sInstance:Lcom/wandoujia/p4/pay/storage/LocalStorage;


# instance fields
.field private appId:Ljava/lang/String;

.field private applicationContext:Landroid/content/Context;

.field private secretKey:Ljava/lang/String;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    const-class v0, Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/p4/pay/storage/LocalStorage;->TAG:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/wandoujia/p4/pay/storage/LocalStorage;->lock:Ljava/lang/Object;

    .line 88
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/wandoujia/p4/pay/storage/LocalStorage;->SHOULD_COMMIT:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    if-nez p1, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context should not be null in LocalStorage-init."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid appId in LocalStorage."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wandoujia-PaySdk-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/storage/LocalStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 142
    iput-object p2, p0, Lcom/wandoujia/p4/pay/storage/LocalStorage;->appId:Ljava/lang/String;

    .line 143
    const-string v0, "appkey"

    invoke-virtual {p0, v0, p2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/storage/LocalStorage;->applicationContext:Landroid/content/Context;

    .line 145
    return-void
.end method

.method public static getCurrentConfig()Lcom/wandoujia/p4/pay/storage/LocalStorage;
    .locals 2

    .prologue
    .line 125
    sget-object v0, Lcom/wandoujia/p4/pay/storage/LocalStorage;->sInstance:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getCurrentConfig sInstance is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    sget-object v0, Lcom/wandoujia/p4/pay/storage/LocalStorage;->sInstance:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/wandoujia/p4/pay/storage/LocalStorage;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 107
    const-class v1, Lcom/wandoujia/p4/pay/storage/LocalStorage;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/wandoujia/p4/pay/storage/LocalStorage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LocalStorage init, id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/wandoujia/p4/pay/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-static {}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getCurrentConfig()Lcom/wandoujia/p4/pay/storage/LocalStorage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 117
    :goto_0
    monitor-exit v1

    return-object v0

    .line 113
    :cond_0
    :try_start_1
    sget-object v0, Lcom/wandoujia/p4/pay/storage/LocalStorage;->sInstance:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/wandoujia/p4/pay/storage/LocalStorage;->sInstance:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/storage/LocalStorage;->appId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 114
    :cond_1
    new-instance v0, Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-direct {v0, p0, p1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/pay/storage/LocalStorage;->sInstance:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    .line 117
    :cond_2
    sget-object v0, Lcom/wandoujia/p4/pay/storage/LocalStorage;->sInstance:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/wandoujia/p4/pay/storage/LocalStorage;
    .locals 1
    .parameter

    .prologue
    .line 121
    sget-object v0, Lcom/wandoujia/p4/pay/storage/LocalStorage;->sInstance:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/storage/LocalStorage;->applicationContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 98
    const-string v0, "100000225"

    const-string v1, "9e45e1d5cfcd2ad21f86c1b43a12b3d8"

    invoke-static {p0, v0, v1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-static {p0, p1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    .line 104
    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-static {p0, p1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v0

    .line 92
    invoke-virtual {v0, p2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->setSecretKey(Ljava/lang/String;)V

    .line 93
    invoke-static {p0}, Lcom/wandoujia/p4/pay/utils/LogEvent;->init(Landroid/content/Context;)V

    .line 95
    return-void
.end method


# virtual methods
.method public doesExternalStorageForCacheExist()Z
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/wandoujia/p4/pay/storage/LocalStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "USER_EXTERNAL_STORAGE_FOR_CACHE"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 472
    iget-object v0, p0, Lcom/wandoujia/p4/pay/storage/LocalStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/wandoujia/p4/pay/storage/LocalStorage;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/wandoujia/p4/pay/storage/LocalStorage;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getAuth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    invoke-static {}, Lchv;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBalance()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOrderId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "account_balance"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 335
    :goto_0
    return-object v0

    .line 334
    :catch_0
    move-exception v0

    sget-object v0, Lcom/wandoujia/p4/pay/storage/LocalStorage;->TAG:Ljava/lang/String;

    const-string v1, "Invalid balance."

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public getBonusMoney()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOrderId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "account_bonusMoney"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 379
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public getChoseMoney()Ljava/lang/Long;
    .locals 4

    .prologue
    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOrderId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "chosed_money"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 350
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 352
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 356
    :goto_0
    return-object v0

    .line 354
    :catch_0
    move-exception v1

    sget-object v1, Lcom/wandoujia/p4/pay/storage/LocalStorage;->TAG:Ljava/lang/String;

    const-string v2, "Invalid chosed money."

    invoke-static {v1, v2}, Lcom/wandoujia/p4/pay/utils/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCurPayMethod()Ljava/lang/String;
    .locals 2

    .prologue
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOrderId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cur_paymethod"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMoney()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOrderId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 269
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public getDoPayTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOrderId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "do_pay_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 404
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    const/4 v0, 0x0

    .line 407
    :cond_0
    return-object v0
.end method

.method public getDownloadVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 253
    const-string v0, "download_version"

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    .line 257
    :cond_0
    return-object v0
.end method

.method public getFeedbackCategoryList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 441
    const-string v0, "PAYMENT_FEEDBACK_CATEGORY"

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFeedbackChildrenCategoryList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 449
    const-string v0, "PAYMENT_FEEDBACK_CHILDREN_CATEGORY"

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFinish()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 238
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v1

    if-nez v1, :cond_1

    .line 245
    :cond_0
    :goto_0
    return v0

    .line 241
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOrderId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "finish"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 245
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getLinkOrderId()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOrderId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "link_order_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    const/4 v0, 0x0

    .line 216
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public getNeedPassword()Z
    .locals 2

    .prologue
    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOrderId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "need_password"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    const/4 v0, 0x0

    .line 229
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getNeedRechargeMoney()Ljava/lang/Long;
    .locals 4

    .prologue
    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOrderId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "need_recharge_money"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 365
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 367
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 371
    :goto_0
    return-object v0

    .line 369
    :catch_0
    move-exception v1

    sget-object v1, Lcom/wandoujia/p4/pay/storage/LocalStorage;->TAG:Ljava/lang/String;

    const-string v2, "Invalid chosed money."

    invoke-static {v1, v2}, Lcom/wandoujia/p4/pay/utils/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;
    .locals 6

    .prologue
    .line 305
    const-string v0, "cur_order"

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 306
    new-instance v0, Lcom/wandoujia/p4/pay/model/WandouOrder;

    const-string v2, ""

    const-string v3, ""

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/wandoujia/p4/pay/model/WandouOrder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 307
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 309
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->fromJSONString(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOrderCreateTime()Ljava/lang/String;
    .locals 2

    .prologue
    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOrderId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "create_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 392
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    const/4 v0, 0x0

    .line 395
    :cond_0
    return-object v0
.end method

.method public getOrderIdPrefix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOrderId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "order_id_prefix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPayMethodList()Ljava/lang/String;
    .locals 2

    .prologue
    .line 177
    const-string v0, ""

    .line 178
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOrderId()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOrderId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pay_method"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRechargeMoneyList(Lcom/wandoujia/p4/pay/model/PayMethod;)Ljava/util/List;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/p4/pay/model/PayMethod;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/pay/model/RechargeMoney;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOrderId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "recharge_money_list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 412
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 433
    :cond_0
    :goto_0
    return-object v0

    .line 415
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 417
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p1}, Lcom/wandoujia/p4/pay/model/PayMethod;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 419
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 421
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 422
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 423
    new-instance v5, Lcom/wandoujia/p4/pay/model/RechargeMoney;

    invoke-direct {v5}, Lcom/wandoujia/p4/pay/model/RechargeMoney;-><init>()V

    .line 424
    const-string v6, "check"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v5, Lcom/wandoujia/p4/pay/model/RechargeMoney;->check:Ljava/lang/Boolean;

    .line 425
    const-string v6, "title"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/wandoujia/p4/pay/model/RechargeMoney;->title:Ljava/lang/String;

    .line 426
    const-string v6, "money"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v5, Lcom/wandoujia/p4/pay/model/RechargeMoney;->money:Ljava/lang/Long;

    .line 427
    const-string v6, "bonusMoney"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v5, Lcom/wandoujia/p4/pay/model/RechargeMoney;->bonusMoney:Ljava/lang/Long;

    .line 428
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 433
    goto :goto_0

    .line 431
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getRechargeOrder(Ljava/lang/Long;)Lcom/wandoujia/p4/pay/model/WandouOrder;
    .locals 3
    .parameter

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v0

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-recharge("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getMoneyInFen()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->setDesc(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v0, p1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->setMoneyInFen(Ljava/lang/Long;)V

    .line 321
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getLinkOrderId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->setOrderId(Ljava/lang/Long;)V

    .line 322
    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    const-string v0, "3.0.9"

    return-object v0
.end method

.method public getSecretKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/wandoujia/p4/pay/storage/LocalStorage;->secretKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const-string v0, "secretkey"

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/storage/LocalStorage;->secretKey:Ljava/lang/String;

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Load Secret-Key from SP: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/wandoujia/p4/pay/storage/LocalStorage;->secretKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/pay/storage/LocalStorage;->secretKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUseExternalStorageForCache()Z
    .locals 3

    .prologue
    .line 457
    iget-object v0, p0, Lcom/wandoujia/p4/pay/storage/LocalStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "USER_EXTERNAL_STORAGE_FOR_CACHE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getUser()Lcom/wandoujia/p4/pay/model/User;
    .locals 4

    .prologue
    .line 282
    new-instance v0, Lcom/wandoujia/p4/pay/model/User;

    invoke-direct {v0}, Lcom/wandoujia/p4/pay/model/User;-><init>()V

    .line 283
    invoke-static {}, Lchv;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/pay/model/User;->setNick(Ljava/lang/String;)V

    .line 285
    :try_start_0
    invoke-static {}, Lchv;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/wandoujia/p4/pay/model/User;->setUid(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_0
    invoke-static {}, Lchv;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/pay/model/User;->setToken(Ljava/lang/String;)V

    .line 290
    invoke-static {}, Lchv;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/pay/model/User;->setUsername(Ljava/lang/String;)V

    .line 292
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 476
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 477
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 480
    iget-object v0, p0, Lcom/wandoujia/p4/pay/storage/LocalStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 481
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 482
    if-nez p3, :cond_0

    sget-boolean v1, Lcom/wandoujia/p4/pay/storage/LocalStorage;->SHOULD_COMMIT:Z

    if-eqz v1, :cond_1

    .line 483
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 487
    :goto_0
    return-void

    .line 485
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public setBalance(Ljava/lang/Long;)V
    .locals 2
    .parameter

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v0

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOrderId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "account_balance"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    return-void
.end method

.method public setBonusMoney(Ljava/lang/Long;)V
    .locals 2
    .parameter

    .prologue
    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOrderId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "account_bonusMoney"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    return-void
.end method

.method public setChoseMoney(Ljava/lang/Long;)V
    .locals 2
    .parameter

    .prologue
    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOrderId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "chosed_money"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method public setCurPayMethod(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOrderId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cur_paymethod"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public setDefaultMoney(Ljava/lang/Long;)V
    .locals 2
    .parameter

    .prologue
    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOrderId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method public setDoPayTime(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOrderId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "do_pay_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/wandoujia/p4/pay/utils/Util;->dateTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method public setDownloadVersion(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 249
    const-string v0, "download_version"

    invoke-virtual {p0, v0, p1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public setFeedbackCategoryList(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 445
    const-string v0, "PAYMENT_FEEDBACK_CATEGORY"

    invoke-virtual {p0, v0, p1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    return-void
.end method

.method public setFeedbackChildrenCategoryList(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 453
    const-string v0, "PAYMENT_FEEDBACK_CHILDREN_CATEGORY"

    invoke-virtual {p0, v0, p1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method public setFinish(Z)V
    .locals 2
    .parameter

    .prologue
    .line 233
    if-eqz p1, :cond_0

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOrderId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_0
    return-void
.end method

.method public setLinkOrderId(Ljava/lang/Long;)V
    .locals 2
    .parameter

    .prologue
    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOrderId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "link_order_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public setNeedPassword(Z)V
    .locals 2
    .parameter

    .prologue
    .line 220
    if-eqz p1, :cond_0

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOrderId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "need_password"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_0
    return-void
.end method

.method public setNeedRechargeMoney(Ljava/lang/Long;)V
    .locals 2
    .parameter

    .prologue
    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOrderId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "need_recharge_money"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method public setOrder(Lcom/wandoujia/p4/pay/model/WandouOrder;)V
    .locals 2
    .parameter

    .prologue
    .line 301
    const-string v0, "cur_order"

    invoke-virtual {p1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->toJSONString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method public setOrderCreateTime()V
    .locals 2

    .prologue
    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOrderId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "create_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/wandoujia/p4/pay/utils/Util;->dateTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    return-void
.end method

.method public setOrderIdPrefix(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOrderId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "order_id_prefix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method public setPayMethodList(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    .line 185
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 186
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 187
    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    .line 188
    invoke-static {v4}, Lcom/wandoujia/p4/pay/model/PayMethod;->getByName(Ljava/lang/String;)Lcom/wandoujia/p4/pay/model/PayMethod;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 189
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    :cond_1
    const-string v0, ","

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 192
    const-string v0, ""

    .line 193
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOrderId()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 194
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOrderId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "pay_method"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public setRechargeMoneyListResult(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOrderId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "recharge_money_list"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    return-void
.end method

.method public setSecretKey(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 156
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid secretKey in LocalStorage."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    iput-object p1, p0, Lcom/wandoujia/p4/pay/storage/LocalStorage;->secretKey:Ljava/lang/String;

    .line 160
    const-string v0, "secretkey"

    invoke-virtual {p0, v0, p1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public setUseExternalStorageForCache(Z)V
    .locals 2
    .parameter

    .prologue
    .line 462
    iget-object v0, p0, Lcom/wandoujia/p4/pay/storage/LocalStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 463
    const-string v1, "USER_EXTERNAL_STORAGE_FOR_CACHE"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 464
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 465
    return-void
.end method

.method public setUser(Lcom/wandoujia/p4/pay/model/User;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 296
    const-string v1, "cur_user"

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v0, "wdj_auth"

    invoke-virtual {p0, v0, p2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    return-void

    .line 296
    :cond_0
    invoke-virtual {p1}, Lcom/wandoujia/p4/pay/model/User;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
