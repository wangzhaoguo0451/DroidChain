.class public Lcom/wandoujia/jupiter/JupiterApplication;
.super Lcom/wandoujia/update/UpdateApplication;
.source "JupiterApplication.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/update/UpdateApplication",
        "<",
        "Lcom/wandoujia/jupiter/update/UpdateService;",
        ">;"
    }
.end annotation


# static fields
.field private static d:Landroid/os/Handler;

.field private static e:Landroid/content/Context;

.field private static f:Lcom/wandoujia/jupiter/JupiterApplication;

.field private static h:Ljava/lang/String;


# instance fields
.field public a:Ldka;

.field public b:Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/wandoujia/jupiter/JupiterApplication;->d:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/wandoujia/update/UpdateApplication;-><init>()V

    return-void
.end method

.method public static a()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/wandoujia/jupiter/JupiterApplication;->d:Landroid/os/Handler;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 451
    invoke-static {p0}, Lcom/wandoujia/base/utils/SystemUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 452
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 458
    :goto_0
    return-void

    .line 456
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 457
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "version_code"

    sget-object v2, Lcom/wandoujia/jupiter/JupiterApplication;->h:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 147
    sget-boolean v0, Lcom/wandoujia/jupiter/multidex/MultiDex;->IS_VM_MULTIDEX_CAPABLE:Z

    if-eqz v0, :cond_0

    .line 148
    const/4 v0, 0x1

    .line 160
    :goto_0
    return v0

    .line 151
    :cond_0
    invoke-static {p0}, Lcom/wandoujia/base/utils/SystemUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/wandoujia/jupiter/JupiterApplication;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    const/4 v0, 0x0

    goto :goto_0

    .line 157
    :cond_1
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 158
    const-string v1, "version_code"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    sget-object v1, Lcom/wandoujia/jupiter/JupiterApplication;->h:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public static d()Lcom/wandoujia/jupiter/JupiterApplication;
    .locals 1

    .prologue
    .line 281
    sget-object v0, Lcom/wandoujia/jupiter/JupiterApplication;->f:Lcom/wandoujia/jupiter/JupiterApplication;

    return-object v0
.end method

.method public static e()Landroid/content/Context;
    .locals 1

    .prologue
    .line 285
    sget-object v0, Lcom/wandoujia/jupiter/JupiterApplication;->e:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic f()Lcom/wandoujia/jupiter/JupiterApplication;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/wandoujia/jupiter/JupiterApplication;->f:Lcom/wandoujia/jupiter/JupiterApplication;

    return-object v0
.end method

.method public static synthetic g()Landroid/content/Context;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/wandoujia/jupiter/JupiterApplication;->e:Landroid/content/Context;

    return-object v0
.end method

