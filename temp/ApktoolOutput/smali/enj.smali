.class final Lenj;
.super Ljava/lang/Object;
.source "ActiveLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/base/services/AlarmService$Callback;


# direct methods
.method constructor <init>(Lcom/wandoujia/base/services/AlarmService$Callback;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lenj;->a:Lcom/wandoujia/base/services/AlarmService$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lenj;->a:Lcom/wandoujia/base/services/AlarmService$Callback;

    invoke-interface {v0}, Lcom/wandoujia/base/services/AlarmService$Callback;->onCompleted()V

    .line 49
    return-void
.end method
