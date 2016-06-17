.class public Lcom/alipay/android/app/MspService$a;
.super Lcom/alipay/android/app/pay/IAlixPay$Stub;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/MspService;)V
    .locals 1
    .parameter

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/alipay/android/app/pay/IAlixPay$Stub;-><init>()V

    .line 248
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/android/app/MspService$a;->a:Ljava/lang/ref/WeakReference;

    .line 249
    return-void
.end method


# virtual methods
.method public isAuthenticated()Z
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/alipay/android/app/MspService$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/MspService;

    invoke-static {v0}, Lcom/alipay/android/app/MspService;->a(Lcom/alipay/android/app/MspService;)Z

    move-result v0

    return v0
.end method

.method public pay(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, Lcom/alipay/android/app/MspService$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/MspService;

    invoke-static {v0, p1}, Lcom/alipay/android/app/MspService;->a(Lcom/alipay/android/app/MspService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public payWithURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 258
    iget-object v0, p0, Lcom/alipay/android/app/MspService$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/MspService;

    invoke-static {v0, p1}, Lcom/alipay/android/app/MspService;->b(Lcom/alipay/android/app/MspService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public registerCallback(Lcom/alipay/android/app/pay/IAlixPayCallback;)V
    .locals 1
    .parameter

    .prologue
    .line 269
    iget-object v0, p0, Lcom/alipay/android/app/MspService$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    invoke-static {p1}, Lcom/alipay/android/app/MspService;->a(Lcom/alipay/android/app/pay/IAlixPayCallback;)V

    .line 270
    return-void
.end method

.method public unregisterCallback(Lcom/alipay/android/app/pay/IAlixPayCallback;)V
    .locals 1
    .parameter

    .prologue
    .line 275
    iget-object v0, p0, Lcom/alipay/android/app/MspService$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/android/app/MspService;->a()V

    .line 276
    return-void
.end method
