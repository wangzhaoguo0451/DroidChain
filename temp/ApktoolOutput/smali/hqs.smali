.class public final Lhqs;
.super Ljava/lang/Object;
.source "Update.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/wandoujia/update/protocol/CheckUpdateProtocol;

.field private c:Lhqy;

.field private d:Lhra;

.field private e:J

.field private f:Ljava/io/File;

.field private g:Lcom/wandoujia/update/protocol/UpdateInfo;

.field private h:Z

.field private i:Lepb;

.field private j:J

.field private k:J

.field private l:Lepi;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, -0x1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhqs;->h:Z

    .line 46
    iput-wide v2, p0, Lhqs;->j:J

    .line 47
    iput-wide v2, p0, Lhqs;->k:J

    .line 134
    new-instance v0, Lhqu;

    invoke-direct {v0, p0}, Lhqu;-><init>(Lhqs;)V

    iput-object v0, p0, Lhqs;->l:Lepi;

    .line 66
    iput-object p1, p0, Lhqs;->a:Landroid/content/Context;

    .line 67
    iget-object v0, p0, Lhqs;->a:Landroid/content/Context;

    invoke-static {v0}, Ld;->y(Landroid/content/Context;)V

    .line 68
    new-instance v0, Lepb;

    iget-object v1, p0, Lhqs;->l:Lepi;

    invoke-direct {v0, p1, v1}, Lepb;-><init>(Landroid/content/Context;Lepi;)V

    iput-object v0, p0, Lhqs;->i:Lepb;

    .line 69
    return-void
.end method

.method static synthetic a(Lhqs;)J
    .locals 2
    .parameter

    .prologue
    .line 30
    iget-wide v0, p0, Lhqs;->k:J

    return-wide v0
.end method

.method static synthetic a(Lhqs;J)J
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30
    iput-wide p1, p0, Lhqs;->k:J

    return-wide p1
.end method

.method static synthetic a(Lhqs;Lcom/wandoujia/update/protocol/UpdateInfo;)Lcom/wandoujia/update/protocol/UpdateInfo;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lhqs;->g:Lcom/wandoujia/update/protocol/UpdateInfo;

    return-object p1
.end method

.method static synthetic a(Lhqs;Lcom/wandoujia/update/protocol/EventReportProtocol$EventType;Lcom/wandoujia/update/protocol/EventReportProtocol$EventStatus;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2, p3, p4}, Lhqs;->a(Lcom/wandoujia/update/protocol/EventReportProtocol$EventType;Lcom/wandoujia/update/protocol/EventReportProtocol$EventStatus;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lhqs;)Lepb;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lhqs;->i:Lepb;

    return-object v0
.end method

.method static synthetic c(Lhqs;)Lhra;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lhqs;->d:Lhra;

    return-object v0
.end method

.method static synthetic d(Lhqs;)J
    .locals 2
    .parameter

    .prologue
    .line 30
    iget-wide v0, p0, Lhqs;->j:J

    return-wide v0
.end method

.method static synthetic e(Lhqs;)Lhqy;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lhqs;->c:Lhqy;

    return-object v0
.end method

.method static synthetic f(Lhqs;)Lcom/wandoujia/update/protocol/UpdateInfo;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lhqs;->g:Lcom/wandoujia/update/protocol/UpdateInfo;

    return-object v0
.end method

