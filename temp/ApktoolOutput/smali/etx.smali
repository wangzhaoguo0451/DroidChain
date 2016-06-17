.class final Letx;
.super Ljava/lang/Object;
.source "AccountChecker.java"

# interfaces
.implements Lcmg;


# instance fields
.field private synthetic a:Lcom/wandoujia/base/services/AlarmService$Callback;


# direct methods
.method constructor <init>(Lcom/wandoujia/base/services/AlarmService$Callback;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Letx;->a:Lcom/wandoujia/base/services/AlarmService$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Letx;->a:Lcom/wandoujia/base/services/AlarmService$Callback;

    invoke-interface {v0}, Lcom/wandoujia/base/services/AlarmService$Callback;->onCompleted()V

    .line 48
    return-void
.end method

.method public final a(Lcom/wandoujia/account/dto/WandouResponse;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Letx;->a:Lcom/wandoujia/base/services/AlarmService$Callback;

    invoke-interface {v0}, Lcom/wandoujia/base/services/AlarmService$Callback;->onCompleted()V

    .line 53
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Letx;->a:Lcom/wandoujia/base/services/AlarmService$Callback;

    invoke-interface {v0}, Lcom/wandoujia/base/services/AlarmService$Callback;->onCompleted()V

    .line 43
    return-void
.end method
