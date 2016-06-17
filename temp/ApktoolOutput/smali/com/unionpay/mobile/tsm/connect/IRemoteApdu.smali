.class public interface abstract Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract closeChannel(I)V
.end method

.method public abstract init()V
.end method

.method public abstract registerCallback(Lcom/unionpay/mobile/tsm/connect/IInitCallback;)V
.end method

.method public abstract writeApdu(Ljava/lang/String;I)Ljava/lang/String;
.end method
