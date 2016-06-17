.class public final Lzh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/alipay/android/mini/window/sdk/TransContainer;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/android/mini/window/sdk/TransContainer;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzh;->a:Lcom/alipay/android/mini/window/sdk/TransContainer;

    iput-object p2, p0, Lzh;->b:Ljava/lang/String;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lzh;->a:Lcom/alipay/android/mini/window/sdk/TransContainer;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/TransContainer;->a(Lcom/alipay/android/mini/window/sdk/TransContainer;)V

    .line 198
    iget-object v0, p0, Lzh;->a:Lcom/alipay/android/mini/window/sdk/TransContainer;

    invoke-virtual {v0}, Lcom/alipay/android/mini/window/sdk/TransContainer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lzh;->b:Ljava/lang/String;

    .line 198
    invoke-static {v0, v1}, Ld;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 201
    return-void
.end method
