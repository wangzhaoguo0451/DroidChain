.class public interface abstract Lcom/alipay/android/app/pay/IAlixPay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract isAuthenticated()Z
.end method

.method public abstract pay(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract payWithURL(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract registerCallback(Lcom/alipay/android/app/pay/IAlixPayCallback;)V
.end method

.method public abstract unregisterCallback(Lcom/alipay/android/app/pay/IAlixPayCallback;)V
.end method
