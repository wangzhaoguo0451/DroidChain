.class public final Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager;
.super Ljava/lang/Object;
.source "LocalFeedManager.java"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ldtb;",
            ">;>;"
        }
    .end annotation
.end field

.field public b:Landroid/os/Handler;

.field private c:Lcom/wandoujia/base/utils/Preferences;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager;->a:Ljava/util/List;

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager;->b:Landroid/os/Handler;

    .line 60
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager;->g()Lcom/wandoujia/base/utils/Preferences;

    move-result-object v0

    const-string v1, "key_closed_feeds"

    new-instance v2, Ldsz;

    invoke-direct {v2}, Ldsz;-><init>()V

    invoke-virtual {v2}, Ldsz;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/wandoujia/base/utils/Preferences;->getObject(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 103
    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 5

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager;->a()Ljava/util/Map;

    move-result-object v0

    .line 129
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 133
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0x3a

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()J
    .locals 4

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager;->g()Lcom/wandoujia/base/utils/Preferences;

    move-result-object v0

    const-string v1, "key_first_launch_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/wandoujia/base/utils/Preferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 152
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 153
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ldta;

    invoke-direct {v1, p0}, Ldta;-><init>(Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager;->e()V

    goto :goto_0
.end method

.method public final e()V
    .locals 3

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager;->f()I

    move-result v0

    .line 166
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager;->g()Lcom/wandoujia/base/utils/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/base/utils/Preferences;->edit()Lcom/wandoujia/base/utils/Preferences$CustomEditor;

    move-result-object v1

    const-string v2, "key_launch_times"

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/wandoujia/base/utils/Preferences$CustomEditor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 167
    return-void
.end method

.method public final f()I
    .locals 3

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager;->g()Lcom/wandoujia/base/utils/Preferences;

    move-result-object v0

    const-string v1, "key_launch_times"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/base/utils/Preferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final g()Lcom/wandoujia/base/utils/Preferences;
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager;->c:Lcom/wandoujia/base/utils/Preferences;

    if-nez v0, :cond_0

    .line 193
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_start_page"

    invoke-static {v0, v1}, Lcom/wandoujia/base/utils/Preferences;->getById(Landroid/content/Context;Ljava/lang/String;)Lcom/wandoujia/base/utils/Preferences;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager;->c:Lcom/wandoujia/base/utils/Preferences;

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager;->c:Lcom/wandoujia/base/utils/Preferences;

    return-object v0
.end method
