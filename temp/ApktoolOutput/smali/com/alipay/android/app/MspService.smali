.class public Lcom/alipay/android/app/MspService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static a:Z


# instance fields
.field private b:Lcom/alipay/android/app/MspService$a;

.field private c:Landroid/os/Handler;

.field private d:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/app/MspService;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/MspService;->c:Landroid/os/Handler;

    .line 109
    new-instance v0, Lwl;

    invoke-direct {v0}, Lwl;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/MspService;->d:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/MspService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/alipay/android/app/MspService;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 137
    :try_start_0
    const-string v2, "\\?"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 138
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const-string v4, "alipay"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 139
    new-instance v0, Ljava/net/MalformedURLException;

    invoke-direct {v0}, Ljava/net/MalformedURLException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :catch_0
    move-exception v0

    invoke-static {}, Lwr;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 141
    :cond_0
    const/4 v3, 0x1

    :try_start_1
    aget-object v2, v2, v3

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 146
    array-length v6, v5

    move v4, v0

    move-object v2, v1

    move-object v3, v1

    move-object v0, v1

    :goto_1
    if-lt v4, v6, :cond_1

    .line 161
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "extern_token=\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 162
    const-string v4, "\"&trade_no=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 163
    const-string v3, "\"&app_name=\"tb\"&partner=\"TAOBAO_PARTNER_ORDER\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 161
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&appevn=\""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&payPhaseId=\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    :goto_3
    invoke-direct {p0, v0}, Lcom/alipay/android/app/MspService;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 146
    :cond_1
    aget-object v7, v5, v4

    .line 147
    const-string v8, "sid"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 148
    const-string v3, "sid="

    invoke-virtual {v7, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 149
    add-int/lit8 v3, v3, 0x4

    .line 148
    invoke-virtual {v7, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 146
    :cond_2
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 150
    :cond_3
    const-string v8, "trade_no"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 151
    const-string v2, "trade_no="

    invoke-virtual {v7, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 152
    add-int/lit8 v2, v2, 0x9

    .line 151
    invoke-virtual {v7, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 153
    :cond_4
    const-string v8, "appevn"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 154
    const-string v1, "appevn="

    invoke-virtual {v7, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 155
    add-int/lit8 v1, v1, 0x7

    .line 154
    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 156
    :cond_5
    const-string v8, "payPhaseId"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 157
    const-string v0, "payPhaseId="

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 158
    add-int/lit8 v0, v0, 0xb

    .line 157
    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_4

    :cond_6
    move-object v0, v1

    goto :goto_3

    :cond_7
    move-object v1, v2

    goto/16 :goto_2
.end method

.method static synthetic a()V
    .locals 2

    .prologue
    .line 239
    invoke-static {}, Lace;->a()Lace;

    move-result-object v0

    iget-object v0, v0, Lace;->b:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/pay/IAlixPayCallback;)V
    .locals 3
    .parameter

    .prologue
    .line 223
    if-eqz p0, :cond_0

    new-instance v0, Lwq;

    invoke-direct {v0, p0}, Lwq;-><init>(Lcom/alipay/android/app/pay/IAlixPayCallback;)V

    invoke-static {}, Lace;->a()Lace;

    move-result-object v1

    iget-object v1, v1, Lace;->b:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/MspService;)Z
    .locals 1
    .parameter

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/alipay/android/app/MspService;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/alipay/android/app/MspService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/alipay/android/app/MspService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 178
    new-instance v0, Lwk;

    invoke-direct {v0}, Lwk;-><init>()V

    .line 180
    invoke-virtual {p0}, Lcom/alipay/android/app/MspService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 181
    if-eqz v1, :cond_0

    const-string v2, "alixtid"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lwk;->a:Ljava/lang/String;

    const-string v2, "config"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lwk;->b:Ljava/lang/String;

    const-string v2, "errorMessage"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lwk;->c:Ljava/lang/String;

    const-string v2, "downloadMessage"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lwk;->d:Ljava/lang/String;

    const-string v2, "downloadType"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lwk;->e:Ljava/lang/String;

    const-string v2, "downloadUrl"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lwk;->f:Ljava/lang/String;

    const-string v2, "downloadVersion"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lwk;->g:Ljava/lang/String;

    const-string v2, "state"

    const/16 v3, 0xfa0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lwk;->h:I

    const-string v2, "timeout"

    const/16 v3, 0xf

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lwk;->i:I

    const-string v2, "url"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lwk;->j:Ljava/lang/String;

    .line 183
    :cond_0
    new-instance v1, Lwr;

    .line 184
    invoke-direct {v1, p0, p1, v0}, Lwr;-><init>(Landroid/content/Context;Ljava/lang/String;Lwk;)V

    .line 188
    invoke-virtual {v1}, Lwr;->a()Ljava/lang/String;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/alipay/android/app/MspService;->c:Landroid/os/Handler;

    new-instance v2, Lwp;

    invoke-direct {v2, p0, p1}, Lwp;-><init>(Lcom/alipay/android/app/MspService;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 193
    return-object v0
.end method

.method private b()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 197
    invoke-static {}, Lg;->e()Lacz;

    move-result-object v1

    .line 200
    :try_start_0
    new-instance v2, Ladn;

    invoke-direct {v2}, Ladn;-><init>()V

    .line 201
    invoke-virtual {p0}, Lcom/alipay/android/app/MspService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 200
    invoke-virtual {v2, v3, v1}, Ladn;->a(Landroid/content/Context;Lacz;)Ladl;

    move-result-object v1

    .line 202
    iget-object v1, v1, Ladl;->d:Lorg/json/JSONObject;

    const-string v2, "hasAccount"

    .line 203
    const/4 v3, 0x0

    .line 202
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 205
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alipay/android/app/MspService;->b:Lcom/alipay/android/app/MspService$a;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 68
    invoke-static {}, Lxx;->a()V

    .line 69
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/MspService;->d:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 70
    invoke-virtual {p0}, Lcom/alipay/android/app/MspService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 71
    invoke-static {}, Lade;->a()Lade;

    move-result-object v1

    invoke-static {}, Lack;->z()Lack;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lade;->a(Landroid/content/Context;Lcom/alipay/android/app/d;)V

    .line 72
    sget-boolean v0, Lcom/alipay/android/app/MspService;->a:Z

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/app/MspService;->a:Z

    .line 74
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/app/MspService;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "msp.dat"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/app/MspService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lwy;->a(Landroid/content/Context;Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/alipay/android/app/MspService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lwy;->a(Landroid/content/Context;)V

    .line 75
    const-class v0, Laci;

    invoke-static {v0}, Lacd;->a(Ljava/lang/Class;)V

    .line 77
    new-instance v0, Ladc;

    invoke-direct {v0}, Ladc;-><init>()V

    invoke-static {v0}, Ladm;->a(Lcom/alipay/wandoujia/mc;)V

    .line 79
    new-instance v0, Lads;

    invoke-direct {v0}, Lads;-><init>()V

    invoke-static {v0}, Ladm;->a(Lcom/alipay/wandoujia/mc;)V

    .line 81
    const-class v0, Lye;

    .line 82
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ladr;->a(ILjava/lang/Class;)V

    .line 83
    const/4 v1, 0x4

    invoke-static {v1, v0}, Ladr;->a(ILjava/lang/Class;)V

    .line 84
    const/4 v1, 0x6

    invoke-static {v1, v0}, Ladr;->a(ILjava/lang/Class;)V

    .line 85
    const/4 v1, 0x7

    invoke-static {v1, v0}, Ladr;->a(ILjava/lang/Class;)V

    .line 86
    const/16 v1, 0x8

    invoke-static {v1, v0}, Ladr;->a(ILjava/lang/Class;)V

    .line 87
    const/16 v1, -0xa

    invoke-static {v1, v0}, Ladr;->a(ILjava/lang/Class;)V

    .line 88
    const/16 v1, 0xa

    invoke-static {v1, v0}, Ladr;->a(ILjava/lang/Class;)V

    .line 89
    const/4 v1, 0x5

    invoke-static {v1, v0}, Ladr;->a(ILjava/lang/Class;)V

    .line 90
    const/16 v1, 0x9

    invoke-static {v1, v0}, Ladr;->a(ILjava/lang/Class;)V

    .line 93
    :cond_0
    invoke-static {}, Lxc;->a()V

    .line 95
    invoke-static {}, Lacm;->b()V

    .line 97
    iget-object v0, p0, Lcom/alipay/android/app/MspService;->b:Lcom/alipay/android/app/MspService$a;

    if-nez v0, :cond_1

    .line 98
    new-instance v0, Lcom/alipay/android/app/MspService$a;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/MspService$a;-><init>(Lcom/alipay/android/app/MspService;)V

    iput-object v0, p0, Lcom/alipay/android/app/MspService;->b:Lcom/alipay/android/app/MspService$a;

    .line 101
    :cond_1
    return-void

    .line 74
    :catch_0
    move-exception v0

    invoke-static {v0}, Ld;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/app/MspService;->a:Z

    .line 106
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 107
    return-void
.end method
