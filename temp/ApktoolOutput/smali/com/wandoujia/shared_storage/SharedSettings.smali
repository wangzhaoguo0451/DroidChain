.class public final Lcom/wandoujia/shared_storage/SharedSettings;
.super Lhpu;
.source "SharedSettings.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhpu",
        "<",
        "Lcom/wandoujia/shared_storage/SharedSettings$SettingLine;",
        ">;"
    }
.end annotation


# static fields
.field private static c:Lcom/wandoujia/shared_storage/SharedSettings;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lhpu;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/wandoujia/shared_storage/SharedSettings;
    .locals 2

    .prologue
    .line 16
    const-class v1, Lcom/wandoujia/shared_storage/SharedSettings;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/wandoujia/shared_storage/SharedSettings;->c:Lcom/wandoujia/shared_storage/SharedSettings;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/wandoujia/shared_storage/SharedSettings;

    invoke-direct {v0}, Lcom/wandoujia/shared_storage/SharedSettings;-><init>()V

    sput-object v0, Lcom/wandoujia/shared_storage/SharedSettings;->c:Lcom/wandoujia/shared_storage/SharedSettings;

    .line 19
    :cond_0
    sget-object v0, Lcom/wandoujia/shared_storage/SharedSettings;->c:Lcom/wandoujia/shared_storage/SharedSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 16
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/wandoujia/shared_storage/SharedSettings;->d(Ljava/lang/String;)Lcom/wandoujia/shared_storage/StorageLine;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/shared_storage/SharedSettings$SettingLine;

    .line 64
    :try_start_0
    invoke-virtual {v0}, Lcom/wandoujia/shared_storage/SharedSettings$SettingLine;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {v0}, Lcom/wandoujia/shared_storage/SharedSettings$SettingLine;->getValue()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 70
    :cond_0
    :goto_0
    return-object p2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 43
    new-instance v0, Lcom/wandoujia/shared_storage/SharedSettings$SettingLine;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/wandoujia/shared_storage/SharedSettings$SettingLine;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0, v0}, Lcom/wandoujia/shared_storage/SharedSettings;->a(Lcom/wandoujia/shared_storage/StorageLine;)V

    .line 45
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/wandoujia/shared_storage/SharedSettings;->d(Ljava/lang/String;)Lcom/wandoujia/shared_storage/StorageLine;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/shared_storage/SharedSettings$SettingLine;

    .line 36
    :try_start_0
    invoke-virtual {v0}, Lcom/wandoujia/shared_storage/SharedSettings$SettingLine;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 38
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string v0, "shared_settings"

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 75
    new-instance v0, Lcom/wandoujia/shared_storage/SharedSettings$SettingLine;

    invoke-direct {v0, p1, p2}, Lcom/wandoujia/shared_storage/SharedSettings$SettingLine;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, v0}, Lcom/wandoujia/shared_storage/SharedSettings;->a(Lcom/wandoujia/shared_storage/StorageLine;)V

    .line 77
    return-void
.end method

.method protected final c()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lhqc;

    invoke-direct {v0}, Lhqc;-><init>()V

    invoke-virtual {v0}, Lhqc;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method
