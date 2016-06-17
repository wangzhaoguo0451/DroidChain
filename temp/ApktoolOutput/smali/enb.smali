.class public final Lenb;
.super Ljava/lang/Object;
.source "LogSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/logv3/LogSender;


# direct methods
.method public constructor <init>(Lcom/wandoujia/logv3/LogSender;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lenb;->a:Lcom/wandoujia/logv3/LogSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lenb;->a:Lcom/wandoujia/logv3/LogSender;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/LogSender;->a(Z)V

    .line 121
    return-void
.end method
