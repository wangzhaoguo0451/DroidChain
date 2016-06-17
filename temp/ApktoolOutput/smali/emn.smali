.class public final Lemn;
.super Ljava/lang/Object;
.source "LogSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/log/LogSender;


# direct methods
.method public constructor <init>(Lcom/wandoujia/log/LogSender;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lemn;->a:Lcom/wandoujia/log/LogSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lemn;->a:Lcom/wandoujia/log/LogSender;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wandoujia/log/LogSender;->triggerSend(Z)V

    .line 91
    return-void
.end method
