.class public interface abstract Lcom/wandoujia/p4/pay/model/CallBackEx;
.super Ljava/lang/Object;
.source "CallBackEx.java"

# interfaces
.implements Lcom/wandoujia/p4/pay/model/CallBack;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/wandoujia/p4/pay/model/CallBack",
        "<TT;>;"
    }
.end annotation


# virtual methods
.method public abstract onPending(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract onProcessing(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
