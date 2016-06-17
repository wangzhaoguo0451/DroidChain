.class public final Lcpr;
.super Ljava/lang/Object;
.source "AppManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/wandoujia/appmanager/LocalAppInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/wandoujia/appmanager/AppManager;


# direct methods
.method public constructor <init>(Lcom/wandoujia/appmanager/AppManager;[Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 660
    iput-object p1, p0, Lcpr;->a:Lcom/wandoujia/appmanager/AppManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 660
    iget-object v0, p0, Lcpr;->a:Lcom/wandoujia/appmanager/AppManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/wandoujia/appmanager/AppManager;->a(Lcom/wandoujia/appmanager/AppManager;Ljava/util/List;)V

    iget-object v0, p0, Lcpr;->a:Lcom/wandoujia/appmanager/AppManager;

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/AppManager;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
