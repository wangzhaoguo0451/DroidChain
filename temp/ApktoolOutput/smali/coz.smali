.class public final Lcoz;
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
        "Landroid/content/pm/PackageInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter

    .prologue
    .line 1323
    iput-object p1, p0, Lcoz;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1323
    iget-object v0, p0, Lcoz;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/appmanager/AppManager;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
