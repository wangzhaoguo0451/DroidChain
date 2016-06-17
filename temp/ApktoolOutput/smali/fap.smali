.class public final Lfap;
.super Ljava/lang/Object;
.source "BackgroundServiceSettingHelper.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lfap;->a:Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-static {}, Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;->values()[Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    #getter for: Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;->key:Ljava/lang/String;
    invoke-static {v0}, Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;->access$300(Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v1, v0

    .line 42
    :goto_1
    if-nez v1, :cond_2

    .line 64
    :goto_2
    return-void

    .line 41
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1

    .line 45
    :cond_2
    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 47
    iget-object v0, p0, Lfap;->a:Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper;

    iget-object v3, v0, Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper;->b:Ljava/util/Set;

    monitor-enter v3

    .line 48
    :try_start_0
    iget-object v0, p0, Lfap;->a:Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper;

    iget-object v0, v0, Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 50
    :cond_3
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 51
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldd;

    .line 52
    if-nez v0, :cond_3

    .line 53
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-string v3, "phoenix.intent.action.BACKGROUND_SERVICE_SETTING_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    const-string v3, "phoenix.intent.extra.SERVICE_TYPE"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 62
    const-string v1, "phoenix.intent.extra.SERVICE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 63
    iget-object v1, p0, Lfap;->a:Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper;

    iget-object v1, v1, Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2
.end method
