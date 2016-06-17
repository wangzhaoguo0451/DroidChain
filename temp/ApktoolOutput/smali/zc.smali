.class public final Lzc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/alipay/android/mini/window/sdk/TransContainer;


# direct methods
.method public constructor <init>(Lcom/alipay/android/mini/window/sdk/TransContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzc;->a:Lcom/alipay/android/mini/window/sdk/TransContainer;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lzc;->a:Lcom/alipay/android/mini/window/sdk/TransContainer;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/TransContainer;->a(Lcom/alipay/android/mini/window/sdk/TransContainer;)V

    .line 130
    iget-object v0, p0, Lzc;->a:Lcom/alipay/android/mini/window/sdk/TransContainer;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/TransContainer;->b(Lcom/alipay/android/mini/window/sdk/TransContainer;)Lxx;

    move-result-object v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lzc;->a:Lcom/alipay/android/mini/window/sdk/TransContainer;

    new-instance v1, Lxx;

    iget-object v2, p0, Lzc;->a:Lcom/alipay/android/mini/window/sdk/TransContainer;

    invoke-direct {v1, v2}, Lxx;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/alipay/android/mini/window/sdk/TransContainer;->a(Lcom/alipay/android/mini/window/sdk/TransContainer;Lxx;)V

    .line 133
    :cond_0
    iget-object v0, p0, Lzc;->a:Lcom/alipay/android/mini/window/sdk/TransContainer;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/TransContainer;->b(Lcom/alipay/android/mini/window/sdk/TransContainer;)Lxx;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lxx;->setCancelable(Z)V

    .line 134
    iget-object v0, p0, Lzc;->a:Lcom/alipay/android/mini/window/sdk/TransContainer;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/TransContainer;->b(Lcom/alipay/android/mini/window/sdk/TransContainer;)Lxx;

    move-result-object v0

    invoke-virtual {v0}, Lxx;->show()V

    .line 136
    return-void
.end method
