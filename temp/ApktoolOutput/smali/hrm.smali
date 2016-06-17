.class public final Lhrm;
.super Ljava/lang/Object;
.source "UpdateUtils.java"


# static fields
.field private static a:I

.field private static b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/wandoujia/update/LocalUpdateService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, -0x1

    sput v0, Lhrm;->a:I

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/wandoujia/update/LocalUpdateService$UpdateParams;)Landroid/content/ComponentName;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 134
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lhrm;->b:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    const-string v1, "UPDATE_PARAMS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 136
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lcom/wandoujia/update/toolkit/SelfUpdateResult;
    .locals 3

    .prologue
    .line 140
    sget-object v0, Ld;->k:Landroid/content/SharedPreferences;

    const-string v1, "last_selfupdate_result"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    new-instance v1, Lcvo;

    invoke-direct {v1}, Lcvo;-><init>()V

    .line 142
    new-instance v2, Lhrn;

    invoke-direct {v2}, Lhrn;-><init>()V

    invoke-virtual {v2}, Lhrn;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcvo;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/update/toolkit/SelfUpdateResult;

    .line 144
    return-object v0
.end method

.method public static a(I)V
    .locals 0
    .parameter

    .prologue
    .line 77
    sput p0, Lhrm;->a:I

    .line 78
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Lcom/wandoujia/update/protocol/UpdateInfo;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 108
    invoke-static {p0, v0, p1, v0}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 109
    new-instance v0, Lbb;

    invoke-direct {v0, p0}, Lbb;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/wandoujia/update/protocol/UpdateInfo;->getUpdateTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbb;->a(Ljava/lang/CharSequence;)Lbb;

    move-result-object v0

    invoke-virtual {p2}, Lcom/wandoujia/update/protocol/UpdateInfo;->getUpdateSubTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbb;->b(Ljava/lang/CharSequence;)Lbb;

    move-result-object v2

    sget v0, Lhrm;->a:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    :goto_0
    invoke-virtual {v2, v0}, Lbb;->a(I)Lbb;

    move-result-object v2

    const/16 v0, 0x10

    invoke-virtual {v2, v0}, Lbb;->b(I)V

    iput-object v1, v2, Lbb;->d:Landroid/app/PendingIntent;

    .line 117
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 119
    const/16 v1, 0x64

    invoke-virtual {v2}, Lbb;->a()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 121
    invoke-virtual {p2}, Lcom/wandoujia/update/protocol/UpdateInfo;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhrm;->a(Ljava/lang/String;)V

    .line 122
    return-void

    .line 109
    :cond_0
    sget v0, Lhrm;->a:I

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Lcom/wandoujia/update/protocol/UpdateInfo;Z)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-virtual {p2}, Lcom/wandoujia/update/protocol/UpdateInfo;->getPriority()Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;

    move-result-object v0

    invoke-virtual {p2}, Lcom/wandoujia/update/protocol/UpdateInfo;->getVersion()Ljava/lang/String;

    move-result-object v2

    if-nez p3, :cond_0

    sget-object v3, Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;->NORMAL:Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;

    invoke-virtual {v0, v3}, Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    .line 103
    :goto_1
    return-void

    .line 84
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Ld;->G()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xf731400

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    invoke-static {}, Ld;->F()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 89
    :cond_2
    invoke-static {p0, v1, p1, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 90
    new-instance v0, Lbb;

    invoke-direct {v0, p0}, Lbb;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/wandoujia/update/protocol/UpdateInfo;->getUpdateTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbb;->a(Ljava/lang/CharSequence;)Lbb;

    move-result-object v0

    invoke-virtual {p2}, Lcom/wandoujia/update/protocol/UpdateInfo;->getUpdateSubTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbb;->b(Ljava/lang/CharSequence;)Lbb;

    move-result-object v2

    sget v0, Lhrm;->a:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    :goto_2
    invoke-virtual {v2, v0}, Lbb;->a(I)Lbb;

    move-result-object v2

    const/16 v0, 0x10

    invoke-virtual {v2, v0}, Lbb;->b(I)V

    iput-object v1, v2, Lbb;->d:Landroid/app/PendingIntent;

    .line 98
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 100
    const/16 v1, 0x64

    invoke-virtual {v2}, Lbb;->a()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 102
    invoke-virtual {p2}, Lcom/wandoujia/update/protocol/UpdateInfo;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhrm;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 90
    :cond_3
    sget v0, Lhrm;->a:I

    goto :goto_2
.end method

.method public static a(Lcom/wandoujia/update/toolkit/SelfUpdateResult;)V
    .locals 3
    .parameter

    .prologue
    .line 161
    new-instance v0, Lcvo;

    invoke-direct {v0}, Lcvo;-><init>()V

    .line 164
    new-instance v1, Lhro;

    invoke-direct {v1}, Lhro;-><init>()V

    invoke-virtual {v1}, Lhro;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcvo;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    .line 167
    sget-object v1, Ld;->k:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_selfupdate_result"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 168
    return-void
.end method

.method public static a(Ljava/lang/Class;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/wandoujia/update/LocalUpdateService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    sput-object p0, Lhrm;->b:Ljava/lang/Class;

    .line 32
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ld;->k:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "key_last_ignore_update_time"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 69
    sget-object v0, Ld;->k:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_last_ignore_update_version"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 70
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/ServiceConnection;Lcom/wandoujia/update/LocalUpdateService$UpdateParams;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lhrm;->b:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    const-string v1, "UPDATE_PARAMS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 129
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method

.method public static a(Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;Ljava/lang/String;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 37
    sget-object v1, Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;->NORMAL:Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;

    invoke-virtual {p0, v1}, Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v0

    .line 40
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Ld;->G()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 42
    const-wide/32 v4, 0xf731400

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    invoke-static {}, Ld;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b()Lcom/wandoujia/update/toolkit/SelfUpdateResult;
    .locals 3

    .prologue
    .line 148
    invoke-static {}, Lhrm;->a()Lcom/wandoujia/update/toolkit/SelfUpdateResult;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/wandoujia/update/toolkit/SelfUpdateResult;->updateInfo:Lcom/wandoujia/update/protocol/UpdateInfo;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/wandoujia/update/toolkit/SelfUpdateResult;->installerPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/wandoujia/update/toolkit/SelfUpdateResult;->updateInfo:Lcom/wandoujia/update/protocol/UpdateInfo;

    invoke-virtual {v1}, Lcom/wandoujia/update/protocol/UpdateInfo;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/wandoujia/update/toolkit/SelfUpdateResult;->updateInfo:Lcom/wandoujia/update/protocol/UpdateInfo;

    invoke-virtual {v1}, Lcom/wandoujia/update/protocol/UpdateInfo;->hasNewVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/wandoujia/update/toolkit/SelfUpdateResult;->installerPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 155
    :cond_0
    const/4 v0, 0x0

    .line 157
    :cond_1
    return-object v0
.end method