.method private h()Z
    .locals 2

    .prologue
    .line 142
    invoke-static {p0}, Lcom/wandoujia/base/utils/SystemUtil;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ":nodex"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-static {}, Ldwm;->a()Ldwm;

    move-result-object v0

    invoke-static {p1}, Ldwm;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Ldwm;->a:Ldv;

    const-string v2, "start"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ldv;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_0
    invoke-super {p0, p1}, Lcom/wandoujia/update/UpdateApplication;->attachBaseContext(Landroid/content/Context;)V

    .line 105
    sput-object p0, Lcom/wandoujia/jupiter/JupiterApplication;->f:Lcom/wandoujia/jupiter/JupiterApplication;

    .line 106
    invoke-static {p1}, Lcom/wandoujia/base/utils/SystemUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/jupiter/JupiterApplication;->h:Ljava/lang/String;

    .line 108
    invoke-direct {p0}, Lcom/wandoujia/jupiter/JupiterApplication;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    :goto_0
    return-void

    .line 115
    :cond_1
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/JupiterApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    .line 116
    invoke-static {p1}, Lcom/wandoujia/jupiter/JupiterApplication;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-wide/16 v0, 0x3a98

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xc

    if-ge v2, v3, :cond_2

    const-wide/16 v0, 0x7530

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_2
    invoke-static {p1}, Lcom/wandoujia/jupiter/JupiterApplication;->b(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    sub-long/2addr v4, v2

    cmp-long v4, v4, v0

    if-ltz v4, :cond_6

    .line 121
    :cond_3
    invoke-static {p0}, Lcom/wandoujia/jupiter/multidex/MultiDex;->install(Landroid/content/Context;)V

    .line 122
    invoke-static {p0}, Lcom/wandoujia/jupiter/JupiterApplication;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 115
    :cond_4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/wandoujia/jupiter/activity/HomeActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    .line 117
    :cond_6
    const-wide/16 v4, 0xc8

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method protected final b()Lcom/wandoujia/update/LocalUpdateService$UpdateParams;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 269
    new-instance v0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;

    invoke-direct {v0}, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;-><init>()V

    invoke-virtual {p0}, Lcom/wandoujia/update/UpdateApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/wandoujia/base/utils/SystemUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->versionName:Ljava/lang/String;

    invoke-static {v1}, Lcom/wandoujia/base/utils/SystemUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v2

    iput v2, v0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->versionCode:I

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getLastChannel()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->source:Ljava/lang/String;

    invoke-static {v1}, Lcom/wandoujia/udid/UDIDUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->udid:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%s-%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->language:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->rom:Ljava/lang/String;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->romVersion:Ljava/lang/String;

    new-instance v1, Lcom/wandoujia/update/LocalUpdateService$UpdateParams;

    invoke-direct {v1}, Lcom/wandoujia/update/LocalUpdateService$UpdateParams;-><init>()V

    iput-object v0, v1, Lcom/wandoujia/update/LocalUpdateService$UpdateParams;->checkUpdateProtocol:Lcom/wandoujia/update/protocol/CheckUpdateProtocol;

    .line 270
    iget-object v0, v1, Lcom/wandoujia/update/LocalUpdateService$UpdateParams;->checkUpdateProtocol:Lcom/wandoujia/update/protocol/CheckUpdateProtocol;

    const-string v2, "jupiter"

    iput-object v2, v0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->appName:Ljava/lang/String;

    .line 271
    iget-object v0, v1, Lcom/wandoujia/update/LocalUpdateService$UpdateParams;->checkUpdateProtocol:Lcom/wandoujia/update/protocol/CheckUpdateProtocol;

    iput-boolean v5, v0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->isOem:Z

    .line 272
    const v0, 0x7f020487

    iput v0, v1, Lcom/wandoujia/update/LocalUpdateService$UpdateParams;->notificationIcon:I

    .line 273
    return-object v1
.end method

.method public final c()Lcom/wandoujia/update/LocalUpdateService$UpdateParams;
    .locals 1

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/JupiterApplication;->b()Lcom/wandoujia/update/LocalUpdateService$UpdateParams;

    move-result-object v0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 437
    const-string v0, "audio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ":playexp.download"

    invoke-static {p0}, Lcom/wandoujia/base/utils/SystemUtil;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    new-instance v0, Landroid/media/NoAudioFocusAudioManager;

    invoke-direct {v0, p0}, Landroid/media/NoAudioFocusAudioManager;-><init>(Landroid/content/Context;)V

    .line 442
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/wandoujia/update/UpdateApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 190
    invoke-direct {p0}, Lcom/wandoujia/jupiter/JupiterApplication;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    invoke-super {p0}, Lcom/wandoujia/update/UpdateApplication;->onCreate()V

    .line 195
    invoke-static {}, Ldwm;->a()Ldwm;

    move-result-object v0

    const-string v3, "app_oncreate_start"

    invoke-virtual {v0, p0, v3}, Ldwm;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/JupiterApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/jupiter/JupiterApplication;->e:Landroid/content/Context;

    .line 197
    invoke-static {v2}, Lcom/wandoujia/base/config/GlobalConfig;->setDebug(Z)V

    .line 198
    sget-object v0, Lcom/wandoujia/jupiter/JupiterApplication;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/wandoujia/base/config/GlobalConfig;->setAppContext(Landroid/content/Context;)V

    .line 200
    new-instance v0, Ldbz;

    invoke-direct {v0}, Ldbz;-><init>()V

    invoke-static {v0}, Lako;->a(Lakq;)V

    .line 206
    invoke-static {p0}, Lcom/wandoujia/base/utils/SystemUtil;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/JupiterApplication;->g:Ljava/lang/String;

    .line 207
    const-string v0, "com.wandoujia.phoenix2"

    iget-object v3, p0, Lcom/wandoujia/jupiter/JupiterApplication;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 208
    sget-object v0, Lbwm;->a:Lbwm;

    .line 215
    sget-object v0, Lcom/wandoujia/account/AccountParams$Type;->FIVE:Lcom/wandoujia/account/AccountParams$Type;

    invoke-static {p0, v0}, Ld;->a(Landroid/content/Context;Lcom/wandoujia/account/AccountParams$Type;)V

    .line 216
    new-instance v0, Ldca;

    new-instance v3, Lcqj;

    invoke-direct {v3, p0}, Lcqj;-><init>(Lcom/wandoujia/jupiter/JupiterApplication;)V

    invoke-direct {v0, p0, v3}, Ldca;-><init>(Landroid/content/Context;Lcqj;)V

    .line 217
    invoke-static {}, Lesb;->d()V

    .line 221
    sget-object v0, Lcom/wandoujia/jupiter/JupiterApplication;->e:Landroid/content/Context;

    invoke-static {v0}, Lewx;->a(Landroid/content/Context;)V

    .line 222
    new-instance v0, Ldka;

    invoke-direct {v0}, Ldka;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/jupiter/JupiterApplication;->a:Ldka;

    .line 223
    sget-object v0, Lcom/wandoujia/jupiter/JupiterApplication;->e:Landroid/content/Context;

    invoke-static {v0}, Ldka;->a(Landroid/content/Context;)V

    .line 225
    new-instance v0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager;

    invoke-direct {v0}, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/jupiter/JupiterApplication;->b:Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager;

    .line 226
    invoke-static {p0}, Lcom/wandoujia/p4/utils/ShortcutUtil;->a(Landroid/content/Context;)V

    .line 227
    invoke-static {p0}, Lcom/wandoujia/p4/subscribe/SubscribeRefreshFlagChecker;->a(Landroid/content/Context;)Lcom/wandoujia/p4/subscribe/SubscribeRefreshFlagChecker;

    move-result-object v0

    invoke-static {}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->a()Lcom/wandoujia/p4/subscribe/core/SubscribeManager;

    move-result-object v3

    iget-object v4, v0, Lcom/wandoujia/p4/subscribe/SubscribeRefreshFlagChecker;->b:Lgcj;

    invoke-virtual {v3, v4}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->a(Lgcj;)V

    iget-object v3, v0, Lcom/wandoujia/p4/subscribe/SubscribeRefreshFlagChecker;->a:Landroid/content/Context;

    new-instance v4, Lcom/wandoujia/p4/subscribe/SubscribeRefreshFlagChecker$AccountReceiver;

    invoke-direct {v4, v0}, Lcom/wandoujia/p4/subscribe/SubscribeRefreshFlagChecker$AccountReceiver;-><init>(Lcom/wandoujia/p4/subscribe/SubscribeRefreshFlagChecker;)V

    invoke-static {}, Lcom/wandoujia/p4/subscribe/SubscribeRefreshFlagChecker;->a()Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 231
    invoke-static {}, Leny;->b()Leny;

    move-result-object v0

    invoke-virtual {v0}, Leny;->a()V

    .line 234
    const-string v0, "APPLICATION_START"

    const-class v3, Lcom/wandoujia/jupiter/service/JupiterAlarmService;

    invoke-static {p0, v0, v3}, Lcom/wandoujia/base/services/AlarmService;->scheduleAlarm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V

    .line 237
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 238
    invoke-static {}, Lhgd;->d()V

    .line 241
    :cond_2
    new-instance v0, Lgzy;

    invoke-static {p0}, Lcom/wandoujia/udid/UDIDUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "normal"

    invoke-direct {v0, v3, v4}, Lgzy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-static {}, Lgzu;->a()Lgzu;

    move-result-object v3

    new-instance v4, Ldkf;

    invoke-direct {v4}, Ldkf;-><init>()V

    invoke-static {}, Lgzu;->b()V

    iget-boolean v5, v3, Lgzu;->a:Z

    if-eqz v5, :cond_3

    const-string v0, "PushClient"

    const-string v3, "ALREADY RUNNING"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    :goto_1
    invoke-static {}, Lgzu;->a()Lgzu;

    move-result-object v0

    new-instance v3, Ldke;

    invoke-direct {v3}, Ldke;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, Lgzu;->b()V

    iget-object v5, v0, Lgzu;->e:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "has exist the same type processor"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_3
    iput-boolean v1, v3, Lgzu;->a:Z

    iput-object p0, v3, Lgzu;->d:Landroid/content/Context;

    iput-object v0, v3, Lgzu;->b:Lgzy;

    iput-object v4, v3, Lgzu;->g:Lgzw;

    new-instance v0, Lhad;

    invoke-direct {v0, p0}, Lhad;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Lgzu;->c:Lhad;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v4, "PUSH_CLIENT"

    invoke-direct {v0, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v4, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, v3, Lgzu;->h:Landroid/os/Handler;

    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/wandoujia/push2/PushService;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 245
    :cond_4
    iget-object v0, v0, Lgzu;->e:Ljava/util/Map;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    :cond_5
    invoke-static {p0}, Ldwr;->a(Landroid/content/Context;)V

    .line 254
    :cond_6
    :goto_2
    invoke-static {}, Lcom/wandoujia/jupiter/playexp/JupiterWebDownloadProvider;->a()V

    .line 255
    invoke-static {}, Ldwm;->a()Ldwm;

    move-result-object v0

    const-string v3, "app_oncreate_end"

    invoke-virtual {v0, p0, v3}, Ldwm;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 256
    invoke-static {}, Ldwm;->a()Ldwm;

    move-result-object v3

    invoke-static {p0}, Ldwm;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v3, Ldwm;->a:Ldv;

    const-string v4, "start"

    invoke-virtual {v0, v4}, Ldv;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v3, Ldwm;->a:Ldv;

    const-string v4, "end"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ldv;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v3, Ldwm;->a:Ldv;

    const-string v4, "start"

    invoke-virtual {v0, v4}, Ldv;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v3, Ldwm;->a:Ldv;

    const-string v4, "end"

    invoke-virtual {v0, v4}, Ldv;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_3
    if-eqz v0, :cond_7

    iget-object v0, v3, Ldwm;->a:Ldv;

    const-string v4, "start"

    invoke-virtual {v0, v4}, Ldv;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, v3, Ldwm;->a:Ldv;

    const-string v6, "end"

    invoke-virtual {v0, v6}, Ldv;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-string v0, "LaunchTimer"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "total launch time:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v10, v6, v4

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v0, v8, v9}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sub-long v8, v6, v4

    const-wide/32 v10, 0x927c0

    cmp-long v0, v8, v10

    if-lez v0, :cond_a

    const-string v0, "LaunchTimer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "ignore bad case:"

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v4, v6, v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    :goto_4
    iget-object v0, v3, Ldwm;->a:Ldv;

    invoke-virtual {v0}, Ldv;->clear()V

    goto/16 :goto_0

    .line 249
    :cond_8
    iget-object v0, p0, Lcom/wandoujia/jupiter/JupiterApplication;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/jupiter/JupiterApplication;->g:Ljava/lang/String;

    const-string v3, ":playexp.download"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 251
    sget-object v0, Lcom/wandoujia/account/AccountParams$Type;->FIVE:Lcom/wandoujia/account/AccountParams$Type;

    invoke-static {p0, v0}, Ld;->a(Landroid/content/Context;Lcom/wandoujia/account/AccountParams$Type;)V

    .line 252
    sget-object v0, Lcom/wandoujia/jupiter/JupiterApplication;->e:Landroid/content/Context;

    sget-object v3, Ldcd;->a:Ldcd;

    if-nez v3, :cond_6

    new-instance v3, Ldcd;

    invoke-direct {v3, v0}, Ldcd;-><init>(Landroid/content/Context;)V

    sput-object v3, Ldcd;->a:Ldcd;

    goto/16 :goto_2

    :cond_9
    move v0, v2

    .line 256
    goto/16 :goto_3

    :cond_a
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    invoke-direct {v0}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;-><init>()V

    sget-object v8, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->END:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    invoke-virtual {v0, v8}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->status(Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v0

    sget-object v8, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->LAUNCH:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    invoke-virtual {v0, v8}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->action(Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v0

    sget-object v8, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->SUCCESS:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    invoke-virtual {v0, v8}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->result(Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v8

    new-instance v0, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    invoke-direct {v0}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;-><init>()V

    new-instance v9, Lcom/wandoujia/logv3/model/packages/TimingPackage$Builder;

    invoke-direct {v9}, Lcom/wandoujia/logv3/model/packages/TimingPackage$Builder;-><init>()V

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/wandoujia/logv3/model/packages/TimingPackage$Builder;->start(Ljava/lang/Long;)Lcom/wandoujia/logv3/model/packages/TimingPackage$Builder;

    move-result-object v9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/wandoujia/logv3/model/packages/TimingPackage$Builder;->end(Ljava/lang/Long;)Lcom/wandoujia/logv3/model/packages/TimingPackage$Builder;

    move-result-object v9

    sub-long v4, v6, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/wandoujia/logv3/model/packages/TimingPackage$Builder;->duration(Ljava/lang/Long;)Lcom/wandoujia/logv3/model/packages/TimingPackage$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wandoujia/logv3/model/packages/TimingPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/TimingPackage;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->timing_package(Lcom/wandoujia/logv3/model/packages/TimingPackage;)Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    move-result-object v4

    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->M()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->identity(Ljava/lang/Integer;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    :goto_5
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->e:Lcom/wandoujia/ripple_framework/log/Logger;

    invoke-virtual {v0, v8, v4}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;)V

    goto/16 :goto_4

    :cond_b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->identity(Ljava/lang/Integer;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    iget-object v0, v3, Ldwm;->a:Ldv;

    invoke-virtual {v0}, Ldv;->size()I

    move-result v0

    const/4 v5, 0x6

    if-le v0, v5, :cond_d

    move v0, v1

    :goto_6
    if-eqz v0, :cond_c

    invoke-virtual {v3}, Ldwm;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->result_info(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    :cond_c
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->L()V

    goto :goto_5

    :cond_d
    move v0, v2

    goto :goto_6
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 261
    invoke-super {p0}, Lcom/wandoujia/update/UpdateApplication;->onLowMemory()V

    .line 262
    const-string v0, "com.wandoujia.phoenix2"

    iget-object v1, p0, Lcom/wandoujia/jupiter/JupiterApplication;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    sget-object v0, Lham;->f:Lham;

    invoke-virtual {v0}, Lham;->e()V

    .line 265
    :cond_0
    return-void
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 420
    const/16 v0, 0x15

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 421
    invoke-super {p0, p1, p2}, Lcom/wandoujia/update/UpdateApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 431
    :cond_0
    :goto_0
    return-object v0

    .line 426
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->a(Landroid/app/Application;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 427
    if-nez v0, :cond_0

    .line 428
    invoke-super {p0, p1, p2}, Lcom/wandoujia/update/UpdateApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method
