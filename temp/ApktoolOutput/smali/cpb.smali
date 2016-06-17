.class public final Lcpb;
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
    .line 1411
    iput-object p1, p0, Lcpb;->a:Landroid/content/pm/PackageInfo;

    iput-object p2, p0, Lcpb;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/Void;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1416
    :try_start_0
    iget-object v0, p0, Lcpb;->a:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1423
    iget-object v1, p0, Lcpb;->b:Ljava/util/Map;

    monitor-enter v1

    .line 1424
    :try_start_1
    iget-object v2, p0, Lcpb;->b:Ljava/util/Map;

    iget-object v3, p0, Lcpb;->a:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1425
    monitor-exit v1

    .line 1426
    :goto_0
    return-object v4

    .line 1425
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1420
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1411
    invoke-direct {p0}, Lcpb;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
