.class public final Laad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/alipay/android/mini/window/sdk/MiniPayActivity;


# direct methods
.method public constructor <init>(Lcom/alipay/android/mini/window/sdk/MiniPayActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Laad;->a:Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Laad;->a:Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->a(Lcom/alipay/android/mini/window/sdk/MiniPayActivity;)V

    .line 202
    iget-object v0, p0, Laad;->a:Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->b(Lcom/alipay/android/mini/window/sdk/MiniPayActivity;)Lxx;

    move-result-object v0

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Laad;->a:Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

    new-instance v1, Lxx;

    iget-object v2, p0, Laad;->a:Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

    invoke-direct {v1, v2}, Lxx;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->a(Lcom/alipay/android/mini/window/sdk/MiniPayActivity;Lxx;)V

    .line 205
    :cond_0
    iget-object v0, p0, Laad;->a:Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->b(Lcom/alipay/android/mini/window/sdk/MiniPayActivity;)Lxx;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lxx;->setCancelable(Z)V

    .line 206
    iget-object v0, p0, Laad;->a:Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->b(Lcom/alipay/android/mini/window/sdk/MiniPayActivity;)Lxx;

    move-result-object v0

    invoke-virtual {v0}, Lxx;->show()V

    .line 207
    return-void
.end method
