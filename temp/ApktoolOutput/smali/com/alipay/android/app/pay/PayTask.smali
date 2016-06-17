.class public final Lcom/alipay/android/app/pay/PayTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/alipay/android/app/pay/PayTask$OnPayListener;

.field private c:Ljava/lang/Object;

.field private d:Lcom/alipay/android/app/pay/IAlixPay;

.field private e:Z

.field private f:Lcom/alipay/android/app/pay/IAlixPayCallback;

.field private g:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alipay/android/app/pay/PayTask$OnPayListener;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/pay/PayTask;->c:Ljava/lang/Object;

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/pay/PayTask;->d:Lcom/alipay/android/app/pay/IAlixPay;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/pay/PayTask;->e:Z

    .line 26
    new-instance v0, Lxa;

    invoke-direct {v0, p0}, Lxa;-><init>(Lcom/alipay/android/app/pay/PayTask;)V

    iput-object v0, p0, Lcom/alipay/android/app/pay/PayTask;->f:Lcom/alipay/android/app/pay/IAlixPayCallback;

    .line 53
    new-instance v0, Lxb;

    invoke-direct {v0, p0}, Lxb;-><init>(Lcom/alipay/android/app/pay/PayTask;)V

    iput-object v0, p0, Lcom/alipay/android/app/pay/PayTask;->g:Landroid/content/ServiceConnection;

    .line 78
    iput-object p1, p0, Lcom/alipay/android/app/pay/PayTask;->a:Landroid/app/Activity;

    .line 79
    iput-object p2, p0, Lcom/alipay/android/app/pay/PayTask;->b:Lcom/alipay/android/app/pay/PayTask$OnPayListener;

    .line 80
    return-void
.end method

