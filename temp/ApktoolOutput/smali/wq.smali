.class public final Lwq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alipay/android/app/c;


# instance fields
.field private final synthetic a:Lcom/alipay/android/app/pay/IAlixPayCallback;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/pay/IAlixPayCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lwq;->a:Lcom/alipay/android/app/pay/IAlixPayCallback;

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 232
    iget-object v0, p0, Lwq;->a:Lcom/alipay/android/app/pay/IAlixPayCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alipay/android/app/pay/IAlixPayCallback;->startActivity(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 233
    return-void
.end method
