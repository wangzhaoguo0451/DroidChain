.class public final Lcpa;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Landroid/content/pm/PackageInfo;

.field private synthetic b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageInfo;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1386
    iput-object p1, p0, Lcpa;->a:Landroid/content/pm/PackageInfo;

    iput-object p2, p0, Lcpa;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/Void;
    .locals 4

    .prologue
    .line 1390
    iget-object v0, p0, Lcpa;->a:Landroid/content/pm/PackageInfo;

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sget-object v0, Lham;->f:Lham;

    const-string v2, "app_md5"

    invoke-virtual {v0, v2}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/AppMd5Manager;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/AppMd5Manager;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1391
    iget-object v1, p0, Lcpa;->b:Ljava/util/Map;

    monitor-enter v1

    .line 1392
    :try_start_0
    iget-object v2, p0, Lcpa;->b:Ljava/util/Map;

    iget-object v3, p0, Lcpa;->a:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1393
    monitor-exit v1

    .line 1394
    const/4 v0, 0x0

    return-object v0

    .line 1393
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1386
    invoke-direct {p0}, Lcpa;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