.method public static synthetic a(Lcom/alipay/android/app/pay/PayTask;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alipay/android/app/pay/PayTask;->a:Landroid/app/Activity;

    return-object v0
.end method

.method private varargs a([Ljava/lang/String;)Lwz;
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 88
    const/4 v1, 0x0

    aget-object v1, p1, v1

    .line 91
    iget-boolean v2, p0, Lcom/alipay/android/app/pay/PayTask;->e:Z

    if-eqz v2, :cond_0

    .line 151
    :goto_0
    return-object v0

    .line 94
    :cond_0
    iput-boolean v5, p0, Lcom/alipay/android/app/pay/PayTask;->e:Z

    .line 96
    iget-object v2, p0, Lcom/alipay/android/app/pay/PayTask;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 100
    iget-object v3, p0, Lcom/alipay/android/app/pay/PayTask;->d:Lcom/alipay/android/app/pay/IAlixPay;

    if-nez v3, :cond_1

    .line 104
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/alipay/android/app/MspService;

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    iget-object v4, p0, Lcom/alipay/android/app/pay/PayTask;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 118
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/alipay/android/app/pay/PayTask;->c:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :try_start_1
    iget-object v4, p0, Lcom/alipay/android/app/pay/PayTask;->d:Lcom/alipay/android/app/pay/IAlixPay;

    if-nez v4, :cond_2

    .line 120
    iget-object v4, p0, Lcom/alipay/android/app/pay/PayTask;->c:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V

    .line 118
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    :try_start_2
    iget-object v3, p0, Lcom/alipay/android/app/pay/PayTask;->f:Lcom/alipay/android/app/pay/IAlixPayCallback;

    if-eqz v3, :cond_3

    .line 126
    iget-object v3, p0, Lcom/alipay/android/app/pay/PayTask;->d:Lcom/alipay/android/app/pay/IAlixPay;

    iget-object v4, p0, Lcom/alipay/android/app/pay/PayTask;->f:Lcom/alipay/android/app/pay/IAlixPayCallback;

    invoke-interface {v3, v4}, Lcom/alipay/android/app/pay/IAlixPay;->registerCallback(Lcom/alipay/android/app/pay/IAlixPayCallback;)V

    .line 131
    :cond_3
    const-string v3, "http"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 132
    iget-object v3, p0, Lcom/alipay/android/app/pay/PayTask;->d:Lcom/alipay/android/app/pay/IAlixPay;

    invoke-interface {v3, v1}, Lcom/alipay/android/app/pay/IAlixPay;->payWithURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    :goto_1
    invoke-static {}, Ld;->c()V

    .line 142
    iget-object v1, p0, Lcom/alipay/android/app/pay/PayTask;->f:Lcom/alipay/android/app/pay/IAlixPayCallback;

    if-eqz v1, :cond_4

    .line 143
    iget-object v1, p0, Lcom/alipay/android/app/pay/PayTask;->d:Lcom/alipay/android/app/pay/IAlixPay;

    iget-object v3, p0, Lcom/alipay/android/app/pay/PayTask;->f:Lcom/alipay/android/app/pay/IAlixPayCallback;

    invoke-interface {v1, v3}, Lcom/alipay/android/app/pay/IAlixPay;->unregisterCallback(Lcom/alipay/android/app/pay/IAlixPayCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 148
    :cond_4
    iget-object v1, p0, Lcom/alipay/android/app/pay/PayTask;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 151
    :goto_2
    new-instance v1, Lwz;

    invoke-direct {v1, v0}, Lwz;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 146
    :catch_0
    move-exception v1

    :try_start_5
    invoke-static {v1}, Ld;->b(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 148
    iget-object v1, p0, Lcom/alipay/android/app/pay/PayTask;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_2

    .line 134
    :cond_5
    :try_start_6
    iget-object v3, p0, Lcom/alipay/android/app/pay/PayTask;->d:Lcom/alipay/android/app/pay/IAlixPay;

    invoke-interface {v3, v1}, Lcom/alipay/android/app/pay/IAlixPay;->pay(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v0

    goto :goto_1

    .line 147
    :catchall_1
    move-exception v0

    .line 148
    iget-object v1, p0, Lcom/alipay/android/app/pay/PayTask;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 149
    throw v0
.end method

.method public static synthetic a(Lcom/alipay/android/app/pay/PayTask;Lcom/alipay/android/app/pay/IAlixPay;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/alipay/android/app/pay/PayTask;->d:Lcom/alipay/android/app/pay/IAlixPay;

    return-void
.end method

.method public static synthetic b(Lcom/alipay/android/app/pay/PayTask;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/android/app/pay/PayTask;->c:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/alipay/android/app/pay/PayTask;->a([Ljava/lang/String;)Lwz;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5
    .parameter

    .prologue
    .line 1
    check-cast p1, Lwz;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/alipay/android/app/pay/PayTask;->b:Lcom/alipay/android/app/pay/PayTask$OnPayListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p1, Lwz;->a:Ljava/lang/String;

    const-string v1, "9000"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/pay/PayTask;->b:Lcom/alipay/android/app/pay/PayTask$OnPayListener;

    iget-object v1, p0, Lcom/alipay/android/app/pay/PayTask;->a:Landroid/app/Activity;

    iget-object v2, p1, Lwz;->a:Ljava/lang/String;

    iget-object v3, p1, Lwz;->c:Ljava/lang/String;

    iget-object v4, p1, Lwz;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/pay/PayTask$OnPayListener;->onPaySuccess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/alipay/android/app/pay/PayTask;->b:Lcom/alipay/android/app/pay/PayTask$OnPayListener;

    iget-object v2, p0, Lcom/alipay/android/app/pay/PayTask;->a:Landroid/app/Activity;

    if-nez p1, :cond_2

    const-string v0, "6001"

    :goto_1
    iget-object v3, p1, Lwz;->c:Ljava/lang/String;

    iget-object v4, p1, Lwz;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/alipay/android/app/pay/PayTask$OnPayListener;->onPayFailed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lwz;->a:Ljava/lang/String;

    goto :goto_1
.end method
