.class public final Lwr;
.super Ljava/lang/Object;
.source "i.java"


# static fields
.field public static final a:Ljava/lang/Object;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Lwk;

.field private e:Z

.field private f:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lwr;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lwk;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lwr;->e:Z

    .line 27
    new-instance v0, Lws;

    invoke-direct {v0, p0}, Lws;-><init>(Lwr;)V

    iput-object v0, p0, Lwr;->f:Landroid/content/ServiceConnection;

    .line 28
    new-instance v0, Lwt;

    invoke-direct {v0, p0}, Lwt;-><init>(Lwr;)V

    .line 31
    iput-object p1, p0, Lwr;->b:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lwr;->c:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lwr;->d:Lwk;

    .line 34
    return-void
.end method

.method private a(Landroid/content/Intent;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 120
    iget-boolean v0, p0, Lwr;->e:Z

    if-eqz v0, :cond_0

    .line 121
    invoke-static {}, Lwr;->b()Ljava/lang/String;

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    .line 123
    :cond_0
    iput-boolean v4, p0, Lwr;->e:Z

    .line 124
    const/4 v0, 0x0

    .line 125
    iget-object v1, p0, Lwr;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lwr;->f:Landroid/content/ServiceConnection;

    invoke-virtual {v1, p1, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 130
    :try_start_0
    sget-object v2, Lwr;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :try_start_1
    sget-object v1, Lwr;->a:Ljava/lang/Object;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 135
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    :try_start_2
    const-string v0, "\u7cfb\u7edf\u9519\u8bef"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 146
    iput-boolean v3, p0, Lwr;->e:Z

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 143
    :catch_0
    move-exception v1

    :try_start_5
    invoke-static {v1}, Ld;->b(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 146
    iput-boolean v3, p0, Lwr;->e:Z

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 148
    iput-boolean v3, p0, Lwr;->e:Z

    throw v0
.end method

.method private a(Z)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lwr;->d:Lwk;

    iget v0, v0, Lwk;->h:I

    sparse-switch v0, :sswitch_data_0

    .line 51
    iget-object v0, p0, Lwr;->c:Ljava/lang/String;

    invoke-static {v0}, Ld;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 44
    :sswitch_0
    iget-object v0, p0, Lwr;->d:Lwk;

    iget v0, v0, Lwk;->h:I

    invoke-static {v0}, Lcom/alipay/android/app/m;->b(I)Lcom/alipay/android/app/m;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/alipay/android/app/m;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/alipay/android/app/m;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v1, v0, v2}, Ld;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 47
    :sswitch_1
    iget-object v0, p0, Lwr;->d:Lwk;

    iget v0, v0, Lwk;->h:I

    iget-object v1, p0, Lwr;->d:Lwk;

    iget-object v1, v1, Lwk;->c:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v1, v2}, Ld;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 49
    :sswitch_2
    iget-object v0, p0, Lwr;->d:Lwk;

    iget-object v0, v0, Lwk;->b:Ljava/lang/String;

    const-string v1, "safepay"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lwr;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v1, "alipay"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lwr;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v1, "wap"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lwr;->b(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v1, "download"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "wap_sdk"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "exit"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0xfa0

    invoke-static {v0}, Lcom/alipay/android/app/m;->b(I)Lcom/alipay/android/app/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/m;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/alipay/android/app/m;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v1, v0, v2}, Ld;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lwr;->d:Lwk;

    iget-object v0, v0, Lwk;->e:Ljava/lang/String;

    const-string v1, "safepay"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    invoke-static {v0}, Ladd;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lwr;->c()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lwr;->d:Lwk;

    iget-object v0, v0, Lwk;->e:Ljava/lang/String;

    const-string v1, "alipay"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lwr;->b:Landroid/content/Context;

    invoke-static {v0}, Ladd;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lwr;->d()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lwr;->c:Ljava/lang/String;

    invoke-static {v0}, Ld;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 42
    :sswitch_data_0
    .sparse-switch
        0xfa1 -> :sswitch_0
        0x1b59 -> :sswitch_1
        0x2328 -> :sswitch_2
    .end sparse-switch
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 184
    const/16 v0, 0x1771

    invoke-static {v0}, Lcom/alipay/android/app/m;->b(I)Lcom/alipay/android/app/m;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Lcom/alipay/android/app/m;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/alipay/android/app/m;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v1, v0, v2}, Ld;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Z)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 94
    if-eqz p1, :cond_1

    .line 95
    new-instance v0, Lwu;

    iget-object v1, p0, Lwr;->b:Landroid/content/Context;

    iget-object v2, p0, Lwr;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v3, v2}, Lwu;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    .line 96
    invoke-virtual {v0}, Lwu;->a()Lwk;

    move-result-object v0

    iput-object v0, p0, Lwr;->d:Lwk;

    .line 97
    iget-object v0, p0, Lwr;->d:Lwk;

    if-nez v0, :cond_0

    invoke-static {}, Lwr;->b()Ljava/lang/String;

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    .line 97
    :cond_0
    invoke-direct {p0, v3}, Lwr;->a(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 99
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lwr;->b:Landroid/content/Context;

    const-class v2, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "url"

    iget-object v3, p0, Lwr;->d:Lwk;

    iget-object v3, v3, Lwk;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "timeout"

    iget-object v3, p0, Lwr;->d:Lwk;

    iget v3, v3, Lwk;->i:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "from_mcashier"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lace;->a()Lace;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Lace;->e(I)Lcom/alipay/android/app/c;

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Lwr;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-interface {v2, v3, v4, v5, v1}, Lcom/alipay/android/app/c;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_1
    sget-object v1, Lwr;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 103
    :try_start_1
    sget-object v0, Lwr;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 107
    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    sget-object v0, Ld;->c:Ljava/lang/String;

    .line 110
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 111
    invoke-static {}, Lwr;->b()Ljava/lang/String;

    move-result-object v0

    .line 114
    :cond_2
    invoke-static {}, Lwr;->b()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ld;->c:Ljava/lang/String;

    goto :goto_0

    .line 99
    :catch_0
    move-exception v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lwr;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 104
    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {v0}, Ld;->b(Ljava/lang/Object;)V

    goto :goto_2

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.alipay.android.app.IAlixPay"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-direct {p0, v0}, Lwr;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.eg.android.AlipayGphone.IAlixPay"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-direct {p0, v0}, Lwr;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lwr;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