.method static synthetic g(Lhqs;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lhqs;->f:Ljava/io/File;

    return-object v0
.end method

.method static synthetic h(Lhqs;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lhqs;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i(Lhqs;)Z
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-boolean v0, p0, Lhqs;->h:Z

    return v0
.end method

.method static synthetic j(Lhqs;)V
    .locals 4
    .parameter

    .prologue
    .line 30
    new-instance v0, Lhqz;

    invoke-direct {v0, p0}, Lhqz;-><init>(Lhqs;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lhqs;->f:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lhqz;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/update/protocol/CheckUpdateProtocol;Lhqy;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 73
    const-class v0, Lhqs;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "check update"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    sget-object v0, Ld;->k:Landroid/content/SharedPreferences;

    const-string v1, "key_first_check_update_date"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 75
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 77
    sget-object v2, Ld;->k:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "key_first_check_update_date"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 79
    :cond_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 81
    iput-wide v0, p1, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->installedDays:J

    .line 83
    iget-object v0, p0, Lhqs;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 85
    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->netType:Ljava/lang/String;

    .line 89
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->netSubtype:Ljava/lang/String;

    .line 93
    :cond_1
    iput-object p1, p0, Lhqs;->b:Lcom/wandoujia/update/protocol/CheckUpdateProtocol;

    .line 94
    iput-object p2, p0, Lhqs;->c:Lhqy;

    .line 96
    new-instance v0, Lcom/wandoujia/net/AsyncHttpRequest;

    const-string v1, "https://upgrade.wandoujia.com/upgrade"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/net/AsyncHttpRequest$Method;->POST:Lcom/wandoujia/net/AsyncHttpRequest$Method;

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/net/AsyncHttpRequest;-><init>(Landroid/net/Uri;Lcom/wandoujia/net/AsyncHttpRequest$Method;)V

    .line 98
    new-instance v1, Leqh;

    new-instance v2, Lcvo;

    invoke-direct {v2}, Lcvo;-><init>()V

    new-instance v3, Lhqt;

    invoke-direct {v3}, Lhqt;-><init>()V

    invoke-virtual {v3}, Lhqt;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcvo;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Leqh;-><init>(Ljava/lang/String;)V

    .line 102
    const-string v2, "application/json"

    iput-object v2, v1, Leqh;->a:Ljava/lang/String;

    .line 103
    iput-object v1, v0, Lcom/wandoujia/net/AsyncHttpRequest;->d:Leqh;

    .line 104
    iget-object v1, p0, Lhqs;->i:Lepb;

    invoke-virtual {v1, v0}, Lepb;->a(Lcom/wandoujia/net/AsyncHttpRequest;)J

    move-result-wide v0

    iput-wide v0, p0, Lhqs;->j:J

    .line 105
    return-void
.end method

.method final a(Lcom/wandoujia/update/protocol/EventReportProtocol$EventType;Lcom/wandoujia/update/protocol/EventReportProtocol$EventStatus;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 278
    new-instance v0, Lcom/wandoujia/update/protocol/EventReportProtocol;

    invoke-direct {v0}, Lcom/wandoujia/update/protocol/EventReportProtocol;-><init>()V

    iget-object v1, p0, Lhqs;->b:Lcom/wandoujia/update/protocol/CheckUpdateProtocol;

    iget-object v1, v1, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->udid:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/update/protocol/EventReportProtocol;->udid:Ljava/lang/String;

    iget-object v1, p0, Lhqs;->b:Lcom/wandoujia/update/protocol/CheckUpdateProtocol;

    iget-object v1, v1, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->appName:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/update/protocol/EventReportProtocol;->appName:Ljava/lang/String;

    iget-object v1, p0, Lhqs;->b:Lcom/wandoujia/update/protocol/CheckUpdateProtocol;

    iget-object v1, v1, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->versionName:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/update/protocol/EventReportProtocol;->versionName:Ljava/lang/String;

    iget-object v1, p0, Lhqs;->b:Lcom/wandoujia/update/protocol/CheckUpdateProtocol;

    iget v1, v1, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->versionCode:I

    iput v1, v0, Lcom/wandoujia/update/protocol/EventReportProtocol;->versionCode:I

    iget-object v1, p0, Lhqs;->b:Lcom/wandoujia/update/protocol/CheckUpdateProtocol;

    iget-object v1, v1, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->source:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/update/protocol/EventReportProtocol;->source:Ljava/lang/String;

    iget-object v1, p0, Lhqs;->b:Lcom/wandoujia/update/protocol/CheckUpdateProtocol;

    iget-object v1, v1, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->rom:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/update/protocol/EventReportProtocol;->rom:Ljava/lang/String;

    iget-object v1, p0, Lhqs;->b:Lcom/wandoujia/update/protocol/CheckUpdateProtocol;

    iget-object v1, v1, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->romVersion:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/update/protocol/EventReportProtocol;->romVersion:Ljava/lang/String;

    iput-object p1, v0, Lcom/wandoujia/update/protocol/EventReportProtocol;->eventType:Lcom/wandoujia/update/protocol/EventReportProtocol$EventType;

    iput-object p2, v0, Lcom/wandoujia/update/protocol/EventReportProtocol;->eventStatus:Lcom/wandoujia/update/protocol/EventReportProtocol$EventStatus;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/wandoujia/update/protocol/EventReportProtocol;->eventDateTime:J

    iget-object v1, p0, Lhqs;->g:Lcom/wandoujia/update/protocol/UpdateInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lhqs;->g:Lcom/wandoujia/update/protocol/UpdateInfo;

    invoke-virtual {v1}, Lcom/wandoujia/update/protocol/UpdateInfo;->getEkey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/update/protocol/EventReportProtocol;->ekey:Ljava/lang/String;

    .line 279
    :cond_0
    sget-object v1, Lcom/wandoujia/update/protocol/EventReportProtocol$EventType;->DOWNLOAD_COMPLETE:Lcom/wandoujia/update/protocol/EventReportProtocol$EventType;

    if-ne p1, v1, :cond_1

    .line 280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lhqs;->e:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/wandoujia/update/protocol/EventReportProtocol;->downloadTimeMS:J

    .line 282
    :cond_1
    iput-object p3, v0, Lcom/wandoujia/update/protocol/EventReportProtocol;->errorType:Ljava/lang/String;

    .line 283
    iput-object p4, v0, Lcom/wandoujia/update/protocol/EventReportProtocol;->errorInfo:Ljava/lang/String;

    .line 285
    new-instance v1, Lcom/wandoujia/net/AsyncHttpRequest;

    const-string v2, "https://upgrade.wandoujia.com/event"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/wandoujia/net/AsyncHttpRequest$Method;->POST:Lcom/wandoujia/net/AsyncHttpRequest$Method;

    invoke-direct {v1, v2, v3}, Lcom/wandoujia/net/AsyncHttpRequest;-><init>(Landroid/net/Uri;Lcom/wandoujia/net/AsyncHttpRequest$Method;)V

    .line 287
    new-instance v2, Leqh;

    new-instance v3, Lcvo;

    invoke-direct {v3}, Lcvo;-><init>()V

    new-instance v4, Lhqv;

    invoke-direct {v4}, Lhqv;-><init>()V

    invoke-virtual {v4}, Lhqv;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcvo;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Leqh;-><init>(Ljava/lang/String;)V

    .line 290
    const-string v0, "application/json"

    iput-object v0, v2, Leqh;->a:Ljava/lang/String;

    .line 291
    iput-object v2, v1, Lcom/wandoujia/net/AsyncHttpRequest;->d:Leqh;

    .line 292
    iget-object v0, p0, Lhqs;->i:Lepb;

    invoke-virtual {v0, v1}, Lepb;->a(Lcom/wandoujia/net/AsyncHttpRequest;)J

    .line 293
    return-void
.end method

.method public final a(Lcom/wandoujia/update/protocol/UpdateInfo;Lhra;Z)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 111
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/wandoujia/update/protocol/UpdateInfo;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/wandoujia/update/protocol/UpdateInfo;->hasNewVersion()Z

    move-result v1

    if-nez v1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v0

    .line 117
    :cond_1
    iput-object p1, p0, Lhqs;->g:Lcom/wandoujia/update/protocol/UpdateInfo;

    .line 118
    iput-boolean p3, p0, Lhqs;->h:Z

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lhqs;->e:J

    .line 120
    iput-object p2, p0, Lhqs;->d:Lhra;

    .line 121
    iget-object v1, p0, Lhqs;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/wandoujia/update/protocol/UpdateInfo;->getMd5()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-static {v1}, Ld;->z(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".apk"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lhqs;->f:Ljava/io/File;

    .line 122
    new-instance v1, Lhqx;

    invoke-direct {v1, p0}, Lhqx;-><init>(Lhqs;)V

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lhqx;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 123
    const/4 v0, 0x1

    goto :goto_0
.end method
