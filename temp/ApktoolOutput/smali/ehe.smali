.class final Lehe;
.super Ljava/lang/Object;
.source "OnlineConfigController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Leha;


# direct methods
.method constructor <init>(Leha;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lehe;->a:Leha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lehe;->a:Leha;

    invoke-virtual {v0}, Leha;->c()Lcom/wandoujia/launcher_base/onlineconfig/OnlineConfigResult;

    .line 113
    return-void
.end method
