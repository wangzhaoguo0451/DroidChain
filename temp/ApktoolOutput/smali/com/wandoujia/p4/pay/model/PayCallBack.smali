.class public interface abstract Lcom/wandoujia/p4/pay/model/PayCallBack;
.super Ljava/lang/Object;
.source "PayCallBack.java"


# static fields
.field public static final ERROR_MESSAGE_NETWORK_ERROR:Ljava/lang/String; = "\u7f51\u7edc\u5f02\u5e38, \u8bf7\u7a0d\u540e\u91cd\u8bd5\u3002"

.field public static final TYPE_EXCEPTION:I = 0x1

.field public static final TYPE_TOAST:I


# virtual methods
.method public abstract onError(ILjava/lang/String;)V
.end method

.method public abstract onPending(Ljava/lang/String;)V
.end method

.method public abstract onProcessing()V
.end method

.method public abstract onSuccess()V
.end method
