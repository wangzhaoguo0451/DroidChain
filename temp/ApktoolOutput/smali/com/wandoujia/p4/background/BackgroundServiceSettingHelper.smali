.class public final Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper;
.super Ljava/lang/Object;
.source "BackgroundServiceSettingHelper.java"


# static fields
.field private static c:Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ldd;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper;->b:Ljava/util/Set;

    .line 37
    new-instance v0, Lfap;

    invoke-direct {v0, p0}, Lfap;-><init>(Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper;)V

    .line 68
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper;->a:Landroid/content/Context;

    .line 69
    return-void
.end method

.method public static declared-synchronized a()Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper;
    .locals 2

    .prologue
    .line 72
    const-class v1, Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper;->c:Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper;

    invoke-direct {v0}, Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper;-><init>()V

    sput-object v0, Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper;->c:Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper;

    .line 75
    :cond_0
    sget-object v0, Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper;->c:Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;)V
    .locals 3
    .parameter

    .prologue
    .line 206
    iget-object v0, p0, Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper;->a:Landroid/content/Context;

    #getter for: Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;->key:Ljava/lang/String;
    invoke-static {p1}, Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;->access$300(Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 207
    :cond_0
    return-void
.end method
