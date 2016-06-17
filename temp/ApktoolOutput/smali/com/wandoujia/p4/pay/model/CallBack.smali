.class public interface abstract Lcom/wandoujia/p4/pay/model/CallBack;
.super Ljava/lang/Object;
.source "CallBack.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final TYPE_EXCEPTION:I = 0x1

.field public static final TYPE_NEWWORK:I = 0x2

.field public static final TYPE_TOAST:I


# virtual methods
.method public abstract onError(ILjava/lang/String;)V
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
