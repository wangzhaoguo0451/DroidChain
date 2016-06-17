.class public final Ld;
.super Ljava/lang/Object;
.source "ActivityCompat21.java"

# interfaces
.implements Lwc;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CommitPrefEdits"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lwc",
        "<TTResult;",
        "Lwd",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static A:Landroid/content/SharedPreferences;

.field private static B:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static C:Landroid/content/pm/PackageManager;

.field private static D:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/AbsListView;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Ljava/lang/reflect/Method;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/util/concurrent/ScheduledExecutorService;

.field public static e:Landroid/content/Context;

.field public static f:Lcmm;

.field public static g:Lcqj;

.field public static h:Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;

.field public static i:Z

.field public static j:Lall;

.field public static k:Landroid/content/SharedPreferences;

.field private static l:Ljava/lang/reflect/Field;

.field private static m:Z

.field private static n:Ljava/lang/reflect/Field;

.field private static o:Z

.field private static p:Lacw;

.field private static q:Landroid/os/CountDownTimer;

.field private static r:Ldyp;

.field private static s:I

.field private static t:Ljava/lang/String;

.field private static u:Ljava/lang/String;

.field private static v:Landroid/content/SharedPreferences;

.field private static w:Landroid/content/SharedPreferences;

.field private static x:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lemw;",
            ">;"
        }
    .end annotation
.end field

.field private static y:Lcom/wandoujia/base/utils/Preferences;

.field private static z:Lhrx;


# instance fields
.field a:Lbt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lbt;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    invoke-direct {p0}, Ld;-><init>()V

    .line 223
    iput-object p1, p0, Ld;->a:Lbt;

    .line 224
    return-void
.end method

.method public static A(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 23
    const-string v0, "Clean"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/wandoujia/base/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    return-void
.end method

.method public static A()Z
    .locals 3

    .prologue
    .line 188
    invoke-static {}, Ld;->x()Lcom/wandoujia/base/utils/Preferences;

    move-result-object v0

    const-string v1, "key_remind_upgrade"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/base/utils/Preferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static A(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized B()Lhrx;
    .locals 2

    .prologue
    .line 16
    const-class v1, Ld;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ld;->z:Lhrx;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lhrx;

    invoke-direct {v0}, Lhrx;-><init>()V

    sput-object v0, Ld;->z:Lhrx;

    .line 19
    :cond_0
    sget-object v0, Ld;->z:Lhrx;
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

.method public static B(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/wandoujia/base/utils/CipherUtil;->getAESKey(Landroid/content/Context;)[B

    move-result-object v1

    invoke-static {p0, v1}, Lcom/wandoujia/base/utils/CipherUtil;->encrypt(Ljava/lang/String;[B)[B

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lcom/wandoujia/base/utils/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 35
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static C(Ljava/lang/String;)Lcom/wandoujia/game_launcher/models/GameRecommendModel;
    .locals 3
    .parameter

    .prologue
    .line 41
    new-instance v0, Ldyr;

    invoke-direct {v0}, Ldyr;-><init>()V

    .line 43
    :try_start_0
    invoke-static {}, Ld;->J()Ldyp;

    move-result-object v1

    iput-object p0, v0, Ldyr;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ldyr;->build()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    const-class v2, Lcom/wandoujia/game_launcher/models/GameRecommendModel;

    invoke-virtual {v1, v0, v2}, Ldyp;->a(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/game_launcher/models/GameRecommendModel;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static C()V
    .locals 3

    .prologue
    .line 21
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e028a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 25
    return-void
.end method

.method public static D(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 60
    :goto_0
    return-object v0

    .line 57
    :cond_0
    :try_start_0
    new-instance v0, Lcvo;

    invoke-direct {v0}, Lcvo;-><init>()V

    new-instance v2, Lcux;

    invoke-direct {v2}, Lcux;-><init>()V

    invoke-virtual {v2}, Lcux;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lcvo;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static D()V
    .locals 4

    .prologue
    .line 35
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e04dd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Ldxa;->b:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ldxa;->a(Landroid/content/Context;Ljava/lang/String;J)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    .line 39
    return-void
.end method

.method public static E(Ljava/lang/String;)J
    .locals 3
    .parameter

    .prologue
    .line 131
    const/4 v0, 0x0

    .line 133
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 135
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 136
    :try_start_1
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 137
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v0

    int-to-long v0, v0

    .line 141
    if-eqz v2, :cond_0

    .line 143
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 149
    :cond_0
    :goto_0
    return-wide v0

    .line 139
    :catch_0
    move-exception v1

    :goto_1
    if-eqz v0, :cond_1

    .line 143
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 149
    :cond_1
    :goto_2
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    if-eqz v2, :cond_2

    .line 143
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 145
    :cond_2
    :goto_4
    throw v0

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_4

    .line 141
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 139
    :catch_4
    move-exception v0

    move-object v0, v2

    goto :goto_1
.end method

.method public static declared-synchronized E()Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 17
    const-class v1, Ld;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ld;->A:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 18
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Ld;->A:Landroid/content/SharedPreferences;

    .line 21
    :cond_0
    sget-object v0, Ld;->A:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 17
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static F()Ljava/lang/String;
    .locals 3

    .prologue
    .line 36
    sget-object v0, Ld;->k:Landroid/content/SharedPreferences;

    const-string v1, "key_last_ignore_update_version"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static F(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 86
    if-eqz p0, :cond_0

    const-string v0, "offline://hack?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static G()J
    .locals 4

    .prologue
    .line 44
    sget-object v0, Ld;->k:Landroid/content/SharedPreferences;

    const-string v1, "key_last_ignore_update_time"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static G(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 90
    invoke-static {p0}, Ld;->F(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "url="

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 92
    if-gez v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-object p0

    .line 95
    :cond_1
    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static H()Lhvs;
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lhwi;

    invoke-direct {v0}, Lhwi;-><init>()V

    return-object v0
.end method

.method public static H(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "http://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "https://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static I(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 110
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    const-string p0, ""

    .line 113
    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://apis.wandoujia.com"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static I()Ljava/net/InetAddress;
    .locals 4

    .prologue
    .line 36
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 37
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 38
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 39
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 40
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    .line 46
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_2
    invoke-static {}, Ld;->M()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0
.end method

.method private static declared-synchronized J()Ldyp;
    .locals 3

    .prologue
    .line 29
    const-class v1, Ld;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ld;->r:Ldyp;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Ldyp;

    invoke-static {}, Legx;->d()Lcom/wandoujia/rpc/http/client/DataApi;

    move-result-object v2

    invoke-direct {v0, v2}, Ldyp;-><init>(Lcom/wandoujia/rpc/http/client/DataApi;)V

    sput-object v0, Ld;->r:Ldyp;

    .line 32
    :cond_0
    sget-object v0, Ld;->r:Ldyp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static J(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 31
    if-eqz p0, :cond_0

    const-string v0, "fake_video_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static declared-synchronized K()Landroid/content/SharedPreferences;
    .locals 4

    .prologue
    .line 40
    const-class v1, Ld;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ld;->w:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 41
    const-string v0, "com.wandoujia.phoenix2.config"

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Ld;->w:Landroid/content/SharedPreferences;

    .line 43
    :cond_0
    sget-object v0, Ld;->w:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static K(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 54
    sget-object v0, Lham;->f:Lham;

    const-string v1, "app"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/AppManager;

    invoke-virtual {v0, p0}, Lcom/wandoujia/appmanager/AppManager;->f(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static L()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Ld;->C:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    .line 47
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-object v0, Ld;->C:Landroid/content/pm/PackageManager;

    .line 49
    :cond_0
    sget-object v0, Ld;->C:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method public static L(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Lcvo;

    invoke-direct {v0}, Lcvo;-><init>()V

    .line 69
    new-instance v1, Ldwl;

    invoke-direct {v1}, Ldwl;-><init>()V

    invoke-virtual {v1}, Ldwl;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 70
    invoke-virtual {v0, p0, v1}, Lcvo;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method private static M()Ljava/net/InetAddress;
    .locals 6

    .prologue
    .line 50
    new-instance v0, Ljava/net/InetSocketAddress;

    const-string v1, "www.google.com"

    const/16 v2, 0x50

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 52
    const/4 v2, 0x0

    .line 54
    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->connect(Ljava/net/SocketAddress;)V

    .line 56
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 62
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 63
    :cond_0
    :goto_0
    return-object v0

    .line 58
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 59
    :goto_1
    :try_start_2
    const-string v2, "NetworkUtils"

    const-string v3, "Exception getting address"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/wandoujia/base/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 62
    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_1

    .line 63
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    :cond_1
    throw v0

    .line 62
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 58
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static M(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 20
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Ld;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 23
    :cond_0
    return-void
.end method

.method public static N(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 54
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Ld;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    :try_start_0
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Ld;->i(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 63
    :cond_0
    :goto_0
    return-object v0

    .line 58
    :catch_0
    move-exception v1

    invoke-static {p0}, Ld;->M(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :catch_1
    move-exception v1

    invoke-static {p0}, Ld;->M(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static O(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 62
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 63
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/wandoujia/game_launcher/lib/R$string;->date_day:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 67
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method public static P(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 52
    invoke-static {}, Ld;->K()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Q(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 63
    invoke-static {p0}, Ld;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    :goto_0
    return v0

    .line 68
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static R(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 98
    invoke-static {p0}, Ld;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    :goto_0
    return v0

    .line 103
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static S(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 25
    invoke-static {}, Lema;->a()Lema;

    move-result-object v0

    invoke-virtual {v0, p0}, Lema;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lemb;

    .line 29
    const/4 v3, 0x2

    iget v4, v0, Lemb;->a:I

    if-ne v3, v4, :cond_0

    iget-object v0, v0, Lemb;->c:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lemb;->b:Ljava/lang/String;

    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static T(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 43
    invoke-static {}, Lema;->a()Lema;

    move-result-object v0

    invoke-virtual {v0, p0}, Lema;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lemb;

    .line 49
    const/4 v3, 0x2

    iget v4, v0, Lemb;->a:I

    if-ne v3, v4, :cond_1

    .line 50
    iget-object v3, v0, Lemb;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lemb;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 51
    iget-object v0, v0, Lemb;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, v0, Lemb;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 56
    :cond_1
    iget-object v0, v0, Lemb;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static U(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".wdt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static V(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    .line 8
    const/4 v1, 0x0

    .line 11
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 13
    const-string v2, ""

    const/4 v0, 0x0

    move v7, v0

    move-object v0, v2

    move v2, v7

    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-byte v4, v3, v2

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "0"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 15
    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method

.method public static W(Ljava/lang/String;)J
    .locals 2
    .parameter

    .prologue
    .line 27
    invoke-static {p0}, Lcom/wandoujia/base/utils/FileUtil;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 31
    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static X(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 43
    invoke-static {p0}, Lcom/wandoujia/base/utils/FileUtil;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 46
    if-ltz v1, :cond_0

    .line 47
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 52
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static Y(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    move v0, v2

    :goto_0
    if-ltz v1, :cond_2

    .line 64
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5f

    if-ne v3, v4, :cond_0

    .line 65
    if-ne v0, v2, :cond_1

    move v0, v1

    .line 63
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 68
    :cond_1
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 72
    :cond_2
    return-object p0
.end method

.method public static Z(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 82
    invoke-static {p0}, Ld;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {v0}, Ld;->ax(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(FFFF)F
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    sub-float v0, p0, p2

    .line 39
    sub-float v1, p1, p3

    .line 40
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static a(IIII)F
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    sub-int v0, p0, p2

    .line 45
    sub-int v1, p1, p3

    .line 46
    mul-int/2addr v0, v0

    mul-int/2addr v1, v1

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static a(F)I
    .locals 1
    .parameter

    .prologue
    .line 34
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    const/high16 v0, -0x4100

    :goto_0
    add-float/2addr v0, p0

    float-to-int v0, v0

    return v0

    :cond_0
    const/high16 v0, 0x3f00

    goto :goto_0
.end method

.method public static a(FLandroid/content/Context;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 31
    mul-float/2addr v0, p0

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static a(II)I
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 36
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 37
    rsub-int v2, v0, 0xff

    rsub-int v3, v1, 0xff

    mul-int/2addr v2, v3

    div-int/lit16 v2, v2, 0xff

    rsub-int v2, v2, 0xff

    .line 39
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v3, v1, v4, v0, v2}, Ld;->a(IIIII)I

    move-result v3

    .line 41
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v4, v1, v5, v0, v2}, Ld;->a(IIIII)I

    move-result v4

    .line 43
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v5, v1, v6, v0, v2}, Ld;->a(IIIII)I

    move-result v0

    .line 46
    invoke-static {v2, v3, v4, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private static a(IIIII)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    if-nez p4, :cond_0

    const/4 v0, 0x0

    .line 55
    :goto_0
    return v0

    :cond_0
    mul-int/lit16 v0, p0, 0xff

    mul-int/2addr v0, p1

    mul-int v1, p2, p3

    rsub-int v2, p1, 0xff

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    mul-int/lit16 v1, p4, 0xff

    div-int/2addr v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/app/ActivityManager;)I
    .locals 1
    .parameter

    .prologue
    .line 249
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;F)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static a(Landroid/graphics/Bitmap;)I
    .locals 1
    .parameter

    .prologue
    .line 274
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    return v0
.end method

.method public static a(Landroid/os/Parcel;)I
    .locals 5

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {p0, v0}, Ld;->a(Landroid/os/Parcel;I)I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    const v3, 0xffff

    and-int/2addr v3, v0

    const/16 v4, 0x4f45

    if-eq v3, v4, :cond_0

    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected object header. Got 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v1

    :cond_0
    add-int v0, v2, v1

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    if-le v0, v1, :cond_2

    :cond_1
    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Size read is invalid start="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v1

    :cond_2
    return v0
.end method

.method public static a(Landroid/os/Parcel;I)I
    .locals 2

    const/high16 v1, -0x1

    and-int v0, p1, v1

    if-eq v0, v1, :cond_0

    shr-int/lit8 v0, p1, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    goto :goto_0
.end method

.method public static a(Landroid/widget/GridView;)I
    .locals 3
    .parameter

    .prologue
    .line 31
    :try_start_0
    const-class v0, Landroid/widget/GridView;

    const-string v1, "mColumnWidth"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 32
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 38
    :goto_0
    return v0

    .line 35
    :catch_0
    move-exception v0

    const-string v0, "ugc"

    const-string v1, "unable to get ColumnWidth"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    const/high16 v0, 0x42a0

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lj;->a(FLandroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method public static a(Lcfz;Lorg/json/JSONObject;)I
    .locals 6

    const/4 v1, 0x0

    const-string v0, "rules"

    invoke-static {p1, v0}, Lccx;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcfz;->o:Lorg/json/JSONArray;

    const-string v0, "entrust_rules"

    invoke-static {p1, v0}, Lccx;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcfz;->s:Lorg/json/JSONArray;

    const-string v0, "pre_cmd"

    invoke-static {p1, v0}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcfz;->t:Ljava/lang/String;

    const-string v0, "title"

    invoke-static {p1, v0}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcfz;->p:Ljava/lang/String;

    const-string v0, "rules_button"

    invoke-static {p1, v0}, Lccx;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcfz;->r:Lorg/json/JSONObject;

    const-string v0, "service_checkbox"

    invoke-static {p1, v0}, Lccx;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcfz;->U:Lorg/json/JSONObject;

    const-string v0, "bind_card_checkbox"

    invoke-static {p1, v0}, Lccx;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcfz;->V:Lorg/json/JSONObject;

    const-string v0, "timeout_msg"

    invoke-static {p1, v0}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcfz;->T:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcfz;->g:Ljava/util/HashMap;

    const-string v0, "f55"

    invoke-static {p1, v0}, Lccx;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v0, "order_amount"

    invoke-static {v2, v0}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcfz;->g:Ljava/util/HashMap;

    const-string v4, "trans_amt"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    :goto_0
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "order_currency"

    invoke-static {v2, v0}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcfz;->g:Ljava/util/HashMap;

    const-string v4, "trans currcy code"

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    :goto_1
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "trans_type"

    invoke-static {v2, v0}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcfz;->g:Ljava/util/HashMap;

    const-string v4, "trans_type"

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    :goto_2
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mer_name"

    invoke-static {v2, v0}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcfz;->g:Ljava/util/HashMap;

    const-string v3, "mer_name"

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6

    :goto_3
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pan"

    invoke-static {p1, v0}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcfz;->aa:Ljava/lang/String;

    const-string v0, "fail_continue"

    invoke-static {p1, v0}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcfz;->u:Z

    :cond_0
    iget-object v0, p0, Lcfz;->o:Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcfz;->o:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_7

    :cond_1
    iget-object v0, p0, Lcfz;->s:Lorg/json/JSONArray;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcfz;->s:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_7

    :cond_2
    const/4 v0, 0x2

    :goto_4
    return v0

    :cond_3
    const-string v0, "000000000000"

    goto :goto_0

    :cond_4
    const-string v0, "0156"

    goto :goto_1

    :cond_5
    const-string v0, "00"

    goto :goto_2

    :cond_6
    const-string v0, ""

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_4
.end method

.method public static a(Lcfz;Lorg/json/JSONObject;Z)I
    .locals 1

    if-nez p2, :cond_0

    iput-object p1, p0, Lcfz;->v:Lorg/json/JSONObject;

    :cond_0
    invoke-static {p0, p1}, Ld;->a(Lcfz;Lorg/json/JSONObject;)I

    move-result v0

    return v0
.end method

.method public static a(Lcht;Ljava/lang/String;)I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, -0x1

    :try_start_0
    iget-object v3, p0, Lcht;->a:Ljava/util/Vector;

    move v2, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchs;

    new-instance v4, Ljava/lang/String;

    iget-object v5, v0, Lchs;->b:[B

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v0, v0, Lchs;->d:[B

    const/4 v2, 0x0

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    const/4 v3, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const/4 v3, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    const/4 v3, 0x3

    aget-byte v0, v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x0

    or-int/2addr v0, v2

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1
.end method

.method public static a(Leqw;Lcom/wandoujia/ripple_framework/model/Model;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 73
    const/4 v0, -0x1

    .line 74
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Leqw;->c()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    invoke-virtual {p0}, Leqw;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 77
    :cond_0
    return v0
.end method

.method public static a(Ljava/io/InputStream;IZ)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 30
    move v1, v0

    .line 31
    :goto_0
    if-ge v1, p1, :cond_2

    .line 32
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 33
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 34
    new-instance v0, Ljava/io/IOException;

    const-string v1, "no more bytes"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    if-eqz p2, :cond_1

    .line 37
    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v1, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 31
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    :cond_1
    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    goto :goto_1

    .line 42
    :cond_2
    return v0
.end method

.method public static a(Ljava/io/InputStream;[BI)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-static {p0}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    if-gez p2, :cond_0

    .line 98
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "len is negative"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    const/4 v0, 0x0

    .line 101
    :goto_0
    if-ge v0, p2, :cond_1

    .line 102
    add-int/lit8 v1, v0, 0x0

    sub-int v2, p2, v0

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 103
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 104
    add-int/2addr v0, v1

    .line 107
    goto :goto_0

    .line 108
    :cond_1
    return v0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 28
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 31
    :cond_0
    return p1
.end method

.method public static a(Luv;Lub;Landroid/view/View;Landroid/view/View;Luo;Z)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-virtual {p4}, Luo;->l()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Luv;->a()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 65
    :cond_0
    const/4 v0, 0x0

    .line 72
    :goto_0
    return v0

    .line 67
    :cond_1
    if-nez p5, :cond_2

    .line 68
    invoke-static {p2}, Luo;->a(Landroid/view/View;)I

    move-result v0

    invoke-static {p3}, Luo;->a(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {p1, p3}, Lub;->b(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1, p2}, Lub;->a(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 72
    invoke-virtual {p1}, Lub;->e()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public static a(Luv;Lub;Landroid/view/View;Landroid/view/View;Luo;ZZ)I
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p4}, Luo;->l()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Luv;->a()I

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v0

    .line 36
    :cond_1
    invoke-static {p2}, Luo;->a(Landroid/view/View;)I

    move-result v1

    invoke-static {p3}, Luo;->a(Landroid/view/View;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 38
    invoke-static {p2}, Luo;->a(Landroid/view/View;)I

    move-result v2

    invoke-static {p3}, Luo;->a(Landroid/view/View;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 40
    if-eqz p6, :cond_2

    invoke-virtual {p0}, Luv;->a()I

    move-result v1

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 43
    :goto_1
    if-eqz p5, :cond_0

    .line 46
    invoke-virtual {p1, p3}, Lub;->b(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p1, p2}, Lub;->a(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 48
    invoke-static {p2}, Luo;->a(Landroid/view/View;)I

    move-result v2

    invoke-static {p3}, Luo;->a(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 50
    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 52
    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Lub;->b()I

    move-result v1

    invoke-virtual {p1, p2}, Lub;->a(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 40
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1
.end method

.method public static a([IIZ)I
    .locals 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 67
    array-length v10, p0

    .line 69
    array-length v4, p0

    move v2, v7

    move v0, v7

    :goto_0
    if-ge v2, v4, :cond_0

    aget v3, p0, v2

    .line 70
    add-int/2addr v3, v0

    .line 69
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_0

    :cond_0
    move v8, v7

    move v2, v7

    move v9, v0

    move v0, v7

    .line 74
    :goto_1
    add-int/lit8 v3, v10, -0x1

    if-ge v8, v3, :cond_6

    .line 76
    shl-int v3, v1, v8

    or-int/2addr v0, v3

    move v3, v2

    move v2, v0

    move v0, v1

    .line 77
    :goto_2
    aget v4, p0, v8

    if-ge v0, v4, :cond_5

    .line 79
    sub-int v4, v9, v0

    add-int/lit8 v4, v4, -0x1

    sub-int v5, v10, v8

    add-int/lit8 v5, v5, -0x2

    invoke-static {v4, v5}, Ld;->d(II)I

    move-result v4

    .line 80
    if-eqz p2, :cond_1

    if-nez v2, :cond_1

    sub-int v5, v9, v0

    sub-int v6, v10, v8

    add-int/lit8 v6, v6, -0x1

    sub-int/2addr v5, v6

    sub-int v6, v10, v8

    add-int/lit8 v6, v6, -0x1

    if-lt v5, v6, :cond_1

    .line 82
    sub-int v5, v9, v0

    sub-int v6, v10, v8

    sub-int/2addr v5, v6

    sub-int v6, v10, v8

    add-int/lit8 v6, v6, -0x2

    invoke-static {v5, v6}, Ld;->d(II)I

    move-result v5

    sub-int/2addr v4, v5

    .line 85
    :cond_1
    sub-int v5, v10, v8

    add-int/lit8 v5, v5, -0x1

    if-le v5, v1, :cond_4

    .line 87
    sub-int v5, v9, v0

    sub-int v6, v10, v8

    add-int/lit8 v6, v6, -0x2

    sub-int/2addr v5, v6

    move v6, v7

    .line 88
    :goto_3
    if-le v5, p1, :cond_2

    .line 89
    sub-int v11, v9, v0

    sub-int/2addr v11, v5

    add-int/lit8 v11, v11, -0x1

    sub-int v12, v10, v8

    add-int/lit8 v12, v12, -0x3

    invoke-static {v11, v12}, Ld;->d(II)I

    move-result v11

    add-int/2addr v6, v11

    .line 88
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 92
    :cond_2
    add-int/lit8 v5, v10, -0x1

    sub-int/2addr v5, v8

    mul-int/2addr v5, v6

    sub-int/2addr v4, v5

    .line 96
    :cond_3
    :goto_4
    add-int/2addr v3, v4

    .line 78
    add-int/lit8 v0, v0, 0x1

    shl-int v4, v1, v8

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v2, v4

    goto :goto_2

    .line 93
    :cond_4
    sub-int v5, v9, v0

    if-le v5, p1, :cond_3

    .line 94
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 98
    :cond_5
    sub-int v4, v9, v0

    .line 74
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    move v9, v4

    move v0, v2

    move v2, v3

    goto :goto_1

    .line 100
    :cond_6
    return v2
.end method

.method public static a(J[BII)J
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    if-nez p2, :cond_0

    .line 60
    const-wide/16 v0, 0x1

    .line 114
    :goto_0
    return-wide v0

    .line 63
    :cond_0
    const-wide/32 v0, 0xffff

    and-long v2, p0, v0

    .line 64
    const/16 v0, 0x10

    shr-long v0, p0, v0

    const-wide/32 v4, 0xffff

    and-long/2addr v0, v4

    move-wide v4, v2

    move-wide v2, v0

    move/from16 v1, p4

    .line 67
    :goto_1
    if-lez v1, :cond_3

    .line 68
    const/16 v0, 0x15b0

    if-ge v1, v0, :cond_1

    move v0, v1

    .line 69
    :goto_2
    sub-int p4, v1, v0

    move-wide v10, v2

    move-wide v2, v4

    move v4, p3

    move v5, v0

    move-wide v0, v10

    .line 70
    :goto_3
    const/16 v6, 0x10

    if-lt v5, v6, :cond_2

    .line 71
    add-int/lit8 v6, v4, 0x1

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v8, v4

    add-long/2addr v2, v8

    .line 72
    add-long/2addr v0, v2

    .line 73
    add-int/lit8 v4, v6, 0x1

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v2, v6

    .line 74
    add-long/2addr v0, v2

    .line 75
    add-int/lit8 v6, v4, 0x1

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v8, v4

    add-long/2addr v2, v8

    .line 76
    add-long/2addr v0, v2

    .line 77
    add-int/lit8 v4, v6, 0x1

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v2, v6

    .line 78
    add-long/2addr v0, v2

    .line 79
    add-int/lit8 v6, v4, 0x1

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v8, v4

    add-long/2addr v2, v8

    .line 80
    add-long/2addr v0, v2

    .line 81
    add-int/lit8 v4, v6, 0x1

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v2, v6

    .line 82
    add-long/2addr v0, v2

    .line 83
    add-int/lit8 v6, v4, 0x1

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v8, v4

    add-long/2addr v2, v8

    .line 84
    add-long/2addr v0, v2

    .line 85
    add-int/lit8 v4, v6, 0x1

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v2, v6

    .line 86
    add-long/2addr v0, v2

    .line 87
    add-int/lit8 v6, v4, 0x1

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v8, v4

    add-long/2addr v2, v8

    .line 88
    add-long/2addr v0, v2

    .line 89
    add-int/lit8 v4, v6, 0x1

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v2, v6

    .line 90
    add-long/2addr v0, v2

    .line 91
    add-int/lit8 v6, v4, 0x1

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v8, v4

    add-long/2addr v2, v8

    .line 92
    add-long/2addr v0, v2

    .line 93
    add-int/lit8 v4, v6, 0x1

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v2, v6

    .line 94
    add-long/2addr v0, v2

    .line 95
    add-int/lit8 v6, v4, 0x1

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v8, v4

    add-long/2addr v2, v8

    .line 96
    add-long/2addr v0, v2

    .line 97
    add-int/lit8 v4, v6, 0x1

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v2, v6

    .line 98
    add-long/2addr v0, v2

    .line 99
    add-int/lit8 v6, v4, 0x1

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v8, v4

    add-long/2addr v2, v8

    .line 100
    add-long/2addr v0, v2

    .line 101
    add-int/lit8 v4, v6, 0x1

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v2, v6

    .line 102
    add-long/2addr v0, v2

    .line 103
    add-int/lit8 v5, v5, -0x10

    goto/16 :goto_3

    .line 68
    :cond_1
    const/16 v0, 0x15b0

    goto/16 :goto_2

    .line 105
    :cond_2
    if-eqz v5, :cond_5

    move v6, v5

    .line 107
    :goto_4
    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v8, v4

    add-long/2addr v2, v8

    .line 108
    add-long/2addr v0, v2

    .line 109
    add-int/lit8 v4, v6, -0x1

    if-nez v4, :cond_4

    .line 111
    :goto_5
    const-wide/32 v6, 0xfff1

    rem-long/2addr v2, v6

    .line 112
    const-wide/32 v6, 0xfff1

    rem-long/2addr v0, v6

    move p3, v5

    move-wide v4, v2

    move-wide v2, v0

    move/from16 v1, p4

    goto/16 :goto_1

    .line 114
    :cond_3
    const/16 v0, 0x10

    shl-long v0, v2, v0

    or-long/2addr v0, v4

    goto/16 :goto_0

    :cond_4
    move v6, v4

    move v4, v5

    goto :goto_4

    :cond_5
    move v5, v4

    goto :goto_5
.end method

.method public static a(Ljava/io/InputStream;J)J
    .locals 9
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    .line 65
    invoke-static {p0}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    cmp-long v0, p1, v6

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ld;->a(Z)V

    move-wide v0, p1

    .line 69
    :goto_1
    cmp-long v2, v0, v6

    if-lez v2, :cond_3

    .line 70
    invoke-virtual {p0, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 71
    cmp-long v4, v2, v6

    if-lez v4, :cond_1

    .line 72
    sub-long/2addr v0, v2

    .line 73
    goto :goto_1

    .line 66
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 77
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 78
    goto :goto_1

    .line 80
    :cond_2
    sub-long/2addr p1, v0

    .line 83
    :cond_3
    return-wide p1
.end method

.method public static a(Lagp;)Lagi;
    .locals 15
    .parameter

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 42
    iget-object v14, p0, Lagp;->b:Ljava/util/Map;

    .line 50
    const-string v0, "Date"

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 54
    if-eqz v0, :cond_a

    .line 55
    invoke-static {v0}, Ld;->k(Ljava/lang/String;)J

    move-result-wide v0

    move-wide v2, v0

    .line 58
    :goto_0
    const-string v0, "Cache-Control"

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    if-eqz v0, :cond_9

    .line 60
    const/4 v1, 0x1

    .line 61
    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move v0, v6

    move-wide v6, v4

    .line 62
    :goto_1
    array-length v9, v8

    if-ge v0, v9, :cond_5

    .line 63
    aget-object v9, v8, v0

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 64
    const-string v10, "no-cache"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "no-store"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 65
    :cond_0
    const/4 v0, 0x0

    .line 101
    :goto_2
    return-object v0

    .line 66
    :cond_1
    const-string v10, "max-age="

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 68
    const/16 v10, 0x8

    :try_start_0
    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 62
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 71
    :cond_3
    const-string v10, "must-revalidate"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "proxy-revalidate"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_4
    move-wide v6, v4

    .line 72
    goto :goto_3

    :cond_5
    move-wide v8, v6

    move v6, v1

    .line 77
    :goto_4
    const-string v0, "Expires"

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 78
    if-eqz v0, :cond_8

    .line 79
    invoke-static {v0}, Ld;->k(Ljava/lang/String;)J

    move-result-wide v0

    move-wide v10, v0

    .line 82
    :goto_5
    const-string v0, "ETag"

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 86
    if-eqz v6, :cond_7

    .line 87
    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v8

    add-long/2addr v4, v12

    .line 93
    :cond_6
    :goto_6
    new-instance v1, Lagi;

    invoke-direct {v1}, Lagi;-><init>()V

    .line 94
    iget-object v6, p0, Lagp;->a:[B

    iput-object v6, v1, Lagi;->a:[B

    .line 95
    iput-object v0, v1, Lagi;->b:Ljava/lang/String;

    .line 96
    iput-wide v4, v1, Lagi;->e:J

    .line 97
    iget-wide v4, v1, Lagi;->e:J

    iput-wide v4, v1, Lagi;->d:J

    .line 98
    iput-wide v2, v1, Lagi;->c:J

    .line 99
    iput-object v14, v1, Lagi;->f:Ljava/util/Map;

    move-object v0, v1

    .line 101
    goto :goto_2

    .line 88
    :cond_7
    cmp-long v1, v2, v4

    if-lez v1, :cond_6

    cmp-long v1, v10, v2

    if-ltz v1, :cond_6

    .line 90
    sub-long v4, v10, v2

    add-long/2addr v4, v12

    goto :goto_6

    .line 70
    :catch_0
    move-exception v9

    goto :goto_3

    :cond_8
    move-wide v10, v4

    goto :goto_5

    :cond_9
    move-wide v8, v4

    goto :goto_4

    :cond_a
    move-wide v2, v4

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Lahh;)Lagr;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 43
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v2, "volley"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 45
    const-string v0, "volley/0"

    .line 47
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 50
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 55
    :goto_0
    if-nez p1, :cond_0

    .line 56
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_1

    .line 57
    new-instance p1, Lahi;

    invoke-direct {p1}, Lahi;-><init>()V

    .line 65
    :cond_0
    :goto_1
    new-instance v0, Laha;

    invoke-direct {v0, p1}, Laha;-><init>(Lahh;)V

    .line 67
    new-instance v2, Lagr;

    new-instance v3, Lahd;

    invoke-direct {v3, v1}, Lahd;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3, v0}, Lagr;-><init>(Lagh;Lagn;)V

    .line 68
    invoke-virtual {v2}, Lagr;->a()V

    .line 70
    return-object v2

    .line 61
    :cond_1
    new-instance p1, Lahg;

    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    invoke-direct {p1, v0}, Lahg;-><init>(Lorg/apache/http/client/HttpClient;)V

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    .line 53
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public static a(Laja;)Laje;
    .locals 6
    .parameter

    .prologue
    .line 21
    new-instance v0, Laiy;

    iget v1, p0, Laja;->a:I

    iget-object v2, p0, Laja;->c:Lakd;

    iget-object v3, p0, Laja;->b:Ljava/lang/String;

    iget-object v4, p0, Laja;->f:Lmv;

    invoke-direct {v0, v1, v2, v3, v4}, Laiy;-><init>(ILakd;Ljava/lang/String;Lmv;)V

    .line 22
    new-instance v1, Lajg;

    iget-wide v2, p0, Laja;->e:J

    iget-wide v4, p0, Laja;->d:J

    invoke-direct {v1, v2, v3, v4, v5}, Lajg;-><init>(JJ)V

    .line 26
    new-instance v2, Laje;

    invoke-direct {v2, v0, v1}, Laje;-><init>(Laji;Lajg;)V

    return-object v2
.end method

.method public static a(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 24
    const-string v1, "de.greenrobot.eventbus.errordialog.title"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 25
    const-string v1, "de.greenrobot.eventbus.errordialog.message"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 26
    const v1, 0x104000a

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 30
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ld;)Landroid/app/SharedElementCallback;
    .locals 1
    .parameter

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 74
    if-eqz p0, :cond_0

    .line 75
    new-instance v0, Le;

    invoke-direct {v0, p0}, Le;-><init>(Ld;)V

    .line 77
    :cond_0
    return-object v0
.end method

.method public static a(Lcom/wandoujia/push/protocol/PushEntityV1$Intent;)Landroid/content/Intent;
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 59
    if-nez p0, :cond_0

    .line 60
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 105
    :goto_0
    return-object v0

    .line 62
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 64
    :try_start_0
    invoke-virtual {p0}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent;->getComponent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent;->getComponent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 69
    invoke-virtual {p0}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    :cond_2
    invoke-virtual {p0}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 74
    invoke-virtual {p0}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 76
    :goto_1
    invoke-virtual {p0}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 77
    invoke-virtual {p0}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 79
    :cond_3
    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    .line 80
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent;->getExtras()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 87
    invoke-virtual {p0}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent;->getExtras()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/push/protocol/PushEntityV1$Intent$Extra;

    .line 88
    invoke-virtual {v0}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent$Extra;->getType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    const-string v2, "string"

    .line 90
    :goto_4
    const-string v4, "string"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 91
    invoke-virtual {v0}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent$Extra;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent$Extra;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 105
    :catch_0
    move-exception v0

    move-object v0, v1

    goto/16 :goto_0

    .line 81
    :cond_6
    if-eqz v2, :cond_7

    .line 82
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_2

    .line 83
    :cond_7
    if-eqz v0, :cond_4

    .line 84
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 88
    :cond_8
    invoke-virtual {v0}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent$Extra;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 92
    :cond_9
    const-string v4, "int"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 93
    invoke-virtual {v0}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent$Extra;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent$Extra;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_3

    .line 94
    :cond_a
    const-string v4, "double"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 95
    invoke-virtual {v0}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent$Extra;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent$Extra;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_3

    .line 96
    :cond_b
    const-string v4, "boolean"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 97
    invoke-virtual {v0}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent$Extra;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent$Extra;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_3

    .line 98
    :cond_c
    const-string v4, "long"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 99
    invoke-virtual {v0}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent$Extra;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/wandoujia/push/protocol/PushEntityV1$Intent$Extra;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :cond_d
    move-object v0, v1

    .line 103
    goto/16 :goto_0

    :cond_e
    move-object v2, v0

    goto/16 :goto_1
.end method

.method public static a(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1}, Lcom/wandoujia/base/utils/ImageUtil;->decodeBitmapFromDrawble(Landroid/graphics/drawable/Drawable;[Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 103
    invoke-static {v0, p0}, Lehv;->a(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;II)Landroid/graphics/Bitmap;
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;II)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 37
    invoke-static {p1}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    move/from16 v0, p2

    invoke-static {p0, v0}, Ld;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 81
    :goto_0
    return-object v1

    .line 41
    :cond_0
    const/4 v2, 0x0

    .line 42
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 43
    if-eqz v1, :cond_1

    .line 44
    const/4 v1, 0x1

    .line 48
    :goto_1
    if-nez v1, :cond_2

    .line 49
    move/from16 v0, p2

    invoke-static {p0, v0}, Ld;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 52
    :cond_2
    move/from16 v0, p3

    invoke-static {p0, v0}, Ld;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 53
    if-nez v3, :cond_3

    .line 54
    move/from16 v0, p2

    invoke-static {p0, v0}, Ld;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 57
    :cond_3
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 58
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 59
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 60
    const/high16 v5, 0x40c0

    invoke-static {v5, p0}, Ld;->a(FLandroid/content/Context;)I

    move-result v5

    .line 61
    const/high16 v6, 0x4040

    invoke-static {v6, p0}, Ld;->a(FLandroid/content/Context;)I

    move-result v6

    .line 62
    mul-int/lit8 v7, v5, 0x2

    sub-int/2addr v1, v7

    mul-int/lit8 v7, v6, 0x1

    sub-int/2addr v1, v7

    div-int/lit8 v7, v1, 0x2

    .line 64
    mul-int/lit8 v1, v5, 0x2

    sub-int v1, v2, v1

    mul-int/lit8 v2, v6, 0x1

    sub-int/2addr v1, v2

    div-int/lit8 v8, v1, 0x2

    .line 67
    const/4 v1, 0x0

    move v2, v1

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_5

    .line 68
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 69
    if-eqz v1, :cond_4

    .line 70
    div-int/lit8 v9, v2, 0x2

    .line 73
    rem-int/lit8 v10, v2, 0x2

    .line 74
    add-int v11, v6, v7

    mul-int/2addr v10, v11

    add-int/2addr v10, v5

    .line 75
    add-int v11, v6, v8

    mul-int/2addr v9, v11

    add-int/2addr v9, v5

    .line 76
    new-instance v11, Landroid/graphics/Rect;

    add-int v12, v10, v7

    add-int v13, v9, v8

    invoke-direct {v11, v10, v9, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 77
    invoke-virtual {v1, v11}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 78
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 67
    :cond_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_5
    move-object v1, v3

    .line 81
    goto/16 :goto_0

    :cond_6
    move v1, v2

    goto :goto_1
.end method

.method static a(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 226
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 227
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 228
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 230
    aget v2, v1, v4

    aget v3, v1, v6

    aget v4, v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v1, v1, v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v1, v5

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 231
    return-object v0
.end method

.method public static a(Lcom/tencent/mm/sdk/openapi/WXMediaMessage;)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "_wxobject_sdkVer"

    iget v2, p0, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->sdkVer:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "_wxobject_title"

    iget-object v2, p0, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_wxobject_description"

    iget-object v2, p0, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_wxobject_thumbdata"

    iget-object v2, p0, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->thumbData:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iget-object v1, p0, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->mediaObject:Lcbw;

    if-eqz v1, :cond_0

    const-string v1, "_wxobject_identifier_"

    iget-object v2, p0, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->mediaObject:Lcbw;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->mediaObject:Lcbw;

    invoke-interface {v1, v0}, Lcbw;->serialize(Landroid/os/Bundle;)V

    :cond_0
    return-object v0
.end method

.method public static a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-static {p0, p1}, Ld;->a(Landroid/os/Parcel;I)I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcw;)Landroid/view/Menu;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 37
    new-instance v0, Lpc;

    invoke-direct {v0, p0, p1}, Lpc;-><init>(Landroid/content/Context;Lcw;)V

    return-object v0

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static a(Landroid/content/Context;Lcx;)Landroid/view/MenuItem;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 44
    new-instance v0, Lou;

    invoke-direct {v0, p0, p1}, Lou;-><init>(Landroid/content/Context;Lcx;)V

    .line 46
    :goto_0
    return-object v0

    .line 45
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 46
    new-instance v0, Lop;

    invoke-direct {v0, p0, p1}, Lop;-><init>(Landroid/content/Context;Lcx;)V

    goto :goto_0

    .line 48
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static a(Landroid/support/v4/view/ViewPager;)Landroid/view/View;
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getAdapter()Lgf;

    move-result-object v0

    .line 21
    if-eqz v0, :cond_1

    instance-of v2, v0, Leoh;

    if-eqz v2, :cond_1

    .line 22
    check-cast v0, Leoh;

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-interface {v0, v2}, Leoh;->c(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 23
    if-nez v0, :cond_0

    move-object v0, v1

    .line 36
    :goto_0
    return-object v0

    .line 23
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v3

    .line 26
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v0

    add-int v4, v3, v0

    .line 27
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 28
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 30
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 31
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v6

    .line 32
    if-lt v5, v3, :cond_2

    if-gt v6, v4, :cond_2

    move-object v0, v2

    .line 33
    goto :goto_0

    .line 27
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 36
    goto :goto_0
.end method

.method public static a(Landroid/view/View;Lcom/wandoujia/launcher_base/view/tips/TipsType;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/wandoujia/launcher_base/view/tips/TipsType;->createTips(Landroid/content/Context;)Leko;

    move-result-object v2

    .line 20
    if-nez v2, :cond_0

    move-object v0, v1

    .line 23
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/wandoujia/launcher_base/view/tips/TipsType;->ordinal()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/wandoujia/launcher_base/view/tips/CoverViewContainer;

    if-eqz v1, :cond_2

    invoke-virtual {v2, p0, v0, v3}, Leko;->a(Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/wandoujia/launcher_base/view/tips/CoverViewContainer;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/wandoujia/launcher_base/view/tips/CoverViewContainer;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {v0, v1, v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v1, v0}, Lehx;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-virtual {v2, p0, v1, v3}, Leko;->a(Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 84
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 85
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 90
    :goto_1
    return-object v0

    .line 84
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 90
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONArray;II)Landroid/widget/LinearLayout;
    .locals 5

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v2, Lccd;->c:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p2, v2, :cond_1

    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "label"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_0

    const-string v2, "label"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "label"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "label"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    new-instance v2, Lcom/unionpay/mpay/widgets/q;

    sget v3, Lccd;->B:I

    invoke-direct {v2, p0, v3, v0}, Lcom/unionpay/mpay/widgets/q;-><init>(Landroid/content/Context;ILorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static a(Lakd;)Lapc;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lakd",
            "<",
            "Lapn;",
            ">;)",
            "Lapc",
            "<",
            "Laip;",
            "Laqv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    new-instance v0, Laot;

    invoke-direct {v0}, Laot;-><init>()V

    .line 30
    new-instance v1, Laow;

    invoke-direct {v1}, Laow;-><init>()V

    .line 32
    new-instance v1, Lapc;

    invoke-direct {v1, v0, p0}, Lapc;-><init>(Lapr;Lakd;)V

    .line 35
    return-object v1
.end method

.method public static a(Lapc;)Lapm;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lapc",
            "<",
            "Laip;",
            "Laqv;",
            ">;)",
            "Lapm",
            "<",
            "Laip;",
            "Laqv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    new-instance v0, Laou;

    invoke-direct {v0}, Laou;-><init>()V

    .line 40
    new-instance v0, Lapl;

    invoke-direct {v0, p0}, Lapl;-><init>(Lapm;)V

    return-object v0
.end method

.method public static a(Lbjs;)Lbjs;
    .locals 2

    new-instance v1, Lbjs;

    invoke-direct {v1}, Lbjs;-><init>()V

    iget v0, p0, Lbjs;->a:I

    iput v0, v1, Lbjs;->a:I

    iget-object v0, p0, Lbjs;->k:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, v1, Lbjs;->k:[I

    iget-boolean v0, p0, Lbjs;->l:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lbjs;->l:Z

    iput-boolean v0, v1, Lbjs;->l:Z

    :cond_0
    return-object v1
.end method

.method private static a(Lbmo;)Lbmo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbmo",
            "<",
            "Lbjs;",
            ">;)",
            "Lbmo",
            "<",
            "Lbjs;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lbmo;->a:Ljava/lang/Object;

    check-cast v0, Lbjs;

    invoke-static {v0}, Lbne;->a(Lbjs;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lbmo;

    invoke-static {v1}, Lbne;->a(Ljava/lang/Object;)Lbjs;

    move-result-object v1

    iget-boolean v2, p0, Lbmo;->b:Z

    invoke-direct {v0, v1, v2}, Lbmo;-><init>(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    invoke-static {}, Lbml;->b()V

    goto :goto_0
.end method

.method public static varargs a(Lbmo;[I)Lbmo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbmo",
            "<",
            "Lbjs;",
            ">;[I)",
            "Lbmo",
            "<",
            "Lbjs;",
            ">;"
        }
    .end annotation

    array-length v3, p1

    const/4 v0, 0x0

    move v2, v0

    move-object v1, p0

    :goto_0
    if-ge v2, v3, :cond_1

    aget v4, p1, v2

    iget-object v0, v1, Lbmo;->a:Ljava/lang/Object;

    check-cast v0, Lbjs;

    invoke-static {v0}, Lbne;->c(Lbjs;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    packed-switch v4, :pswitch_data_0

    :cond_0
    invoke-static {}, Lbml;->a()V

    move-object v0, v1

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :pswitch_0
    invoke-static {v1}, Ld;->a(Lbmo;)Lbmo;

    move-result-object v0

    goto :goto_1

    :cond_1
    return-object v1

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lchr;Ljava/lang/String;)Lchu;
    .locals 6

    if-eqz p0, :cond_1

    iget-object v2, p0, Lchr;->a:Ljava/util/Vector;

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchu;

    new-instance v3, Ljava/lang/String;

    iget-object v4, v0, Lchu;->a:[B

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcoh;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 189
    new-instance v1, Lcok;

    invoke-direct {v1, p0}, Lcok;-><init>(Landroid/content/Context;)V

    .line 190
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/wandoujia/account/R$layout;->account_sdk_captcha_dialog:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 193
    sget v0, Lcom/wandoujia/account/R$id;->account_captcha:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 195
    new-instance v3, Lcih;

    invoke-direct {v3, v0}, Lcih;-><init>(Landroid/widget/ImageView;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcih;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 196
    new-instance v3, Lcny;

    invoke-direct {v3, v0}, Lcny;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    invoke-virtual {v1, v2}, Lcok;->a(Landroid/view/View;)Lcok;

    .line 206
    sget v0, Lcom/wandoujia/account/R$string;->account_sdk_confirm:I

    iget-object v2, v1, Lcok;->b:Lcoj;

    iput v0, v2, Lcoj;->d:I

    iget-object v0, v1, Lcok;->b:Lcoj;

    iput-object p1, v0, Lcoj;->f:Landroid/content/DialogInterface$OnClickListener;

    .line 207
    sget v0, Lcom/wandoujia/account/R$string;->account_sdk_cancel:I

    invoke-virtual {v1, v0, p2}, Lcok;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcok;

    .line 208
    sget v0, Lcom/wandoujia/account/R$string;->account_sdk_captcha_title:I

    invoke-virtual {v1, v0}, Lcok;->a(I)Lcok;

    .line 209
    invoke-virtual {v1}, Lcok;->a()Lcoh;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcoh;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    new-instance v0, Lcok;

    invoke-direct {v0, p0}, Lcok;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-virtual {v0, p1}, Lcok;->b(Ljava/lang/CharSequence;)Lcok;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcok;->a(Ljava/lang/CharSequence;)Lcok;

    move-result-object v1

    sget v2, Lcom/wandoujia/account/R$string;->account_sdk_confirm:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Lcok;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcok;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcok;->a(Z)Lcok;

    .line 34
    invoke-virtual {v0}, Lcok;->a()Lcoh;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcoh;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    new-instance v0, Lcok;

    invoke-direct {v0, p0}, Lcok;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {v0, p1}, Lcok;->b(Ljava/lang/CharSequence;)Lcok;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcok;->a(Ljava/lang/CharSequence;)Lcok;

    move-result-object v1

    sget v2, Lcom/wandoujia/account/R$string;->account_sdk_cancel:I

    invoke-virtual {v1, v2, p5}, Lcok;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcok;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Lcok;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcok;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcok;->a(Z)Lcok;

    .line 48
    invoke-virtual {v0}, Lcok;->a()Lcoh;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Lcoh;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    .line 70
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 71
    invoke-static {}, Lchv;->j()Ljava/lang/String;

    move-result-object v5

    .line 73
    :goto_0
    sget-object v0, Ld;->q:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 74
    sget-object v0, Ld;->q:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 76
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance v6, Lcok;

    invoke-direct {v6, p0}, Lcok;-><init>(Landroid/content/Context;)V

    .line 78
    invoke-virtual {v6, v0}, Lcok;->a(Landroid/view/View;)Lcok;

    .line 79
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/wandoujia/account/R$layout;->account_sdk_verify_dialog:I

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 83
    sget v0, Lcom/wandoujia/account/R$id;->account_verify_hint:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 84
    sget v1, Lcom/wandoujia/account/R$id;->account_verify_confirm_hint:I

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 86
    sget v2, Lcom/wandoujia/account/R$id;->account_captcha_edit:I

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 88
    sget v3, Lcom/wandoujia/account/R$string;->account_sdk_confirm:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 90
    const-string v4, "@"

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 91
    const/4 v3, 0x1

    .line 92
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    sget v0, Lcom/wandoujia/account/R$string;->account_sdk_email_show:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v4, v8

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 96
    sget v0, Lcom/wandoujia/account/R$string;->account_sdk_verify_complete:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v2, v3

    move-object v4, v0

    .line 102
    :goto_1
    sget v0, Lcom/wandoujia/account/R$id;->account_verify_button_area:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 104
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 106
    sget v0, Lcom/wandoujia/account/R$id;->account_verify_cancel:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 107
    sget v1, Lcom/wandoujia/account/R$id;->account_verify_confirm:I

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 108
    sget v3, Lcom/wandoujia/account/R$id;->account_verify_repeated:I

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 110
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {v0, p5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    invoke-virtual {v1, p4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    new-instance v0, Lcnv;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcnv;-><init>(Landroid/content/Context;ZLandroid/widget/Button;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    invoke-virtual {v6, v7}, Lcok;->a(Landroid/view/View;)Lcok;

    .line 129
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcok;->a(Z)Lcok;

    .line 131
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    sget v0, Lcom/wandoujia/account/R$string;->account_sdk_active_title:I

    invoke-virtual {v6, v0}, Lcok;->a(I)Lcok;

    .line 137
    :goto_2
    invoke-static {p0, v2, v3}, Ld;->a(Landroid/content/Context;ZLandroid/widget/Button;)V

    .line 139
    invoke-virtual {v6}, Lcok;->a()Lcoh;

    move-result-object v0

    return-object v0

    .line 98
    :cond_1
    const/4 v2, 0x0

    .line 99
    sget v0, Lcom/wandoujia/account/R$string;->account_sdk_tel_show:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v4, v8

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v4, v3

    goto :goto_1

    .line 134
    :cond_2
    invoke-virtual {v6, p3}, Lcok;->a(Ljava/lang/CharSequence;)Lcok;

    goto :goto_2

    :cond_3
    move-object v5, p2

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/Object;FF)Lcom/nineoldandroids/animation/ObjectAnimator;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    const-string v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/os/Bundle;)Lcom/tencent/mm/sdk/openapi/WXMediaMessage;
    .locals 5

    new-instance v1, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;-><init>()V

    const-string v0, "_wxobject_sdkVer"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->sdkVer:I

    const-string v0, "_wxobject_title"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->title:Ljava/lang/String;

    const-string v0, "_wxobject_description"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->description:Ljava/lang/String;

    const-string v0, "_wxobject_thumbdata"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->thumbData:[B

    const-string v0, "_wxobject_identifier_"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcbw;

    iput-object v0, v1, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->mediaObject:Lcbw;

    iget-object v0, v1, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->mediaObject:Lcbw;

    invoke-interface {v0, p0}, Lcbw;->unserialize(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "MicroMsg.SDK.WXMediaMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get media object from bundle failed: unknown ident "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcby;->a(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    invoke-direct {v0}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;-><init>()V

    .line 46
    invoke-virtual {v0, p0}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->module(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->element(Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->action(Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->name(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    .line 47
    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lczw;)Lcvz;
    .locals 2
    .parameter

    .prologue
    .line 40
    const/4 v1, 0x1

    .line 42
    :try_start_0
    invoke-virtual {p0}, Lczw;->f()Lcom/wandoujia/gson/stream/JsonToken;

    .line 43
    const/4 v1, 0x0

    .line 44
    sget-object v0, Lcym;->w:Lcwh;

    invoke-virtual {v0, p0}, Lcwh;->a(Lczw;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcvz;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/wandoujia/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    .line 51
    :goto_0
    return-object v0

    .line 45
    :catch_0
    move-exception v0

    .line 50
    if-eqz v1, :cond_0

    .line 51
    sget-object v0, Lcwa;->a:Lcwa;

    goto :goto_0

    .line 54
    :cond_0
    new-instance v1, Lcom/wandoujia/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/wandoujia/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 55
    :catch_1
    move-exception v0

    .line 56
    new-instance v1, Lcom/wandoujia/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/wandoujia/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 57
    :catch_2
    move-exception v0

    .line 58
    new-instance v1, Lcom/wandoujia/gson/JsonIOException;

    invoke-direct {v1, v0}, Lcom/wandoujia/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 59
    :catch_3
    move-exception v0

    .line 60
    new-instance v1, Lcom/wandoujia/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/wandoujia/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Lcom/wandoujia/entities/app/IAppLiteInfo;)Leiu;
    .locals 1
    .parameter

    .prologue
    .line 20
    new-instance v0, Levc;

    invoke-direct {v0, p0}, Levc;-><init>(Lcom/wandoujia/entities/app/IAppLiteInfo;)V

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lemu;)Lemw;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 22
    const-class v1, Ld;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 23
    sget-object v0, Ld;->x:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Ld;->x:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    sget-object v0, Ld;->x:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lemw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :goto_0
    monitor-exit v1

    return-object v0

    .line 26
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lemu;->a()Ljava/lang/String;

    move-result-object v0

    .line 27
    new-instance v3, Lemt;

    invoke-direct {v3, v2, v0}, Lemt;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    new-instance v4, Lcom/wandoujia/logv3/LogSender;

    invoke-direct {v4, v2, v3, p1}, Lcom/wandoujia/logv3/LogSender;-><init>(Landroid/content/Context;Lemt;Lemu;)V

    .line 29
    new-instance v0, Lemw;

    invoke-direct {v0, v2, v3, p1, v4}, Lemw;-><init>(Landroid/content/Context;Lemt;Lemu;Lcom/wandoujia/logv3/LogSender;)V

    .line 30
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Ld;->x:Ljava/lang/ref/WeakReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/view/ViewGroup;)Lerf;
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f0c0023

    const/4 v3, 0x0

    .line 186
    new-instance v0, Lerf;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lerf;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    new-instance v1, Lhjb;

    invoke-direct {v1}, Lhjb;-><init>()V

    const v2, 0x7f0c0078

    invoke-virtual {v0, v2, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldpg;

    invoke-direct {v1}, Ldpg;-><init>()V

    invoke-virtual {v0, v4, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Lhjb;

    invoke-direct {v1}, Lhjb;-><init>()V

    invoke-virtual {v0, v4, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldpf;

    invoke-direct {v1}, Ldpf;-><init>()V

    const v2, 0x7f0c0342

    invoke-virtual {v0, v2, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldpd;

    invoke-direct {v1}, Ldpd;-><init>()V

    invoke-virtual {v0, v3, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/ViewGroup;Lhas;)Lerf;
    .locals 5
    .parameter
    .parameter

    .prologue
    const v4, 0x7f0c0002

    const/4 v3, 0x0

    .line 102
    new-instance v0, Lerf;

    invoke-direct {v0, p0, p1}, Lerf;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    new-instance v1, Lhjb;

    invoke-direct {v1}, Lhjb;-><init>()V

    const v2, 0x7f0c0078

    invoke-virtual {v0, v2, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldof;

    invoke-direct {v1}, Ldof;-><init>()V

    const v2, 0x7f0c01ae

    invoke-virtual {v0, v2, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldqr;

    invoke-direct {v1}, Ldqr;-><init>()V

    const v2, 0x7f0c005e

    invoke-virtual {v0, v2, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Lhjb;

    invoke-direct {v1}, Lhjb;-><init>()V

    const v2, 0x7f0c000a

    invoke-virtual {v0, v2, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldnx;

    invoke-direct {v1}, Ldnx;-><init>()V

    invoke-virtual {v0, v4, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldkv;

    invoke-direct {v1}, Ldkv;-><init>()V

    invoke-virtual {v0, v4, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Lhjb;

    invoke-direct {v1}, Lhjb;-><init>()V

    const v2, 0x7f0c0023

    invoke-virtual {v0, v2, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Lhid;

    invoke-direct {v1}, Lhid;-><init>()V

    invoke-virtual {v0, v3, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldla;

    invoke-direct {v1}, Ldla;-><init>()V

    invoke-virtual {v0, v3, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lhoj;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-static/range {p0 .. p6}, Ld;->b(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lhoj;

    move-result-object v0

    return-object v0
.end method

.method private static a([Ljava/lang/String;[Ljava/lang/String;Lhud;Z)Lhud;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 79
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p0

    array-length v2, p1

    if-eq v0, v2, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-object p2

    .line 85
    :cond_1
    array-length v3, p0

    .line 86
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    .line 88
    :goto_1
    if-ge v2, v3, :cond_4

    .line 89
    aget-object v5, p0, v2

    .line 90
    aget-object v6, p1, v2

    .line 91
    new-instance v7, Lgxd;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v7, v0}, Lgxd;-><init>([B)V

    move v0, v1

    .line 96
    :cond_2
    invoke-interface {p2}, Lhud;->e()I

    move-result v8

    sub-int/2addr v8, v0

    invoke-virtual {v7, v0, v8, p2}, Lgxd;->a(IILhud;)I

    move-result v8

    .line 98
    if-ltz v8, :cond_3

    .line 99
    new-instance v9, Lgxf;

    invoke-direct {v9, v5, v6}, Lgxf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    add-int v10, v8, v0

    iput v10, v9, Lgxf;->c:I

    .line 104
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v0, v8

    .line 107
    if-nez p3, :cond_3

    if-ltz v0, :cond_3

    invoke-interface {p2}, Lhud;->e()I

    move-result v8

    if-lt v0, v8, :cond_2

    .line 108
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 114
    :cond_4
    invoke-static {v4}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Lgxe;

    invoke-direct {v0}, Lgxe;-><init>()V

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 126
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v2, v1

    .line 128
    :goto_2
    if-ge v2, v5, :cond_9

    .line 129
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgxf;

    iget v0, v0, Lgxf;->c:I

    if-ltz v0, :cond_6

    move v0, v2

    .line 136
    :goto_3
    invoke-static {}, Lhus;->a()Lhud;

    move-result-object v2

    move v3, v0

    .line 139
    :goto_4
    if-ge v3, v5, :cond_7

    .line 140
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgxf;

    .line 141
    iget v6, v0, Lgxf;->c:I

    .line 143
    if-ltz v6, :cond_5

    .line 144
    sub-int v7, v6, v1

    invoke-interface {v2, p2, v1, v7}, Lhud;->a(Lhud;II)V

    .line 145
    iget-object v1, v0, Lgxf;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v6

    .line 148
    :cond_5
    iget-object v0, v0, Lgxf;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-interface {v2, v0}, Lhud;->b([B)V

    .line 149
    invoke-static {}, Lgxg;->a()V

    .line 150
    invoke-static {}, Lgxg;->a()V

    .line 139
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    .line 128
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 153
    :cond_7
    invoke-interface {p2}, Lhud;->e()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 154
    invoke-interface {p2}, Lhud;->e()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {v2, p2, v1, v0}, Lhud;->a(Lhud;II)V

    :cond_8
    move-object p2, v2

    .line 157
    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto :goto_3
.end method

.method public static a(Lhvg;)Lhvl;
    .locals 1
    .parameter

    .prologue
    .line 139
    instance-of v0, p0, Lhvb;

    if-eqz v0, :cond_0

    .line 140
    check-cast p0, Lhvb;

    iget-object v0, p0, Lhvb;->c:Lhvl;

    .line 142
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lhxg;

    invoke-direct {v0, p0}, Lhxg;-><init>(Lhvg;)V

    goto :goto_0
.end method

.method public static a(Lhvg;I)Lhvl;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 741
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid interestOps: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 742
    :pswitch_1
    and-int/lit8 v0, p1, -0x5

    .line 744
    invoke-static {p0}, Ld;->l(Lhvg;)Lhvl;

    move-result-object v1

    .line 745
    invoke-interface {p0}, Lhvg;->c()Lhvs;

    move-result-object v2

    new-instance v3, Lhwq;

    sget-object v4, Lorg/jboss/netty/channel/ChannelState;->INTEREST_OPS:Lorg/jboss/netty/channel/ChannelState;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v3, p0, v1, v4, v0}, Lhwq;-><init>(Lhvg;Lhvl;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Lhvs;->b(Lhvj;)V

    .line 747
    return-object v1

    .line 741
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Lhvg;J)Lhvl;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 306
    invoke-interface {p0}, Lhvg;->c()Lhvs;

    move-result-object v0

    new-instance v1, Lhvy;

    invoke-direct {v1, p0, p1, p2}, Lhvy;-><init>(Lhvg;J)V

    invoke-interface {v0, v1}, Lhvs;->a(Ljava/lang/Runnable;)Lhvl;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lhvg;Ljava/lang/Throwable;)Lhvl;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 153
    new-instance v0, Lhwu;

    invoke-direct {v0, p0, p1}, Lhwu;-><init>(Lhvg;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(Lhvs;)Lhvs;
    .locals 4
    .parameter

    .prologue
    .line 91
    new-instance v2, Lhwi;

    invoke-direct {v2}, Lhwi;-><init>()V

    .line 92
    invoke-interface {p0}, Lhvs;->f()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 93
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhvq;

    invoke-interface {v2, v1, v0}, Lhvs;->a(Ljava/lang/String;Lhvq;)V

    goto :goto_0

    .line 95
    :cond_0
    return-object v2
.end method

.method public static a(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 281
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Appendable;)Ljava/io/Writer;
    .locals 0
    .parameter

    .prologue
    .line 72
    check-cast p0, Ljava/io/Writer;

    return-object p0
.end method

.method public static a(Landroid/content/Context;ILjava/util/List;)Ljava/lang/CharSequence;
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    const/16 v8, 0x11

    const/4 v3, 0x0

    .line 26
    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;

    .line 29
    invoke-virtual {v0}, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;->isText()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 30
    invoke-virtual {v0}, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    :goto_1
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 32
    :cond_0
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 36
    :cond_1
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 38
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;

    .line 39
    invoke-virtual {v0}, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;->isText()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 41
    invoke-virtual {v0}, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;->isVerticalColor()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 42
    sget-object v1, Lcom/wandoujia/phoenix2/R$styleable;->NirvanaTheme:[I

    invoke-virtual {p0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 44
    const/4 v1, 0x5

    const v7, 0x7f0a0098

    invoke-virtual {v6, v1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 48
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    :goto_3
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    invoke-interface {v4, v6, v2, v1, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 54
    invoke-virtual {v0}, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v2

    move v2, v0

    .line 55
    goto :goto_2

    .line 50
    :cond_2
    invoke-virtual {v0}, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;->getTextColor()I

    move-result v1

    goto :goto_3

    .line 56
    :cond_3
    invoke-virtual {v0}, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;->getImageResId()I

    move-result v0

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->d()Lcom/wandoujia/jupiter/JupiterApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/jupiter/JupiterApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-eqz v1, :cond_4

    int-to-float v1, p1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    float-to-int v6, v6

    float-to-int v1, v1

    invoke-virtual {v0, v3, v3, v6, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_4
    new-instance v1, Lfcf;

    invoke-direct {v1, v0}, Lfcf;-><init>(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v0, v2, 0x1

    invoke-interface {v4, v1, v2, v0, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 58
    add-int/lit8 v0, v2, 0x2

    move v2, v0

    .line 60
    goto/16 :goto_2

    :cond_5
    move-object v0, v4

    .line 63
    :goto_4
    return-object v0

    :cond_6
    const-string v0, ""

    goto :goto_4
.end method

.method public static a(Landroid/content/Context;Lcom/wandoujia/api/proto/AppDetail;)Ljava/lang/CharSequence;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 21
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppDetail;->installed_count_str:Ljava/lang/String;

    .line 22
    invoke-static {p1}, Ld;->b(Lcom/wandoujia/api/proto/AppDetail;)Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 25
    :cond_0
    const-string v0, ""

    .line 27
    :goto_0
    return-object v0

    :cond_1
    sget v2, Lcom/wandoujia/ripple_framework/R$string;->app_detail_meta_others:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;)Ljava/lang/Enum;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;",
            ")",
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 37
    sget-object v0, Lhzw;->a:[I

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 51
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 39
    :pswitch_0
    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/JZlib;->a:Ljava/lang/Enum;

    .line 53
    :goto_0
    return-object v0

    .line 42
    :pswitch_1
    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/JZlib;->b:Ljava/lang/Enum;

    goto :goto_0

    .line 45
    :pswitch_2
    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/JZlib;->c:Ljava/lang/Enum;

    goto :goto_0

    .line 48
    :pswitch_3
    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/JZlib;->d:Ljava/lang/Enum;

    goto :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;Ljava/io/UnsupportedEncodingException;)Ljava/lang/IllegalStateException;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 164
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(ILjava/lang/String;)Ljava/lang/Object;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :try_start_0
    const-string v0, "MicroMsg.SDK.PluginProvider.Resolver"

    invoke-static {v0}, Lcby;->a(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    :goto_1
    :pswitch_0
    return-object p1

    :pswitch_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :pswitch_2
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    goto :goto_1

    :pswitch_3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_1

    :pswitch_4
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    goto :goto_1

    :pswitch_5
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter

    .prologue
    .line 41
    if-eqz p0, :cond_0

    .line 42
    check-cast p0, Landroid/transition/Transition;

    invoke-virtual {p0}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object p0

    .line 44
    :cond_0
    return-object p0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_0
    return-object p0
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 664
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 666
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 667
    invoke-static {p0, p1}, Ld;->b(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 668
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 669
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected end tag at: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 671
    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 672
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected text: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 678
    :cond_3
    :try_start_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 683
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 685
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Unexpected end of document"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 680
    :catch_0
    move-exception v0

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected call next(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "resultStatus={"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "};memo={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 29
    const-string v1, "};result={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    return-object v0
.end method

.method public static a(J)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 25
    invoke-static {}, Lcom/wandoujia/base/storage/StorageManager;->getInstance()Lcom/wandoujia/base/storage/StorageManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/wandoujia/base/storage/StorageManager;->getExternalStorageDirectory(J)Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/wandoujia/download/app"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/wandoujia/download/app"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 111
    const-class v1, Ld;

    monitor-enter v1

    :try_start_0
    new-instance v0, Laan;

    invoke-direct {v0, p0}, Laan;-><init>(Landroid/content/Context;)V

    .line 112
    invoke-virtual {v0, p1}, Laan;->a(Ljava/util/Map;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 468
    const-string v6, ""

    .line 469
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v1

    move-object v0, p1

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    .line 470
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 471
    if-eqz v1, :cond_0

    .line 473
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 474
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 475
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 478
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 481
    :goto_0
    return-object v0

    .line 478
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    move-object v0, v6

    goto :goto_0
.end method

.method public static a(Lbln;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lbln;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v1, p0, v2, v0}, Ld;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error printing proto: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error printing proto: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/squareup/okhttp/Protocol;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 55
    sget-object v0, Lcom/squareup/okhttp/Protocol;->HTTP_1_0:Lcom/squareup/okhttp/Protocol;

    if-ne p0, v0, :cond_0

    const-string v0, "HTTP/1.0"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "HTTP/1.1"

    goto :goto_0
.end method

.method public static a(Lcom/wandoujia/feed/model/Feed;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 34
    if-nez p0, :cond_0

    move-object v0, v1

    .line 42
    :goto_0
    return-object v0

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/feed/model/Feed;->getCategory()Ljava/util/List;

    move-result-object v0

    .line 38
    const-string v2, "videoType"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/feed/model/Category;

    invoke-virtual {v0}, Lcom/wandoujia/feed/model/Category;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 39
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 40
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/feed/model/Category;

    invoke-virtual {v0}, Lcom/wandoujia/feed/model/Category;->getTerm()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 42
    goto :goto_0
.end method

.method public static a(Lcom/wandoujia/p4/video/model/VideoType;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    const v2, 0x7f0e00d7

    .line 220
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    const-string v0, "hasDirector"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "hasActor"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    :cond_0
    sget-object v0, Lgff;->a:[I

    invoke-virtual {p0}, Lcom/wandoujia/p4/video/model/VideoType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 244
    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 225
    :pswitch_0
    const-string v0, "hasDirector"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0279

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 227
    :cond_2
    const-string v0, "hasActor"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 232
    :pswitch_1
    const-string v0, "hasDirector"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 233
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e058e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 234
    :cond_3
    const-string v0, "hasActor"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0568

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 239
    :pswitch_2
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e036a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 241
    :pswitch_3
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 222
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Lcom/wandoujia/p4/video2/model/VideoDetailModel;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 58
    new-instance v0, Ljava/sql/Date;

    iget-wide v2, p0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->releaseDate:J

    invoke-direct {v0, v2, v3}, Ljava/sql/Date;-><init>(J)V

    .line 59
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e063b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 61
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v2, v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/wandoujia/p4/video2/model/VideoMetaModel;Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 104
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 105
    :cond_0
    const-string v0, ""

    .line 110
    :goto_0
    return-object v0

    .line 107
    :cond_1
    iget-object v0, p1, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 108
    iget-object v0, p1, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeTitle:Ljava/lang/String;

    goto :goto_0

    .line 110
    :cond_2
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoType:Lcom/wandoujia/p4/video/model/VideoType;

    if-nez v0, :cond_4

    :cond_3
    const-string v0, ""

    goto :goto_0

    :cond_4
    sget-object v0, Lgff;->a:[I

    iget-object v1, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoType:Lcom/wandoujia/p4/video/model/VideoType;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video/model/VideoType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, ""

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e02b7

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v4, p1, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeDate:J

    invoke-static {v4, v5}, Lcom/wandoujia/base/utils/TextUtil;->formatDateInfoToDay(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0613

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeNum:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoTitle:Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 272
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 273
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 274
    invoke-virtual {p0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 275
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    if-gtz p1, :cond_0

    const-string v0, "index out of range for prefix"

    invoke-static {v0, p0}, Lawb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;II)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-object p0

    .line 114
    :cond_1
    const-string v0, "http://img.wdjimg.com/image/orion/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    invoke-static {p0, p1, p2, p3}, Ld;->b(Ljava/lang/String;Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 117
    :cond_2
    const-string v0, "http://imgcdn.guoku.com/images/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://imgcdn.guoku.com/images/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 11
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Ld;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    const-string v1, "resultStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v1, "};"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string v1, "memo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string v1, "};"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string v1, "result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "\"first_pay_flag\":\"%s\",\"card\":\"%s\",\"pay_type\":\"%s\",\"pay_mode\":\"%s\""

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 51
    const-string v0, "Connection"

    const-string v1, "Keep-Alive"

    invoke-virtual {v2, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v0, "Charset"

    const-string v1, "UTF-8"

    invoke-virtual {v2, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v3, Lbtu;

    sget-object v0, Lcom/org/apache/http/entity/mime/HttpMultipartMode;->BROWSER_COMPATIBLE:Lcom/org/apache/http/entity/mime/HttpMultipartMode;

    invoke-direct {v3, v0}, Lbtu;-><init>(Lcom/org/apache/http/entity/mime/HttpMultipartMode;)V

    .line 55
    if-eqz p2, :cond_0

    .line 56
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 57
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_0
    if-eqz p1, :cond_1

    .line 61
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 62
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v5, Lbtx;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v6, "text/plain"

    const-string v7, "UTF-8"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v5, v0, v6, v7}, Lbtx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v3, v1, v5}, Lbtu;->a(Ljava/lang/String;Lbtv;)V

    goto :goto_1

    .line 67
    :cond_1
    if-eqz p3, :cond_2

    .line 68
    new-instance v0, Lbtw;

    const/4 v1, 0x0

    invoke-direct {v0, p3, p4, v1}, Lbtw;-><init>(Ljava/io/File;Ljava/lang/String;C)V

    invoke-virtual {v3, p5, v0}, Lbtu;->a(Ljava/lang/String;Lbtv;)V

    .line 71
    :cond_2
    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 72
    const/16 v0, 0x7530

    invoke-static {p6, v0}, Ld;->c(II)Lorg/apache/http/client/HttpClient;

    move-result-object v1

    .line 73
    :try_start_0
    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_4

    .line 77
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v2, "upload image got error response code"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :catch_0
    move-exception v0

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->closeExpiredConnections()V

    .line 98
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 100
    :goto_2
    const/4 v0, 0x0

    :goto_3
    return-object v0

    .line 79
    :cond_4
    :try_start_1
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_5

    .line 81
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 83
    :try_start_2
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "utf-8"

    invoke-direct {v3, v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    :goto_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 87
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 91
    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 97
    :cond_5
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->closeExpiredConnections()V

    .line 98
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_2

    .line 89
    :cond_6
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    .line 91
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 97
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->closeExpiredConnections()V

    .line 98
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_3

    .line 91
    :catchall_0
    move-exception v0

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 97
    :catchall_1
    move-exception v0

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->closeExpiredConnections()V

    .line 98
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v0
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 410
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 413
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    array-length v4, p1

    mul-int/lit8 v4, v4, 0x10

    add-int/2addr v1, v4

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move v1, v0

    .line 416
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_0

    .line 417
    const-string v4, "%s"

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 418
    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 419
    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    add-int/lit8 v1, v0, 0x1

    aget-object v0, p1, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 423
    add-int/lit8 v0, v4, 0x2

    move v6, v1

    move v1, v0

    move v0, v6

    .line 424
    goto :goto_0

    .line 425
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 429
    const-string v1, " ["

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    add-int/lit8 v1, v0, 0x1

    aget-object v0, p1, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 431
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 432
    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    add-int/lit8 v1, v0, 0x1

    aget-object v0, p1, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_1

    .line 435
    :cond_1
    const/16 v0, 0x5d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 438
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/net/URL;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 49
    if-nez v0, :cond_1

    const-string v0, "/"

    .line 51
    :cond_0
    :goto_0
    return-object v0

    .line 50
    :cond_1
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 122
    const-string v0, "Content-Type"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 123
    if-eqz v0, :cond_1

    .line 124
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 125
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 126
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 127
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 128
    const/4 v4, 0x0

    aget-object v4, v3, v4

    const-string v5, "charset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 129
    aget-object v0, v3, v1

    .line 135
    :goto_1
    return-object v0

    .line 125
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_1
    const-string v0, "ISO-8859-1"

    goto :goto_1
.end method

.method private static a(Lorg/apache/http/HttpMessage;)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0xa

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 232
    instance-of v0, p0, Lorg/apache/http/HttpResponse;

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 233
    check-cast v0, Lorg/apache/http/HttpResponse;

    .line 234
    const-string v2, "status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 240
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/apache/http/HttpMessage;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    .line 241
    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 242
    invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 236
    :cond_1
    instance-of v0, p0, Lorg/apache/http/HttpRequest;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 237
    check-cast v0, Lorg/apache/http/HttpRequest;

    .line 238
    const-string v2, " request-url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 244
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 78
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    .line 79
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 81
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 82
    const/4 v1, 0x0

    .line 84
    :try_start_0
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 85
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_0

    .line 86
    if-nez v1, :cond_1

    .line 87
    :cond_0
    new-instance v3, Lcom/alipay/android/app/exception/NetErrorException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 88
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-direct {v3, v0}, Lcom/alipay/android/app/exception/NetErrorException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Ld;->b(Ljava/lang/Object;)V

    .line 119
    new-instance v0, Lcom/alipay/android/app/exception/NetErrorException;

    invoke-direct {v0}, Lcom/alipay/android/app/exception/NetErrorException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :catchall_0
    move-exception v0

    .line 122
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 126
    :goto_0
    throw v0

    .line 91
    :cond_1
    :try_start_3
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_2

    .line 94
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "gzip"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v0

    .line 99
    :cond_2
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    long-to-int v0, v4

    .line 100
    if-gez v0, :cond_5

    .line 101
    const/16 v0, 0x1000

    move v2, v0

    .line 104
    :goto_1
    invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->getContentCharSet(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    .line 106
    if-nez v0, :cond_3

    .line 107
    const-string v0, "UTF-8"

    .line 109
    :cond_3
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 110
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-direct {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 111
    const/16 v2, 0x400

    new-array v2, v2, [C

    .line 113
    :goto_2
    invoke-virtual {v3, v2}, Ljava/io/Reader;->read([C)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    .line 116
    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    .line 122
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 116
    :goto_3
    return-object v0

    .line 114
    :cond_4
    const/4 v5, 0x0

    :try_start_5
    invoke-virtual {v0, v2, v5, v4}, Lorg/apache/http/util/CharArrayBuffer;->append([CII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_0

    :cond_5
    move v2, v0

    goto :goto_1
.end method

.method private static a(Lorg/apache/http/HttpResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 213
    const-string v0, "Location"

    invoke-interface {p0, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 215
    if-nez v0, :cond_0

    .line 216
    new-instance v0, Lcom/wandoujia/p4/webdownload/util/HttpUtils$RedirectUrlNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getRedirectUrl can\'t found location header : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ld;->a(Lorg/apache/http/HttpMessage;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/wandoujia/p4/webdownload/util/HttpUtils$RedirectUrlNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    .line 221
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 227
    return-object v0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    new-instance v1, Lcom/wandoujia/p4/webdownload/util/HttpUtils$RedirectUrlNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getRedirectUrl catch MalformedURLException : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ld;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/wandoujia/p4/webdownload/util/HttpUtils$RedirectUrlNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static a(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "action:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "action"

    invoke-static {p0, v1}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "action"

    invoke-static {p0, v0}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 284
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ld;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 187
    if-nez p0, :cond_0

    .line 188
    const/4 v0, 0x0

    .line 191
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    invoke-static {p1, v0}, Ld;->a(Ljava/lang/String;Ljava/io/UnsupportedEncodingException;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public static a(Ljava/io/InputStream;)Ljava/util/HashMap;
    .locals 2
    .parameter

    .prologue
    .line 458
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 459
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 460
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ld;->a(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Z)Ljava/util/HashMap;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 79
    const-string v1, "package_name"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v1, "status"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-object v0
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 504
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 506
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 508
    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 509
    invoke-static {p0, p2}, Ld;->b(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 510
    aget-object v2, p2, v3

    if-eqz v2, :cond_2

    .line 513
    aget-object v2, p2, v3

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 527
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 529
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Document ended before "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " end tag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_2
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Map value without name attribute: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 519
    :cond_3
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 520
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 521
    return-object v1

    .line 523
    :cond_4
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " end tag at: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/content/Intent;)Ljava/util/List;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 34
    :goto_0
    return-object v0

    .line 29
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 31
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->notNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 34
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lhef;)Ljava/util/List;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lhef;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    const-string v0, "<blockquote>"

    const-string v1, "<blockquote><pq>"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "</blockquote>"

    const-string v2, "</pq></blockquote>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    new-instance v1, Lhtr;

    invoke-direct {v1}, Lhtr;-><init>()V

    .line 186
    :try_start_0
    const-string v2, "http://www.ccil.org/~cowan/tagsoup/properties/schema"

    invoke-static {}, Lhed;->a()Lhtq;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lhtr;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 195
    new-instance v2, Lheg;

    invoke-direct {v2, v0, p1, v1}, Lheg;-><init>(Ljava/lang/String;Lhef;Lhtr;)V

    .line 197
    invoke-virtual {v2}, Lheg;->a()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 187
    :catch_0
    move-exception v0

    .line 189
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 190
    :catch_1
    move-exception v0

    .line 192
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/util/List;I)Ljava/util/List;
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 64
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 65
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 66
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 67
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 68
    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    invoke-static {v1}, Ld;->K(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v1

    iget-object v6, v1, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    sget-object v1, Lham;->f:Lham;

    const-string v7, "app"

    invoke-virtual {v1, v7}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/appmanager/AppManager;

    invoke-virtual {v1, v6}, Lcom/wandoujia/appmanager/AppManager;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 73
    :cond_1
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 76
    :cond_2
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, p1, :cond_0

    move-object v0, v2

    .line 92
    :goto_1
    return-object v0

    .line 82
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-le v0, p1, :cond_4

    .line 83
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    sub-int v0, p1, v0

    invoke-interface {v4, v8, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 87
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-le v0, p1, :cond_5

    .line 88
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    sub-int v0, p1, v0

    invoke-interface {v3, v8, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_3
    move-object v0, v2

    .line 92
    goto :goto_1

    .line 85
    :cond_4
    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 90
    :cond_5
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3
.end method

.method public static a(Ljava/util/Set;)Ljava/util/List;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 21
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getAppInfosWithType  "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    new-instance v2, Ledd;

    invoke-direct {v2}, Ledd;-><init>()V

    .line 23
    invoke-virtual {v2}, Ledd;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Ledh;

    invoke-virtual {v0, p0}, Ledh;->a(Ljava/util/Set;)Ledh;

    .line 24
    invoke-static {}, Legx;->d()Lcom/wandoujia/rpc/http/client/DataApi;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/wandoujia/rpc/http/client/DataApi;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 30
    :goto_0
    return-object v0

    .line 25
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-object v0, v1

    .line 27
    goto :goto_0

    .line 30
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 31
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 54
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-interface {v0, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-interface {v0, p6, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Ld;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lach;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lach;)Lorg/apache/http/HttpResponse;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 56
    sget-object v0, Ld;->p:Lacw;

    if-nez v0, :cond_2

    .line 57
    new-instance v0, Lacw;

    invoke-direct {v0, p0, p1}, Lacw;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Ld;->p:Lacw;

    .line 64
    :cond_0
    :goto_0
    if-eqz p3, :cond_3

    .line 65
    sget-object v0, Ld;->p:Lacw;

    invoke-virtual {v0, p2, p3}, Lacw;->a(Ljava/lang/String;Lach;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 70
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 71
    invoke-static {}, Lacm;->a()Lacm;

    move-result-object v4

    invoke-static {}, Lade;->a()Lade;

    move-result-object v1

    iget-object v1, v1, Lade;->a:Landroid/content/Context;

    invoke-static {v1}, Ladd;->b(Landroid/content/Context;)Lcom/alipay/wandoujia/id;

    move-result-object v5

    sget-object v1, Lcom/alipay/wandoujia/id;->a:Lcom/alipay/wandoujia/id;

    if-eq v5, v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "https"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_4

    const-string v1, "https"

    :goto_2
    new-instance v6, Laco;

    sget-object v7, Lcom/alipay/wandoujia/fa;->i:Lcom/alipay/wandoujia/fa;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/alipay/wandoujia/id;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "--URL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v7, v1}, Laco;-><init>(Lcom/alipay/wandoujia/fa;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lacm;->a(Laco;)V

    .line 73
    :cond_1
    return-object v0

    .line 58
    :cond_2
    sget-object v0, Ld;->p:Lacw;

    iget-object v0, v0, Lacw;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    sget-object v0, Ld;->p:Lacw;

    iput-object p1, v0, Lacw;->a:Ljava/lang/String;

    goto :goto_0

    .line 67
    :cond_3
    sget-object v0, Ld;->p:Lacw;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lacw;->a(Ljava/lang/String;Lach;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    goto :goto_1

    .line 71
    :cond_4
    const-string v1, "http"

    goto :goto_2
.end method

.method public static a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v0, 0x0

    .line 32
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 35
    const/4 v1, 0x2

    :try_start_0
    new-array v3, v1, [Lorg/json/JSONObject;

    const/4 v1, 0x0

    aput-object p0, v3, v1

    const/4 v1, 0x1

    aput-object p1, v3, v1

    move v1, v0

    .line 36
    :goto_0
    if-lt v1, v7, :cond_0

    .line 51
    :goto_1
    return-object v2

    .line 36
    :cond_0
    aget-object v4, v3, v1

    .line 37
    if-eqz v4, :cond_1

    .line 38
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 42
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 36
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 43
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 44
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 48
    :catch_0
    move-exception v0

    invoke-static {v0}, Ld;->b(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 57
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 59
    :cond_0
    return-void
.end method

.method private static a(ILjava/io/File;Ljava/util/List;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/clean/reporter/PeriodReporter$FileLogBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 105
    new-instance v2, Lcom/wandoujia/clean/reporter/PeriodReporter$FileLogBean;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Lcom/wandoujia/clean/reporter/PeriodReporter$FileLogBean;-><init>(Lcsk;)V

    .line 106
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld;->av(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/wandoujia/clean/reporter/PeriodReporter$FileLogBean;->filePath:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 108
    if-eqz v3, :cond_3

    array-length v0, v3

    :goto_0
    iput v0, v2, Lcom/wandoujia/clean/reporter/PeriodReporter$FileLogBean;->childCount:I

    .line 109
    iget-object v0, v2, Lcom/wandoujia/clean/reporter/PeriodReporter$FileLogBean;->filePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/16 v4, 0xa

    if-lt v0, v4, :cond_1

    .line 112
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/NetworkUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 113
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 116
    :cond_1
    iget v0, v2, Lcom/wandoujia/clean/reporter/PeriodReporter$FileLogBean;->childCount:I

    const/16 v4, 0x12c

    if-le v0, v4, :cond_4

    .line 135
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 108
    goto :goto_0

    .line 119
    :cond_4
    iget-object v0, v2, Lcom/wandoujia/clean/reporter/PeriodReporter$FileLogBean;->filePath:Ljava/lang/String;

    invoke-static {v0}, Lcsl;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move p0, v1

    .line 122
    :cond_5
    add-int/lit8 v0, p0, 0x1

    const/4 v2, 0x4

    if-ge v0, v2, :cond_2

    .line 125
    if-eqz v3, :cond_2

    .line 126
    array-length v0, v3

    :goto_1
    if-ge v1, v0, :cond_2

    aget-object v2, v3, v1

    .line 127
    new-instance v4, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 129
    add-int/lit8 v2, p0, 0x1

    invoke-static {v2, v4, p2}, Ld;->a(ILjava/io/File;Ljava/util/List;)V

    .line 126
    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 130
    :cond_7
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/32 v8, 0xa00000

    cmp-long v2, v6, v8

    if-lez v2, :cond_6

    .line 131
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/wandoujia/base/utils/NetworkUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v5, "size"

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "path"

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ld;->av(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public static a(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "mini_ui_custom_toast"

    const-string v2, "layout"

    invoke-static {v1, v2}, Lg;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const-string v0, "mini_toast_icon"

    const-string v2, "id"

    invoke-static {v0, v2}, Lg;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v0, "mini_toast_text"

    const-string v2, "id"

    invoke-static {v0, v2}, Lg;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v2, 0xc0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    new-instance v0, Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setDuration(I)V

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 25
    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 34
    const-string v0, "de.greenrobot.eventbus.errordialog.finish_after_dialog"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 45
    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 48
    :cond_0
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 21
    const v0, 0x7f0e01ec

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0e0162

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lfnf;

    invoke-direct {v4}, Lfnf;-><init>()V

    const v0, 0x7f0e00c6

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lfng;

    invoke-direct {v6, p0}, Lfng;-><init>(Landroid/app/Activity;)V

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Ld;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lhoj;

    .line 36
    return-void
.end method

.method public static a(Landroid/app/Notification$Builder;Lbn;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 102
    new-instance v0, Landroid/app/Notification$Action$Builder;

    invoke-virtual {p1}, Lbn;->a()I

    move-result v1

    invoke-virtual {p1}, Lbn;->b()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1}, Lbn;->c()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 104
    invoke-virtual {p1}, Lbn;->d()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {p1}, Lbn;->d()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 113
    :cond_0
    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 114
    return-void
.end method

.method public static a(Landroid/content/Context;J)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 33
    const-string v0, "push2"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 35
    const-string v1, "last_push_id"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 36
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 37
    return-void
.end method

.method public static a(Landroid/content/Context;Lcfz;)V
    .locals 4

    const/4 v3, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reqId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcfz;->x:Lcga;

    iget v1, v1, Lcga;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    check-cast p0, Lcom/unionpay/uppay/PayActivityEx;

    iget-object v0, p1, Lcfz;->x:Lcga;

    iget-object v0, v0, Lcga;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "result="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcfz;->x:Lcga;

    iget-object v1, v1, Lcga;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcfz;->x:Lcga;

    iget v0, v0, Lcga;->a:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    iget-object v0, p1, Lcfz;->I:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcfz;->I:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p1, Lcfz;->J:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcfz;->J:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p1, Lcfz;->H:Z

    iget-object v1, p1, Lcfz;->I:Ljava/lang/String;

    iget-object v2, p1, Lcfz;->J:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lccy;

    invoke-direct {v3, v1, v2}, Lccy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    invoke-virtual {p0}, Lcom/unionpay/uppay/PayActivityEx;->finish()V

    return-void

    :sswitch_0
    const/4 v1, 0x0

    iget-object v0, p1, Lcfz;->x:Lcga;

    iget-object v0, v0, Lcga;->e:Ljava/lang/String;

    const-string v2, "fail"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "1"

    :goto_1
    iget-object v2, p1, Lcfz;->x:Lcga;

    iget v2, v2, Lcga;->a:I

    packed-switch v2, :pswitch_data_0

    :goto_2
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcfz;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3e8

    iget-object v3, p1, Lcfz;->x:Lcga;

    iget v3, v3, Lcga;->a:I

    if-ne v2, v3, :cond_4

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v2, "cancel"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "-1"

    goto :goto_1

    :cond_3
    const-string v0, "0"

    goto :goto_1

    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.UCMobile.PluginApp.ActivityState"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "ActivityState"

    const-string v3, "inactive"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.unionpay.uppay.resultURL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p1, Lcfz;->x:Lcga;

    iget-object v2, v2, Lcga;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v2, "ResultURL"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "pay_result"

    iget-object v2, p1, Lcfz;->x:Lcga;

    iget-object v2, v2, Lcga;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p1, Lcfz;->I:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcfz;->I:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, p1, Lcfz;->J:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcfz;->J:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    iget-boolean v1, p1, Lcfz;->H:Z

    if-nez v1, :cond_5

    const-string v1, "notify_url"

    iget-object v2, p1, Lcfz;->I:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "notify_msg"

    iget-object v2, p1, Lcfz;->J:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    invoke-virtual {p0, v3, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "pay_result"

    iget-object v2, p1, Lcfz;->x:Lcga;

    iget-object v2, v2, Lcga;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "tencentWID"

    iget-object v2, p1, Lcfz;->x:Lcga;

    iget-object v2, v2, Lcga;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "tencentUID"

    iget-object v2, p1, Lcfz;->x:Lcga;

    iget-object v2, v2, Lcga;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "bankInfo"

    iget-object v2, p1, Lcfz;->x:Lcga;

    iget-object v2, v2, Lcga;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "cardType"

    iget-object v2, p1, Lcfz;->x:Lcga;

    iget-object v2, v2, Lcga;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "cardNo"

    iget-object v2, p1, Lcfz;->x:Lcga;

    iget-object v2, v2, Lcga;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_0
        0x3e8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Lcmm;Lcom/wandoujia/account/AccountParams;Ljava/lang/Class;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcmm;",
            "Lcom/wandoujia/account/AccountParams;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 97
    if-nez p1, :cond_0

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wdjAccountManager must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    sput-object p1, Ld;->f:Lcmm;

    .line 102
    invoke-static {p1}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->a(Lcmm;)V

    .line 103
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    const-string v1, "account.intent.extra.ACCOUNT_PARAMS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 105
    const-string v1, "account.intent.extra.ACCOUNT_MANAGER_KEY"

    invoke-virtual {p1}, Lcmm;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 107
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 110
    :cond_1
    iget v1, p2, Lcom/wandoujia/account/AccountParams;->q:I

    if-eq v1, v3, :cond_2

    .line 111
    iget v1, p2, Lcom/wandoujia/account/AccountParams;->q:I

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 113
    :cond_2
    iget v1, p2, Lcom/wandoujia/account/AccountParams;->c:I

    if-eq v1, v3, :cond_4

    .line 114
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 115
    check-cast p0, Landroid/app/Activity;

    .line 116
    iget v1, p2, Lcom/wandoujia/account/AccountParams;->c:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 124
    :goto_0
    return-void

    .line 118
    :cond_3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 122
    :cond_4
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/wandoujia/account/AccountParams$Type;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 45
    sput-object v0, Ld;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 46
    sget-object v0, Lcom/wandoujia/account/AccountParams$Type;->PHOENIX:Lcom/wandoujia/account/AccountParams$Type;

    if-ne p1, v0, :cond_0

    .line 47
    sget-object v0, Ld;->e:Landroid/content/Context;

    sget-object v1, Lcom/wandoujia/account/storage/AccountStorageType;->SYSTEM:Lcom/wandoujia/account/storage/AccountStorageType;

    invoke-static {v0, v1}, Lchv;->a(Landroid/content/Context;Lcom/wandoujia/account/storage/AccountStorageType;)V

    .line 55
    :goto_0
    invoke-static {}, Lchv;->b()V

    .line 56
    return-void

    .line 48
    :cond_0
    sget-object v0, Lcom/wandoujia/account/AccountParams$Type;->FIVE:Lcom/wandoujia/account/AccountParams$Type;

    if-ne p1, v0, :cond_1

    .line 49
    sget-object v0, Ld;->e:Landroid/content/Context;

    sget-object v1, Lcom/wandoujia/account/storage/AccountStorageType;->FIVE:Lcom/wandoujia/account/storage/AccountStorageType;

    invoke-static {v0, v1}, Lchv;->a(Landroid/content/Context;Lcom/wandoujia/account/storage/AccountStorageType;)V

    goto :goto_0

    .line 50
    :cond_1
    invoke-static {p0}, Ld;->p(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    sget-object v0, Lcom/wandoujia/account/storage/AccountStorageType;->SDK:Lcom/wandoujia/account/storage/AccountStorageType;

    invoke-static {p0, v0}, Lchv;->a(Landroid/content/Context;Lcom/wandoujia/account/storage/AccountStorageType;)V

    goto :goto_0

    .line 53
    :cond_2
    sget-object v0, Lcom/wandoujia/account/storage/AccountStorageType;->SHARED_PREFERENCE:Lcom/wandoujia/account/storage/AccountStorageType;

    invoke-static {p0, v0}, Lchv;->a(Landroid/content/Context;Lcom/wandoujia/account/storage/AccountStorageType;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 48
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 49
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 50
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 51
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    const/4 v1, 0x0

    .line 25
    :try_start_0
    new-instance v0, Ljava/io/ObjectOutputStream;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 27
    :try_start_1
    invoke-virtual {v0, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 34
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V

    .line 36
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 40
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    .line 29
    :goto_1
    if-eqz v0, :cond_0

    .line 35
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V

    .line 36
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 39
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 31
    :goto_2
    if-eqz v1, :cond_0

    .line 35
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 36
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 39
    :catch_3
    move-exception v0

    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    :goto_3
    if-eqz v1, :cond_1

    .line 35
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 36
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 39
    :cond_1
    :goto_4
    throw v0

    :catch_4
    move-exception v1

    goto :goto_4

    .line 33
    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_3

    :catch_5
    move-exception v1

    move-object v1, v0

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1

    .line 39
    :catch_7
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".permission.MM_MESSAGE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_mmessage_sdkVersion"

    const v4, 0x21020001

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "_mmessage_appPackage"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "_mmessage_content"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "_mmessage_checksum"

    invoke-static {p3, v2}, Lg;->c(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string v2, "MicroMsg.SDK.MMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "send mm message, intent="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", perm="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcby;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    invoke-static {}, Lcom/wandoujia/log/LogReporterFactory;->getLogReporter()Lcom/wandoujia/log/LogReporter;

    move-result-object v1

    .line 132
    if-nez v1, :cond_0

    .line 152
    :goto_0
    return-void

    .line 136
    :cond_0
    sget-object v0, Ld;->B:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 139
    sput-object v0, Ld;->B:Ljava/util/Map;

    const-string v2, "created_model"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Ld;->B:Ljava/util/Map;

    const-string v2, "created_sdk_int"

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Ld;->B:Ljava/util/Map;

    const-string v2, "created_vc"

    invoke-static {p0}, Lcom/wandoujia/base/utils/SystemUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Ld;->B:Ljava/util/Map;

    const-string v2, "udid"

    invoke-static {p0}, Lcom/wandoujia/udid/UDIDUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Ld;->B:Ljava/util/Map;

    const-string v2, "vc"

    invoke-static {p0}, Lcom/wandoujia/base/utils/SystemUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Ld;->B:Ljava/util/Map;

    const-string v2, "vn"

    invoke-static {p0}, Lcom/wandoujia/base/utils/SystemUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_1
    sget-object v0, Ld;->B:Ljava/util/Map;

    invoke-interface {p4, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 149
    const-string v2, "created_net_type"

    invoke-static {}, Lcom/wandoujia/base/utils/NetworkUtil;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/wandoujia/log/MuceNetworkType;->NONE:Lcom/wandoujia/log/MuceNetworkType;

    :goto_1
    invoke-virtual {v0}, Lcom/wandoujia/log/MuceNetworkType;->getIntValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/wandoujia/log/LogReporter;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 149
    :pswitch_0
    sget-object v0, Lcom/wandoujia/log/MuceNetworkType;->MOBILE:Lcom/wandoujia/log/MuceNetworkType;

    goto :goto_1

    :pswitch_1
    sget-object v0, Lcom/wandoujia/log/MuceNetworkType;->WIFI:Lcom/wandoujia/log/MuceNetworkType;

    goto :goto_1

    :pswitch_2
    sget-object v0, Lcom/wandoujia/log/MuceNetworkType;->NONE:Lcom/wandoujia/log/MuceNetworkType;

    goto :goto_1

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Ljava/util/HashSet;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {p0}, Ld;->z(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 60
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 61
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 64
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 60
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 49
    :try_start_0
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 50
    const-class v2, Landroid/view/ViewConfiguration;

    const-string v3, "sHasPermanentMenuKey"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 51
    if-eqz v2, :cond_0

    .line 52
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 53
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Ld;->i:Z

    .line 54
    if-nez p1, :cond_1

    :goto_0
    invoke-virtual {v2, v1, v0}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_0
    :goto_1
    return-void

    .line 54
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;ZLandroid/widget/Button;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x1e

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 144
    sget-object v0, Ld;->q:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 145
    sget-object v0, Ld;->q:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 147
    :cond_0
    if-nez p2, :cond_1

    .line 183
    :goto_0
    return-void

    .line 150
    :cond_1
    if-eqz p1, :cond_2

    .line 151
    sget v0, Lcom/wandoujia/account/R$string;->account_sdk_verify_email_again:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 156
    :goto_1
    invoke-virtual {p2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 157
    new-instance v0, Lcnx;

    invoke-direct {v0, p1, p2, p0}, Lcnx;-><init>(ZLandroid/widget/Button;Landroid/content/Context;)V

    .line 182
    sput-object v0, Ld;->q:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_0

    .line 153
    :cond_2
    sget v0, Lcom/wandoujia/account/R$string;->account_sdk_verify_captcha_again:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Lamb;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 45
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    iget v0, p1, Lamb;->a:I

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 50
    iget-object v0, p1, Lamb;->b:Landroid/graphics/ColorFilter;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 51
    iget-boolean v0, p1, Lamb;->c:Z

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 52
    iget-boolean v0, p1, Lamb;->d:Z

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    goto :goto_0
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable$Callback;Lamo;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    if-eqz p0, :cond_0

    .line 66
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 67
    instance-of v0, p0, Lamn;

    if-eqz v0, :cond_0

    .line 68
    check-cast p0, Lamn;

    invoke-interface {p0, p2}, Lamn;->a(Lamo;)V

    .line 71
    :cond_0
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 28
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    if-ne p0, p1, :cond_1

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 33
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 34
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 35
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 36
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public static a(Landroid/os/AsyncTask;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 21
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 22
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 24
    :cond_0
    return-void
.end method

.method public static varargs a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/AsyncTask",
            "<TT;**>;[TT;)V"
        }
    .end annotation

    .prologue
    .line 29
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 30
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 37
    :goto_0
    return-void

    .line 32
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/os/Parcel;II)V
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Ld;->c(Landroid/os/Parcel;II)V

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public static a(Landroid/os/Parcel;IJ)V
    .locals 2

    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Ld;->c(Landroid/os/Parcel;II)V

    invoke-virtual {p0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

.method public static a(Landroid/os/Parcel;ILandroid/os/Bundle;)V
    .locals 1

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Ld;->r(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    invoke-static {p0, v0}, Ld;->s(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static a(Landroid/os/Parcel;ILandroid/os/IBinder;)V
    .locals 1

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Ld;->r(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-static {p0, v0}, Ld;->s(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static a(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V
    .locals 1

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Ld;->r(Landroid/os/Parcel;I)I

    move-result v0

    invoke-interface {p2, p0, p3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-static {p0, v0}, Ld;->s(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static a(Landroid/os/Parcel;ILjava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Ld;->r(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {p0, v0}, Ld;->s(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static a(Landroid/os/Parcel;ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Ld;->r(Landroid/os/Parcel;I)I

    move-result v3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    invoke-static {p0, v0, v2}, Ld;->a(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_2

    :cond_2
    invoke-static {p0, v3}, Ld;->s(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static a(Landroid/os/Parcel;IZ)V
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Ld;->c(Landroid/os/Parcel;II)V

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/os/Parcel;I[B)V
    .locals 1

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Ld;->r(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-static {p0, v0}, Ld;->s(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static a(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I[TT;I)V"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Ld;->r(Landroid/os/Parcel;I)I

    move-result v2

    array-length v3, p2

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, p2, v0

    if-nez v4, :cond_1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-static {p0, v4, p3}, Ld;->a(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_2

    :cond_2
    invoke-static {p0, v2}, Ld;->s(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static a(Landroid/os/Parcel;I[Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Ld;->r(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    invoke-static {p0, v0}, Ld;->s(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method private static a(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "TT;I)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-interface {p1, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int v0, v2, v1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 98
    if-nez p0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    if-eqz p1, :cond_2

    .line 103
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    .line 105
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    sget v1, Lcom/wandoujia/account/R$id;->account_fragment_layout:I

    invoke-virtual {v0, v1}, Ls;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_3

    instance-of v1, v0, Lcom/wandoujia/account/fragment/AccountLoginFragment;

    if-eqz v1, :cond_3

    .line 108
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->a(Landroid/os/Bundle;)Lcom/wandoujia/account/fragment/AccountLoginFragment;

    move-result-object v0

    .line 110
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Ls;

    move-result-object v1

    invoke-virtual {v1}, Ls;->a()Lag;

    move-result-object v1

    .line 112
    sget v2, Lcom/wandoujia/account/R$id;->account_fragment_layout:I

    const-string v3, "login"

    invoke-virtual {v1, v2, v0, v3}, Lag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Lag;

    .line 114
    invoke-virtual {v1}, Lag;->b()I

    goto :goto_0

    .line 115
    :cond_3
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->a(Landroid/os/Bundle;)Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    move-result-object v0

    .line 118
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Ls;

    move-result-object v1

    invoke-virtual {v1}, Ls;->a()Lag;

    move-result-object v1

    .line 120
    sget v2, Lcom/wandoujia/account/R$id;->account_fragment_layout:I

    const-string v3, "register"

    invoke-virtual {v1, v2, v0, v3}, Lag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Lag;

    .line 122
    invoke-virtual {v1}, Lag;->b()I

    goto :goto_0
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 137
    if-nez p0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account.intent.extra.ACCOUNT_MANAGER_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->c(Ljava/lang/String;)Lcmm;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcmm;->a:Lcii;

    iget-object v1, v1, Lcii;->b:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    if-eqz v1, :cond_0

    .line 146
    iget-object v0, v0, Lcmm;->a:Lcii;

    iget-object v0, v0, Lcii;->b:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->a(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public static a(Landroid/view/View;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-static {}, Leny;->b()Leny;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Leny;->a(Landroid/view/View;I)Leny;

    .line 50
    return-void
.end method

.method public static a(Landroid/view/View;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    if-eqz p0, :cond_0

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {p0, p1, v0}, Ld;->a(Landroid/view/View;ILjava/lang/String;)V

    .line 40
    :cond_0
    return-void
.end method

.method public static a(Landroid/view/View;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 30
    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    :cond_0
    return-void
.end method

.method public static synthetic a(Landroid/view/View;JILcom/wandoujia/ripple_framework/model/Model;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-virtual {p4, p3}, Lcom/wandoujia/ripple_framework/model/Model;->a(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    const-string v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nineoldandroids/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p4, p3, v0}, Lcom/wandoujia/ripple_framework/model/Model;->a(ILjava/lang/Object;)V

    :cond_0
    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public static a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 58
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static a(Landroid/view/View;Lcom/wandoujia/p4/video2/model/VideoDetailModel;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 64
    instance-of v0, v1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Ld;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Lgxr;

    invoke-direct {v0}, Lgxr;-><init>()V

    new-instance v2, Lgda;

    invoke-direct {v2, v1, p1}, Lgda;-><init>(Landroid/content/Context;Lcom/wandoujia/p4/video2/model/VideoDetailModel;)V

    invoke-virtual {v0, p0, v2}, Lgxr;->a(Landroid/view/View;Lgxu;)Lgxr;

    .line 80
    :cond_0
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-static {}, Leny;->b()Leny;

    move-result-object v0

    new-instance v1, Leoj;

    invoke-direct {v1, p1}, Leoj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Leny;->a(Landroid/view/View;Leoj;)Leny;

    .line 21
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    sget-object v0, Ld;->h:Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;

    if-eqz v0, :cond_0

    .line 32
    invoke-static {}, Leny;->b()Leny;

    move-result-object v0

    sget-object v1, Ld;->h:Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;

    invoke-virtual {v0, p0, v1}, Leny;->a(Landroid/view/View;Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;)Leny;

    .line 34
    :cond_0
    invoke-static {}, Leny;->b()Leny;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Leny;->a(Landroid/view/View;Ljava/lang/String;)Leny;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p3, p4}, Leny;->a(Landroid/view/View;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)Leny;

    move-result-object v0

    invoke-virtual {v0, p0}, Leny;->b(Landroid/view/View;)V

    .line 37
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-static {}, Leny;->b()Leny;

    move-result-object v0

    new-instance v1, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;

    invoke-direct {v1}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->identity(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->title(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->type(Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;)Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ContentPackage;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Leny;->a(Landroid/view/View;Lcom/wandoujia/logv3/model/packages/ContentPackage;)Leny;

    .line 47
    return-void
.end method

.method public static varargs a(Landroid/view/View;[Lcom/wandoujia/launcher_base/view/tips/TipsType;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    if-nez p0, :cond_1

    .line 40
    :cond_0
    return-void

    :cond_1
    move v5, v3

    .line 37
    :goto_0
    if-gtz v5, :cond_0

    aget-object v0, p1, v3

    .line 38
    invoke-virtual {v0}, Lcom/wandoujia/launcher_base/view/tips/TipsType;->ordinal()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    instance-of v2, v0, Lcom/wandoujia/launcher_base/view/tips/CoverViewContainer;

    if-eqz v2, :cond_3

    invoke-static {v0, v1}, Ld;->a(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move v2, v3

    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_6

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leko;

    if-eqz v1, :cond_4

    move v1, v4

    :goto_2
    if-eqz v1, :cond_5

    const/4 v1, 0x4

    :goto_3
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ne v1, v4, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-virtual {v1, p0, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 37
    :cond_3
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 38
    :cond_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_5
    move v1, v3

    goto :goto_3

    :cond_6
    move v1, v3

    goto :goto_2
.end method

.method public static a(Landroid/widget/AbsListView;)V
    .locals 1
    .parameter

    .prologue
    .line 41
    if-nez p0, :cond_1

    .line 42
    sget-object v0, Ld;->D:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Ld;->D:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 46
    const/4 v0, 0x0

    sput-object v0, Ld;->D:Ljava/lang/ref/WeakReference;

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Ld;->D:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public static a(Landroid/widget/TextView;)V
    .locals 2
    .parameter

    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 38
    new-instance v1, Lges;

    invoke-direct {v1, v0}, Lges;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method

.method public static a(Landroid/widget/TextView;Lcom/wandoujia/p4/video2/model/VideoDetailModel;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 62
    if-nez p1, :cond_0

    .line 63
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "detailModel is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    new-instance v0, Lget;

    invoke-direct {v0, p1}, Lget;-><init>(Lcom/wandoujia/p4/video2/model/VideoDetailModel;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-void
.end method

.method public static a(Lcmm;)V
    .locals 2
    .parameter

    .prologue
    .line 157
    invoke-static {}, Lchv;->D()V

    .line 158
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcnb;

    invoke-direct {v1, p0}, Lcnb;-><init>(Lcmm;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 159
    return-void
.end method

.method public static a(Lcom/wandoujia/account/dto/AccountBean;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 127
    invoke-static {}, Lchv;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    invoke-static {}, Lchv;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p0, :cond_2

    .line 129
    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/wandoujia/account/dto/AccountBean;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lchv;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 133
    :cond_1
    return-void

    .line 128
    :cond_2
    invoke-virtual {p0}, Lcom/wandoujia/account/dto/AccountBean;->getSocials()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/wandoujia/account/dto/AccountBean;->getSocials()Ljava/util/Set;

    move-result-object v0

    invoke-static {v2, v3}, Lchv;->a(J)V

    invoke-static {v2, v3}, Lchv;->b(J)V

    invoke-static {v2, v3}, Lchv;->c(J)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/dto/SocialBean;

    invoke-virtual {v0}, Lcom/wandoujia/account/dto/SocialBean;->getPlatform()Lcom/wandoujia/account/dto/Platform;

    move-result-object v2

    sget-object v3, Lcom/wandoujia/account/dto/Platform;->SINA:Lcom/wandoujia/account/dto/Platform;

    invoke-virtual {v2, v3}, Lcom/wandoujia/account/dto/Platform;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/wandoujia/account/dto/SocialBean;->getBindTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lchv;->a(J)V

    invoke-virtual {v0}, Lcom/wandoujia/account/dto/SocialBean;->getNick()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lchv;->i(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/wandoujia/account/dto/SocialBean;->getPlatform()Lcom/wandoujia/account/dto/Platform;

    move-result-object v2

    sget-object v3, Lcom/wandoujia/account/dto/Platform;->QQ:Lcom/wandoujia/account/dto/Platform;

    invoke-virtual {v2, v3}, Lcom/wandoujia/account/dto/Platform;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/wandoujia/account/dto/SocialBean;->getBindTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lchv;->b(J)V

    invoke-virtual {v0}, Lcom/wandoujia/account/dto/SocialBean;->getNick()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lchv;->j(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/wandoujia/account/dto/SocialBean;->getPlatform()Lcom/wandoujia/account/dto/Platform;

    move-result-object v2

    sget-object v3, Lcom/wandoujia/account/dto/Platform;->RENREN:Lcom/wandoujia/account/dto/Platform;

    invoke-virtual {v2, v3}, Lcom/wandoujia/account/dto/Platform;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/wandoujia/account/dto/SocialBean;->getBindTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lchv;->c(J)V

    invoke-virtual {v0}, Lcom/wandoujia/account/dto/SocialBean;->getNick()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lchv;->k(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Lcom/wandoujia/account/dto/SocialBean;->getPlatform()Lcom/wandoujia/account/dto/Platform;

    move-result-object v2

    sget-object v3, Lcom/wandoujia/account/dto/Platform;->WECHAT:Lcom/wandoujia/account/dto/Platform;

    invoke-virtual {v2, v3}, Lcom/wandoujia/account/dto/Platform;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/wandoujia/account/dto/SocialBean;->getBindTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lchv;->d(J)V

    invoke-virtual {v0}, Lcom/wandoujia/account/dto/SocialBean;->getNick()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lchv;->l(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/wandoujia/account/dto/AccountBean;->getUid()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lchv;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/wandoujia/account/dto/AccountBean;->getAvatar()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/wandoujia/account/dto/AccountBean;->getAvatar()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lchv;->e(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p0}, Lcom/wandoujia/account/dto/AccountBean;->getNick()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lchv;->f(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/wandoujia/account/dto/AccountBean;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lchv;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/wandoujia/account/dto/AccountBean;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lchv;->g(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/wandoujia/account/dto/AccountBean;->getTelephone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lchv;->h(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/wandoujia/account/dto/AccountBean;->isEmailValidated()Z

    move-result v0

    invoke-static {v0}, Lchv;->a(Z)V

    invoke-virtual {p0}, Lcom/wandoujia/account/dto/AccountBean;->isTelephoneValidated()Z

    move-result v0

    invoke-static {v0}, Lchv;->c(Z)V

    invoke-virtual {p0}, Lcom/wandoujia/account/dto/AccountBean;->getRegisterSource()Lcom/wandoujia/account/dto/RegisterSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/account/dto/RegisterSource;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lchv;->m(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/wandoujia/account/dto/AccountBean;->isComplete()Z

    move-result v0

    invoke-static {v0}, Lchv;->b(Z)V

    invoke-virtual {p0}, Lcom/wandoujia/account/dto/AccountBean;->isNeedUpdatePassword()Z

    move-result v0

    invoke-static {v0}, Lchv;->d(Z)V

    invoke-virtual {p0}, Lcom/wandoujia/account/dto/AccountBean;->isTrusted()Z

    move-result v0

    invoke-static {v0}, Lchv;->f(Z)V

    invoke-virtual {p0}, Lcom/wandoujia/account/dto/AccountBean;->getRoles()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lchv;->a(Ljava/util/Set;)V

    goto/16 :goto_0
.end method

.method public static a(Lcom/wandoujia/image/view/AsyncImageView;Lcom/wandoujia/image/ImageUri;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p1}, Lcom/wandoujia/image/ImageUri;->getImageUri()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/wandoujia/image/ImageUri;->getImageUriType()Lcom/wandoujia/image/ImageUri$ImageUriType;

    move-result-object v1

    if-nez v1, :cond_1

    .line 48
    :cond_0
    invoke-virtual {p0, p2}, Lcom/wandoujia/image/view/AsyncImageView;->setStaticImageResource(I)V

    .line 82
    :goto_0
    return-void

    .line 51
    :cond_1
    invoke-virtual {p1}, Lcom/wandoujia/image/ImageUri;->getImageUri()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-virtual {p1}, Lcom/wandoujia/image/ImageUri;->getImageUriType()Lcom/wandoujia/image/ImageUri$ImageUriType;

    move-result-object v2

    .line 53
    sget-object v3, Ldbo;->a:[I

    invoke-virtual {v2}, Lcom/wandoujia/image/ImageUri$ImageUriType;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 79
    invoke-virtual {p0, p2}, Lcom/wandoujia/image/view/AsyncImageView;->setStaticImageResource(I)V

    goto :goto_0

    .line 55
    :pswitch_0
    invoke-virtual {p0, v1, p2}, Lcom/wandoujia/image/view/AsyncImageView;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 59
    :pswitch_1
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 60
    invoke-virtual {p0, v0}, Lcom/wandoujia/image/view/AsyncImageView;->setStaticImageResource(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    invoke-virtual {p0, p2}, Lcom/wandoujia/image/view/AsyncImageView;->setStaticImageResource(I)V

    goto :goto_0

    .line 67
    :pswitch_2
    invoke-virtual {p0, v1, p2}, Lcom/wandoujia/image/view/AsyncImageView;->d(Ljava/lang/String;I)V

    goto :goto_0

    .line 70
    :pswitch_3
    invoke-virtual {p0, v1, p2}, Lcom/wandoujia/image/view/AsyncImageView;->c(Ljava/lang/String;I)V

    goto :goto_0

    .line 73
    :pswitch_4
    invoke-virtual {p0, v1, p2}, Lcom/wandoujia/image/view/AsyncImageView;->b(Ljava/lang/String;I)V

    goto :goto_0

    .line 76
    :pswitch_5
    invoke-virtual {p1}, Lcom/wandoujia/image/ImageUri;->getImageUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ld;->H(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v2, p2}, Lcom/wandoujia/image/view/AsyncImageView;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v0

    :goto_1
    if-eqz v1, :cond_5

    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/image/view/AsyncImageView;->setStaticImageResource(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :cond_3
    invoke-virtual {p0, p2}, Lcom/wandoujia/image/view/AsyncImageView;->setStaticImageResource(I)V

    goto :goto_0

    :cond_4
    const-string v1, "^[1-9]\\d*$"

    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    goto :goto_1

    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v0

    :goto_2
    if-eqz v1, :cond_7

    invoke-virtual {p0, v2, p2}, Lcom/wandoujia/image/view/AsyncImageView;->b(Ljava/lang/String;I)V

    goto :goto_0

    :cond_6
    const-string v1, "^([a-zA-Z]+[.][a-zA-Z]+)[.]*.*"

    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    goto :goto_2

    :cond_7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, ".apk"

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    const/4 v0, 0x1

    :cond_9
    if-eqz v0, :cond_3

    invoke-virtual {p0, v2, p2}, Lcom/wandoujia/image/view/AsyncImageView;->c(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static a(Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;)V
    .locals 2
    .parameter

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/wandoujia/base/utils/TextUtil;->convert2Pinyin(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->setPinyinName(Ljava/lang/String;)V

    .line 41
    :cond_0
    return-void
.end method

.method public static a(Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;Lcom/wandoujia/logv3/model/packages/ViewLogPackage;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    invoke-direct {v0}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->status(Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->result(Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->action(Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->view_log_package(Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->result_info(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v0

    .line 33
    new-instance v1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    invoke-direct {v1}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;-><init>()V

    .line 34
    invoke-static {}, Lebl;->a()Lebl;

    move-result-object v2

    invoke-virtual {v2}, Lebl;->c()Ljava/util/List;

    move-result-object v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    new-instance v3, Lcom/wandoujia/logv3/model/packages/GameLauncherPackage$Builder;

    invoke-direct {v3}, Lcom/wandoujia/logv3/model/packages/GameLauncherPackage$Builder;-><init>()V

    .line 37
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/wandoujia/logv3/model/packages/GameLauncherPackage$Builder;->game_count(Ljava/lang/Integer;)Lcom/wandoujia/logv3/model/packages/GameLauncherPackage$Builder;

    .line 38
    invoke-virtual {v3}, Lcom/wandoujia/logv3/model/packages/GameLauncherPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->game_launcher_package(Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;)Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    .line 40
    :cond_0
    invoke-static {}, Leny;->b()Leny;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Leny;->a(Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;)V

    .line 41
    return-void
.end method

.method public static a(Lcom/wandoujia/p4/video2/model/VideoMetaModel;Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;Ljava/util/List;Lcom/wandoujia/p4/video2/model/VideoPlayModel;I)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/p4/video2/model/VideoMetaModel;",
            "Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/model/VideoPlayModel;",
            ">;",
            "Lcom/wandoujia/p4/video2/model/VideoPlayModel;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 21
    if-nez p0, :cond_0

    .line 32
    :goto_0
    return-void

    .line 24
    :cond_0
    new-instance v0, Lglx;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lglx;-><init>(Lcom/wandoujia/p4/video2/model/VideoMetaModel;Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;Ljava/util/List;Lcom/wandoujia/p4/video2/model/VideoPlayModel;I)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Lcom/wandoujia/push2/LogHelper$Action;Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;Lgzq;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    invoke-direct {v0}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;-><init>()V

    .line 54
    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->PUSH:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->action(Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    .line 55
    sget-object v1, Lgzp;->b:[I

    invoke-virtual {p0}, Lcom/wandoujia/push2/LogHelper$Action;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 96
    :goto_0
    return-void

    .line 57
    :pswitch_0
    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->START:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->status(Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    .line 86
    :goto_1
    new-instance v1, Lgzo;

    invoke-direct {v1, p2, v0}, Lgzo;-><init>(Lgzq;Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;)V

    invoke-static {v1}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 60
    :pswitch_1
    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->PENDING:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->status(Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->result(Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    goto :goto_1

    .line 63
    :pswitch_2
    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->READY:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->status(Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    .line 64
    sget-object v1, Lgzp;->a:[I

    invoke-static {}, Lgzu;->a()Lgzu;

    move-result-object v2

    iget-object v2, v2, Lgzu;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/wandoujia/push2/NotifyUtils;->a(Landroid/content/Context;)Lcom/wandoujia/push2/NotifyUtils$NotificationState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/push2/NotifyUtils$NotificationState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto :goto_1

    .line 66
    :pswitch_3
    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->SUCCESS:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->result(Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    goto :goto_1

    .line 69
    :pswitch_4
    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->FAIL:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->result(Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    goto :goto_1

    .line 72
    :pswitch_5
    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->CANCEL:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->result(Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    goto :goto_1

    .line 77
    :pswitch_6
    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->TRIGGER:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->status(Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    goto :goto_1

    .line 80
    :pswitch_7
    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->END:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->status(Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    goto :goto_1

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 64
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static a(Lcom/wandoujia/push2/LogHelper$Action;Lgzq;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 103
    sget-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->SUCCESS:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    invoke-static {p0, v0, p1}, Ld;->a(Lcom/wandoujia/push2/LogHelper$Action;Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;Lgzq;)V

    .line 104
    return-void
.end method

.method public static a(Lcvz;Lczy;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 68
    sget-object v0, Lcym;->w:Lcwh;

    invoke-virtual {v0, p1, p0}, Lcwh;->a(Lczy;Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public static a(Lggh;)V
    .locals 4
    .parameter

    .prologue
    .line 83
    invoke-static {}, Lggd;->a()Lggd;

    move-result-object v1

    iget-object v2, v1, Lggd;->a:Ljava/util/Set;

    monitor-enter v2

    :try_start_0
    iget-object v0, v1, Lggd;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v2

    :goto_0
    return-void

    :cond_1
    iget-object v0, v1, Lggd;->a:Ljava/util/Set;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static a(Lhvg;Lhvg;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 541
    invoke-interface {p0}, Lhvg;->c()Lhvs;

    move-result-object v0

    new-instance v1, Lhwl;

    invoke-direct {v1, p0, p1}, Lhwl;-><init>(Lhvg;Lhvg;)V

    invoke-interface {v0, v1}, Lhvs;->a(Lhvj;)V

    .line 543
    return-void
.end method

.method public static a(Lhvg;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 255
    invoke-interface {p0}, Lhvg;->c()Lhvs;

    move-result-object v0

    new-instance v1, Lhxj;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lhxj;-><init>(Lhvg;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    invoke-interface {v0, v1}, Lhvs;->a(Lhvj;)V

    .line 256
    return-void
.end method

.method public static a(Lhvg;Ljava/net/SocketAddress;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 199
    invoke-interface {p0}, Lhvg;->c()Lhvs;

    move-result-object v0

    new-instance v1, Lhxh;

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->BOUND:Lorg/jboss/netty/channel/ChannelState;

    invoke-direct {v1, p0, v2, p1}, Lhxh;-><init>(Lhvg;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lhvs;->a(Lhvj;)V

    .line 202
    return-void
.end method

.method public static a(Lhvr;Lhvl;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 686
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Ld;->a(Lhvr;Lhvl;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    .line 687
    return-void
.end method

.method public static a(Lhvr;Lhvl;Ljava/lang/Object;Ljava/net/SocketAddress;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 725
    new-instance v0, Lhws;

    invoke-interface {p0}, Lhvr;->a()Lhvg;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Lhws;-><init>(Lhvg;Lhvl;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    invoke-interface {p0, v0}, Lhvr;->b(Lhvj;)V

    .line 727
    return-void
.end method

.method public static a(Lhvr;Ljava/lang/Object;Ljava/net/SocketAddress;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 296
    new-instance v0, Lhxj;

    invoke-interface {p0}, Lhvr;->a()Lhvg;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lhxj;-><init>(Lhvg;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    invoke-interface {p0, v0}, Lhvr;->a(Lhvj;)V

    .line 298
    return-void
.end method

.method public static a(Lhvr;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 536
    new-instance v0, Lhwm;

    invoke-interface {p0}, Lhvr;->a()Lhvg;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lhwm;-><init>(Lhvg;Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Lhvr;->a(Lhvj;)V

    .line 537
    return-void
.end method

.method public static a(Liaz;Ljava/util/Map;[Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liaz;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 41
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    array-length v0, p2

    array-length v1, p3

    if-eq v0, v1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "replacePairs must even or null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    invoke-interface {p0}, Liaz;->f()Lhud;

    move-result-object v0

    .line 46
    invoke-interface {v0}, Lhud;->e()I

    move-result v1

    .line 48
    if-eqz p2, :cond_1

    array-length v2, p3

    if-lez v2, :cond_1

    .line 49
    invoke-static {}, Lgxg;->a()V

    .line 50
    invoke-static {p2, p3, v0, p4}, Ld;->a([Ljava/lang/String;[Ljava/lang/String;Lhud;Z)Lhud;

    move-result-object v0

    .line 51
    invoke-static {}, Lgxg;->a()V

    .line 52
    invoke-interface {p0, v0}, Liaz;->a(Lhud;)V

    .line 54
    :cond_1
    invoke-interface {v0}, Lhud;->e()I

    move-result v0

    sub-int v2, v0, v1

    .line 57
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 58
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 59
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 60
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Liaz;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 65
    :cond_2
    if-eqz v2, :cond_3

    .line 66
    const-string v0, "Content-Length"

    invoke-interface {p0, v0}, Liaz;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 67
    const-wide/16 v0, 0x0

    .line 69
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 71
    :goto_1
    const-string v3, "Content-Length"

    int-to-long v4, v2

    add-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v3, v0}, Liaz;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    :cond_3
    return-void

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static a(Ligt;Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    new-instance v1, Lorg/jboss/netty/handler/codec/compression/CompressionException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Ligt;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Ligt;->i:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/compression/CompressionException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static a(Ljava/io/File;Lajw;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-interface {p1, p0}, Lajw;->a(Ljava/io/File;)V

    .line 34
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 37
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 38
    invoke-static {v3, p1}, Ld;->a(Ljava/io/File;Lajw;)V

    .line 36
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_0
    invoke-interface {p1, v3}, Lajw;->b(Ljava/io/File;)V

    goto :goto_1

    .line 44
    :cond_1
    invoke-interface {p1, p0}, Lajw;->c(Ljava/io/File;)V

    .line 45
    return-void
.end method

.method public static synthetic a(Ljava/io/File;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Ld;->a(ILjava/io/File;Ljava/util/List;)V

    return-void
.end method

.method public static a(Ljava/lang/Object;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 75
    check-cast p0, Landroid/transition/Transition;

    .line 76
    invoke-static {p1}, Ld;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 78
    new-instance v1, Lah;

    invoke-direct {v1, v0}, Lah;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v1}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 84
    return-void
.end method

.method public static a(Ljava/lang/Object;Landroid/view/View;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    check-cast p0, Landroid/transition/Transition;

    .line 66
    invoke-virtual {p0, p1, p2}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    .line 67
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;Lam;Landroid/view/View;Lal;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/ArrayList;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Lam;",
            "Landroid/view/View;",
            "Lal;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    if-nez p0, :cond_0

    if-eqz p1, :cond_3

    :cond_0
    move-object v6, p0

    .line 104
    check-cast v6, Landroid/transition/Transition;

    .line 105
    if-eqz v6, :cond_1

    .line 106
    invoke-virtual {v6, p4}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 108
    :cond_1
    if-eqz p1, :cond_2

    .line 109
    check-cast p1, Landroid/transition/Transition;

    .line 110
    move-object/from16 v0, p9

    invoke-static {p1, v0}, Ld;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 113
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v9

    new-instance v1, Lai;

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p6

    move-object/from16 v5, p8

    move-object/from16 v7, p7

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lai;-><init>(Landroid/view/View;Lam;Ljava/util/Map;Ljava/util/Map;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/view/View;)V

    invoke-virtual {v9, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 144
    if-eqz v6, :cond_3

    new-instance v1, Laj;

    invoke-direct {v1, p5}, Laj;-><init>(Lal;)V

    invoke-virtual {v6, v1}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 146
    :cond_3
    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x0

    .line 382
    if-nez p0, :cond_1

    .line 383
    const-string v0, "null"

    invoke-interface {p2, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 384
    if-eqz p1, :cond_0

    .line 385
    const-string v0, "name"

    invoke-interface {p2, v5, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 387
    :cond_0
    const-string v0, "null"

    invoke-interface {p2, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 441
    :goto_0
    return-void

    .line 389
    :cond_1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 390
    const-string v0, "string"

    invoke-interface {p2, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 391
    if-eqz p1, :cond_2

    .line 392
    const-string v0, "name"

    invoke-interface {p2, v5, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 394
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 395
    const-string v0, "string"

    invoke-interface {p2, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 397
    :cond_3
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 398
    const-string v0, "int"

    .line 435
    :goto_1
    invoke-interface {p2, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 436
    if-eqz p1, :cond_4

    .line 437
    const-string v1, "name"

    invoke-interface {p2, v5, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 439
    :cond_4
    const-string v1, "value"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v5, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 440
    invoke-interface {p2, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 399
    :cond_5
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_6

    .line 400
    const-string v0, "long"

    goto :goto_1

    .line 401
    :cond_6
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_7

    .line 402
    const-string v0, "float"

    goto :goto_1

    .line 403
    :cond_7
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_8

    .line 404
    const-string v0, "double"

    goto :goto_1

    .line 405
    :cond_8
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 406
    const-string v0, "boolean"

    goto :goto_1

    .line 407
    :cond_9
    instance-of v0, p0, [B

    if-eqz v0, :cond_f

    .line 408
    check-cast p0, [B

    if-nez p0, :cond_a

    const-string v0, "null"

    invoke-interface {p2, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "null"

    invoke-interface {p2, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :cond_a
    const-string v0, "byte-array"

    invoke-interface {p2, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz p1, :cond_b

    const-string v0, "name"

    invoke-interface {p2, v5, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_b
    array-length v2, p0

    const-string v0, "num"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v5, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    new-instance v3, Ljava/lang/StringBuilder;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, v2, :cond_e

    aget-byte v4, p0, v1

    shr-int/lit8 v0, v4, 0x4

    if-lt v0, v6, :cond_c

    add-int/lit8 v0, v0, 0x61

    add-int/lit8 v0, v0, -0xa

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    and-int/lit16 v0, v4, 0xff

    if-lt v0, v6, :cond_d

    add-int/lit8 v0, v0, 0x61

    add-int/lit8 v0, v0, -0xa

    :goto_4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_c
    add-int/lit8 v0, v0, 0x30

    goto :goto_3

    :cond_d
    add-int/lit8 v0, v0, 0x30

    goto :goto_4

    :cond_e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "byte-array"

    invoke-interface {p2, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_0

    .line 410
    :cond_f
    instance-of v0, p0, [I

    if-eqz v0, :cond_10

    .line 411
    check-cast p0, [I

    invoke-static {p0, p1, p2}, Ld;->a([ILjava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    goto/16 :goto_0

    .line 413
    :cond_10
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_11

    .line 414
    check-cast p0, Ljava/util/Map;

    invoke-static {p0, p1, p2}, Ld;->a(Ljava/util/Map;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    goto/16 :goto_0

    .line 416
    :cond_11
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_12

    .line 417
    check-cast p0, Ljava/util/List;

    invoke-static {p0, p1, p2}, Ld;->a(Ljava/util/List;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    goto/16 :goto_0

    .line 419
    :cond_12
    instance-of v0, p0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_14

    .line 423
    const-string v0, "string"

    invoke-interface {p2, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 424
    if-eqz p1, :cond_13

    .line 425
    const-string v0, "name"

    invoke-interface {p2, v5, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 427
    :cond_13
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 428
    const-string v0, "string"

    invoke-interface {p2, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_0

    .line 431
    :cond_14
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "writeValueXml: unable to write value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    :goto_0
    return-void

    .line 31
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 33
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 34
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 35
    if-lez v1, :cond_2

    .line 36
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 39
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 317
    check-cast p0, Landroid/transition/Transition;

    .line 318
    instance-of v0, p0, Landroid/transition/TransitionSet;

    if-eqz v0, :cond_0

    .line 319
    check-cast p0, Landroid/transition/TransitionSet;

    .line 320
    invoke-virtual {p0}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v1

    .line 321
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 322
    invoke-virtual {p0, v0}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    move-result-object v2

    .line 323
    invoke-static {v2, p1}, Ld;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 325
    :cond_0
    invoke-static {p0}, Ld;->a(Landroid/transition/Transition;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 326
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v0

    .line 327
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_1

    .line 331
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 330
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 335
    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 44
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 46
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 33
    if-nez p1, :cond_0

    .line 45
    :goto_0
    return-void

    .line 37
    :cond_0
    instance-of v0, p1, Ljava/io/Serializable;

    if-nez v0, :cond_1

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data must be a serializable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_1
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Ld;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 44
    :cond_2
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Ld;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
    .locals 11

    const/16 v3, 0xc8

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    instance-of v0, p1, Lbln;

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-eqz p0, :cond_0

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p0}, Ld;->as(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " <\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    array-length v7, v6

    move v3, v1

    :goto_0
    if-ge v3, v7, :cond_4

    aget-object v0, v6, v3

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    and-int/lit8 v9, v2, 0x1

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    and-int/lit8 v2, v2, 0x8

    const/16 v9, 0x8

    if-eq v2, v9, :cond_3

    const-string v2, "_"

    invoke-virtual {v8, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "_"

    invoke-virtual {v8, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_2

    if-nez v9, :cond_1

    move v0, v1

    :goto_1
    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_3

    invoke-static {v9, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v8, v10, p2, p3}, Ld;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    invoke-static {v9}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-static {v8, v9, p2, p3}, Ld;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v6, v3

    move v2, v1

    :goto_3
    if-ge v2, v6, :cond_6

    aget-object v0, v3, v2

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v7, "set"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "has"

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v5, v0, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    new-array v8, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "get"

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v5, v0, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    new-array v8, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v7, v0, p2, p3}, Ld;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    :cond_5
    :goto_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_6
    if-eqz p0, :cond_7

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    :goto_5
    return-void

    :cond_8
    invoke-static {p0}, Ld;->as(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_a

    check-cast p1, Ljava/lang/String;

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[...]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_9
    invoke-static {p1}, Ld;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_6
    const-string v0, "\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_a
    instance-of v0, p1, [B

    if-eqz v0, :cond_b

    check-cast p1, [B

    invoke-static {p1, p3}, Ld;->a([BLjava/lang/StringBuffer;)V

    goto :goto_6

    :cond_b
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_4
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-static {}, Lcom/wandoujia/log/LogReporterFactory;->getLogReporter()Lcom/wandoujia/log/LogReporter;

    move-result-object v0

    .line 16
    if-nez v0, :cond_0

    .line 20
    :goto_0
    return-void

    .line 19
    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/wandoujia/log/LogReporter;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/StringBuilder;Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "{"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v1

    :goto_1
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "\""

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_1

    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_0

    :cond_2
    const-string v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;[D)V
    .locals 4

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    if-eqz v0, :cond_0

    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    aget-wide v2, p1, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;[F)V
    .locals 3

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    if-eqz v0, :cond_0

    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;[J)V
    .locals 4

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    if-eqz v0, :cond_0

    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    aget-wide v2, p1, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/StringBuilder;",
            "[TT;)V"
        }
    .end annotation

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    if-eqz v0, :cond_0

    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .locals 4

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    if-eqz v0, :cond_0

    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v2, "\""

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;[Z)V
    .locals 3

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    if-eqz v0, :cond_0

    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    aget-boolean v2, p1, v0

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 1
    .parameter

    .prologue
    .line 79
    const-class v0, Ljava/lang/Error;

    invoke-static {p0, v0}, Ld;->a(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 80
    const-class v0, Ljava/lang/RuntimeException;

    invoke-static {p0, v0}, Ld;->a(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 81
    return-void
.end method

.method private static a(Ljava/lang/Throwable;Ljava/lang/Class;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class",
            "<TX;>;)V^TX;"
        }
    .end annotation

    .prologue
    .line 59
    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 62
    :cond_0
    return-void
.end method

.method static a(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 235
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 236
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 237
    check-cast p1, Landroid/view/ViewGroup;

    .line 238
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 242
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_0

    .line 243
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 244
    invoke-static {p0, v2}, Ld;->a(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 248
    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    if-eqz p0, :cond_0

    .line 50
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    .line 51
    invoke-static {v0}, Ld;->a(Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;)V

    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 248
    if-nez p0, :cond_0

    .line 249
    const-string v0, "null"

    invoke-interface {p2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 250
    const-string v0, "null"

    invoke-interface {p2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 267
    :goto_0
    return-void

    .line 254
    :cond_0
    const-string v0, "list"

    invoke-interface {p2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 255
    if-eqz p1, :cond_1

    .line 256
    const-string v0, "name"

    invoke-interface {p2, v3, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 259
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 260
    const/4 v0, 0x0

    .line 261
    :goto_1
    if-ge v0, v1, :cond_2

    .line 262
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v3, p2}, Ld;->a(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 266
    :cond_2
    const-string v0, "list"

    invoke-interface {p2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method public static a(Ljava/util/Map;Landroid/view/View;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 254
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 255
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v0

    .line 256
    if-eqz v0, :cond_0

    .line 257
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 260
    check-cast p1, Landroid/view/ViewGroup;

    .line 261
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 262
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 263
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 264
    invoke-static {p0, v2}, Ld;->a(Ljava/util/Map;Landroid/view/View;)V

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    :cond_1
    return-void
.end method

.method public static a(Ljava/util/Map;Ljava/io/OutputStream;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 153
    new-instance v0, Labt;

    invoke-direct {v0}, Labt;-><init>()V

    .line 154
    const-string v1, "utf-8"

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 155
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 156
    const-string v1, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 158
    invoke-static {p0, v3, v0}, Ld;->a(Ljava/util/Map;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 159
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 160
    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 206
    if-nez p0, :cond_0

    .line 207
    const-string v0, "null"

    invoke-interface {p2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 208
    const-string v0, "null"

    invoke-interface {p2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 226
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 213
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 215
    const-string v0, "map"

    invoke-interface {p2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 216
    if-eqz p1, :cond_1

    .line 217
    const-string v0, "name"

    invoke-interface {p2, v3, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 220
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 221
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 222
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0, p2}, Ld;->a(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_1

    .line 225
    :cond_2
    const-string v0, "map"

    invoke-interface {p2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 107
    if-nez p0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 110
    :cond_0
    return-void
.end method

.method public static a(ZLjava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 121
    if-nez p0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    return-void
.end method

.method public static a(ZLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 15
    if-nez p0, :cond_0

    .line 16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_0
    return-void
.end method

.method private static a(ZZZLjava/lang/Exception;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    if-eqz p0, :cond_0

    .line 56
    sget-object v3, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->START:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    .line 57
    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->SUCCESS:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    .line 58
    const-string v0, "start"

    .line 59
    const-string v1, "start"

    .line 77
    :goto_0
    const-string v4, "has_shortcut"

    sget-object v5, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->ICON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v6, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->OPEN:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    invoke-static {v4, v5, v6, v0}, Ld;->a(Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v0

    .line 81
    sget-object v4, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->VIEW_EVENT:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    invoke-static {v3, v2, v4, v0, v1}, Ld;->a(Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;Lcom/wandoujia/logv3/model/packages/ViewLogPackage;Ljava/lang/String;)V

    .line 83
    return-void

    .line 61
    :cond_0
    sget-object v3, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->END:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    .line 62
    if-eqz p1, :cond_1

    .line 63
    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->SUCCESS:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    .line 64
    const-string v0, "success"

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "result:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 67
    :cond_1
    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->FAIL:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    .line 68
    const-string v0, "failed"

    .line 69
    if-eqz p3, :cond_2

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "exception:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 72
    :cond_2
    const-string v1, "authority empty"

    goto :goto_0
.end method

.method private static a([BLjava/lang/StringBuffer;)V
    .locals 7

    const/16 v6, 0x5c

    const/4 v1, 0x0

    const/16 v5, 0x22

    if-nez p0, :cond_0

    const-string v0, "\"\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v1

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_4

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    if-eq v2, v6, :cond_1

    if-ne v2, v5, :cond_2

    :cond_1
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    int-to-char v2, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/16 v3, 0x20

    if-lt v2, v3, :cond_3

    const/16 v3, 0x7f

    if-ge v2, v3, :cond_3

    int-to-char v2, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    const-string v3, "\\%03o"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private static a([ILjava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 336
    if-nez p0, :cond_0

    .line 337
    const-string v0, "null"

    invoke-interface {p2, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 338
    const-string v0, "null"

    invoke-interface {p2, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 357
    :goto_0
    return-void

    .line 342
    :cond_0
    const-string v0, "int-array"

    invoke-interface {p2, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 343
    if-eqz p1, :cond_1

    .line 344
    const-string v0, "name"

    invoke-interface {p2, v4, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 347
    :cond_1
    array-length v1, p0

    .line 348
    const-string v0, "num"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v4, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 350
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    .line 351
    const-string v2, "item"

    invoke-interface {p2, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 352
    const-string v2, "value"

    aget v3, p0, v0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 353
    const-string v2, "item"

    invoke-interface {p2, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 350
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 356
    :cond_2
    const-string v0, "int-array"

    invoke-interface {p2, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method public static varargs a([Ljava/util/concurrent/Executor;)V
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 49
    sget-object v2, Ligc;->a:Ljava/lang/ThreadLocal;

    new-array v4, v3, [Ljava/util/concurrent/Executor;

    move v0, v1

    :goto_0
    if-gtz v0, :cond_1

    aget-object v5, p0, v1

    if-nez v5, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "executors[0]"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    aget-object v5, p0, v1

    aput-object v5, v4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_3

    move v2, v1

    :goto_1
    if-gtz v2, :cond_3

    aget-object v5, v4, v1

    if-ne v5, v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "An Executor cannot be shut down from the thread acquired from itself.  Please make sure you are not calling releaseExternalResources() from an I/O worker thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_2
    if-gtz v2, :cond_5

    aget-object v0, v4, v2

    instance-of v5, v0, Ljava/util/concurrent/ExecutorService;

    if-eqz v5, :cond_7

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    :cond_4
    :goto_3
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_4
    const-wide/16 v6, 0x64

    :try_start_1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v6, v7, v5}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v5

    if-eqz v5, :cond_4

    move v0, v1

    :goto_5
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_2

    :catch_0
    move-exception v5

    :try_start_2
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_4

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_5

    :catch_2
    move-exception v1

    move v1, v3

    goto :goto_3

    :cond_5
    if-eqz v1, :cond_6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 50
    :cond_6
    return-void

    :catch_3
    move-exception v5

    goto :goto_4

    .line 49
    :catch_4
    move-exception v5

    goto :goto_4

    :cond_7
    move v0, v1

    goto :goto_5
.end method

.method private static a(JJ)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 105
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 106
    invoke-virtual {v1, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 107
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 108
    invoke-virtual {v2, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 109
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)Z
    .locals 1
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 96
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    :cond_0
    const/4 v0, 0x0

    .line 103
    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Landroid/content/ContentValues;Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string v2, "MicroMsg.SDK.PluginProvider.Resolver"

    invoke-static {v2}, Lcby;->a(Ljava/lang/String;)V

    move v2, v0

    :goto_0
    if-nez v2, :cond_7

    :goto_1
    return v0

    :cond_0
    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    instance-of v2, p1, Ljava/lang/Long;

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    :cond_2
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    goto :goto_0

    :cond_3
    instance-of v2, p1, Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    const/4 v2, 0x4

    goto :goto_0

    :cond_4
    instance-of v2, p1, Ljava/lang/Float;

    if-eqz v2, :cond_5

    const/4 v2, 0x5

    goto :goto_0

    :cond_5
    instance-of v2, p1, Ljava/lang/Double;

    if-eqz v2, :cond_6

    const/4 v2, 0x6

    goto :goto_0

    :cond_6
    const-string v2, "MicroMsg.SDK.PluginProvider.Resolver"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unresolve failed, unknown type="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcby;->a(Ljava/lang/String;)V

    move v2, v0

    goto :goto_0

    :cond_7
    const-string v0, "type"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "value"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 50
    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 52
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 56
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 59
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 50
    if-nez v1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v0

    .line 54
    :cond_1
    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 55
    if-eqz v2, :cond_0

    .line 59
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 61
    const/16 v3, 0x40

    :try_start_0
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 62
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const-string v3, "18da2bf10352443a00a5e046d9fca6bd"

    if-eqz v2, :cond_0

    array-length v4, v2

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_0

    aget-object v5, v2, v1

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    invoke-static {v5}, Lbwe;->a([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    .line 64
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lbuj;Landroid/content/Intent;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 82
    .line 83
    if-eqz p1, :cond_1

    iget v1, p1, Lbuj;->b:I

    const/16 v2, 0x2870

    if-gt v1, v2, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v0

    .line 85
    :cond_1
    if-eqz p1, :cond_0

    .line 90
    if-eqz p2, :cond_3

    const-string v1, "_weibo_appPackage"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    :goto_1
    if-eqz v1, :cond_2

    .line 93
    const-string v2, "_weibo_transaction"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 94
    invoke-static {p0, v1}, Lbud;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 90
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Lcom/wandoujia/p4/VerticalItem;Lfzf;)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 155
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    sget-object v0, Lfze;->a:[I

    invoke-virtual {p1}, Lcom/wandoujia/p4/VerticalItem;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 224
    :goto_0
    return v0

    .line 159
    :pswitch_0
    const-string v0, "http://www.wandoujia.com/multimedia_legal.html#video"

    .line 174
    :goto_1
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 175
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 176
    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 177
    const v4, 0x7f0a00d1

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
    const v4, 0x7f0b022d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v3, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 180
    const v4, 0x7f0a01c4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 181
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "<u>"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v5, 0x7f0e0178

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</u>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    new-instance v4, Lfzb;

    invoke-direct {v4, v0, p0, v2}, Lfzb;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/res/Resources;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    new-instance v0, Lhoq;

    invoke-direct {v0, p0}, Lhoq;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0e056e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lhoq;->a(Ljava/lang/CharSequence;)Lhoq;

    move-result-object v0

    invoke-virtual {v0, v1}, Lhoq;->a(Z)Lhoq;

    move-result-object v0

    const v1, 0x7f0e03fa

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhoq;->b(Ljava/lang/CharSequence;)Lhoq;

    move-result-object v0

    invoke-virtual {v0, v3}, Lhoq;->a(Landroid/view/View;)Lhoq;

    move-result-object v0

    const v1, 0x7f0e00de

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lfzd;

    invoke-direct {v3, p2}, Lfzd;-><init>(Lfzf;)V

    invoke-virtual {v0, v1, v3}, Lhoq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lhoq;

    move-result-object v0

    const v1, 0x7f0e027a

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lfzc;

    invoke-direct {v2, p2}, Lfzc;-><init>(Lfzf;)V

    invoke-virtual {v0, v1, v2}, Lhoq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lhoq;

    move-result-object v0

    invoke-virtual {v0}, Lhoq;->a()Lhoj;

    move-result-object v0

    invoke-virtual {v0}, Lhoj;->show()V

    .line 222
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 162
    :pswitch_1
    const-string v0, "http://www.wandoujia.com/multimedia_legal.html#music"

    goto/16 :goto_1

    .line 165
    :pswitch_2
    const-string v0, "http://www.wandoujia.com/multimedia_legal.html#book"

    goto/16 :goto_1

    .line 168
    :pswitch_3
    const-string v0, "http://www.wandoujia.com/multimedia_legal.html#wallpaper"

    goto/16 :goto_1

    :cond_0
    move v0, v1

    .line 224
    goto/16 :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 24
    .line 26
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v6

    .line 66
    :cond_0
    :goto_0
    return v0

    .line 30
    :cond_1
    if-eqz p2, :cond_2

    .line 31
    invoke-static {v8, v8, v8, v7}, Ld;->a(ZZZLjava/lang/Exception;)V

    .line 33
    :cond_2
    const-string v0, "READ_SETTINGS"

    invoke-static {p0, v0}, Lcom/wandoujia/base/utils/LauncherUtil;->getAuthorityFromPermission(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 37
    if-eqz p2, :cond_3

    .line 38
    invoke-static {v6, v6, v6, v7}, Ld;->a(ZZZLjava/lang/Exception;)V

    :cond_3
    move v0, v6

    .line 40
    goto :goto_0

    .line 45
    :cond_4
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/favorites?notify=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "title=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 49
    if-eqz v1, :cond_9

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-ne v0, v8, :cond_9

    move v0, v8

    .line 58
    :goto_1
    if-eqz v1, :cond_5

    .line 59
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 62
    :cond_5
    :goto_2
    if-eqz p2, :cond_0

    .line 63
    invoke-static {v6, v8, v0, v7}, Ld;->a(ZZZLjava/lang/Exception;)V

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    move-object v1, v7

    .line 53
    :goto_3
    if-eqz p2, :cond_6

    .line 54
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_2
    invoke-static {v2, v3, v4, v0}, Ld;->a(ZZZLjava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 56
    :cond_6
    if-eqz v1, :cond_8

    .line 59
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v6

    goto :goto_2

    .line 58
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v7, :cond_7

    .line 59
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    .line 58
    :catchall_1
    move-exception v0

    move-object v7, v1

    goto :goto_4

    .line 52
    :catch_1
    move-exception v0

    goto :goto_3

    :cond_8
    move v0, v6

    goto :goto_2

    :cond_9
    move v0, v6

    goto :goto_1
.end method

.method public static a(Landroid/net/Uri;)Z
    .locals 2
    .parameter

    .prologue
    .line 55
    invoke-static {p0}, Ld;->d(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 56
    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    .line 42
    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    move v0, v2

    .line 76
    :goto_1
    return v0

    .line 44
    :pswitch_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v2

    .line 45
    goto :goto_1

    .line 47
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    const-string v3, "forgetPassword"

    invoke-virtual {v0, v3}, Ls;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/fragment/WebViewFragment;

    .line 50
    if-eqz v0, :cond_3

    iget-object v3, v0, Lcom/wandoujia/account/fragment/WebViewFragment;->q:Landroid/webkit/WebView;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/wandoujia/account/fragment/WebViewFragment;->q:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 52
    iget-object v3, v0, Lcom/wandoujia/account/fragment/WebViewFragment;->q:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/wandoujia/account/fragment/WebViewFragment;->q:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "http://www.wandoujia.com/account"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 55
    iget-object v3, v0, Lcom/wandoujia/account/fragment/WebViewFragment;->q:Landroid/webkit/WebView;

    const-string v4, "http://www.wandoujia.com/account/?source=p3&username=%s#find"

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, ""

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 57
    iget-object v0, v0, Lcom/wandoujia/account/fragment/WebViewFragment;->q:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    move v0, v1

    .line 58
    goto :goto_1

    .line 62
    :cond_3
    instance-of v0, p0, Lcji;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    invoke-virtual {v0}, Ls;->e()I

    move-result v0

    if-gtz v0, :cond_0

    move-object v0, p0

    .line 66
    check-cast v0, Lcji;

    .line 68
    sget-object v1, Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;->CANCEL:Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;

    const/4 v3, 0x0

    invoke-interface {v0, p0, v1, v3}, Lcji;->a(Landroid/content/Context;Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;Lcom/wandoujia/account/AccountParams;)V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 76
    goto :goto_1

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Landroid/transition/Transition;)Z
    .locals 1
    .parameter

    .prologue
    .line 367
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetIds()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ld;->c(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetNames()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ld;->c(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetTypes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ld;->c(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;FF)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Landroid/view/ViewParent;->onNestedPreFling(Landroid/view/View;FF)Z
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 95
    :goto_0
    return v0

    .line 93
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ViewParent "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " does not implement interface method onNestedPreFling"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/view/ViewParent;->onNestedFling(Landroid/view/View;FFZ)Z
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 84
    :goto_0
    return v0

    .line 82
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ViewParent "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " does not implement interface method onNestedFling"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Landroid/view/ViewParent;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 34
    :goto_0
    return v0

    .line 32
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ViewParent "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " does not implement interface method onStartNestedScroll"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/wandoujia/api/proto/AppDetail;)Z
    .locals 1
    .parameter

    .prologue
    .line 71
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->extension_pack:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem;[Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 20
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem;->isValid([Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;)Z
    .locals 3
    .parameter

    .prologue
    .line 144
    invoke-static {}, Ld;->z()Lfaf;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_1

    iget-object v1, v0, Lfaf;->a:Ljava/util/List;

    invoke-static {v1}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 146
    iget-object v0, v0, Lfaf;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 147
    iget-object v2, p0, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const/4 v0, 0x0

    .line 152
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 226
    invoke-static {p0}, Ld;->b(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Download info must be not null and the contentType must be APP or PATCH"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->l:Ljava/lang/String;

    .line 231
    invoke-static {v0}, Lcom/wandoujia/base/utils/Phoenix2Util;->isPhoenix2(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 232
    iget v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->m:I

    .line 233
    sget-object v3, Lham;->f:Lham;

    iget-object v3, v3, Lhal;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/wandoujia/base/utils/SystemUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v3

    if-gt v0, v3, :cond_1

    move v0, v1

    .line 247
    :goto_0
    return v0

    :cond_1
    move v0, v2

    .line 233
    goto :goto_0

    .line 235
    :cond_2
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/wandoujia/appmanager/AppManager;->f(Ljava/lang/String;)Z

    move-result v0

    .line 236
    if-nez v0, :cond_3

    move v0, v2

    .line 237
    goto :goto_0

    .line 239
    :cond_3
    sget-object v0, Lham;->f:Lham;

    const-string v3, "app"

    invoke-virtual {v0, v3}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/AppManager;

    iget-object v3, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->l:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/wandoujia/appmanager/AppManager;->d(Ljava/lang/String;)Lcom/wandoujia/appmanager/LocalAppInfo;

    move-result-object v0

    .line 242
    if-nez v0, :cond_4

    move v0, v2

    .line 243
    goto :goto_0

    .line 245
    :cond_4
    iget v3, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->m:I

    .line 246
    if-lez v3, :cond_5

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getVersionCode()I

    move-result v0

    if-le v3, v0, :cond_5

    move v0, v1

    .line 247
    :goto_1
    if-nez v0, :cond_6

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v2

    .line 246
    goto :goto_1

    :cond_6
    move v0, v2

    .line 247
    goto :goto_0
.end method

.method public static a(Lcom/wandoujia/ripple_framework/model/Model;)Z
    .locals 2
    .parameter

    .prologue
    const v1, 0x7f0c0342

    .line 255
    if-nez p0, :cond_0

    .line 256
    const/4 v0, 0x0

    .line 264
    :goto_0
    return v0

    .line 259
    :cond_0
    invoke-virtual {p0, v1}, Lcom/wandoujia/ripple_framework/model/Model;->a(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 260
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v0}, Lcom/wandoujia/ripple_framework/model/Model;->a(ILjava/lang/Object;)V

    .line 261
    const/4 v0, 0x1

    goto :goto_0

    .line 264
    :cond_1
    invoke-virtual {p0, v1}, Lcom/wandoujia/ripple_framework/model/Model;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static a(Lias;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 108
    const-string v0, "Transfer-Encoding"

    invoke-interface {p0, v0}, Lias;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 118
    :goto_0
    return v0

    .line 113
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 114
    const-string v3, "chunked"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 118
    goto :goto_0
.end method

.method public static a(Ljava/io/File;)Z
    .locals 4
    .parameter

    .prologue
    .line 68
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-static {v3}, Ld;->a(Ljava/io/File;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/CharSequence;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 520
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 528
    :cond_0
    :goto_0
    return v0

    .line 522
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v1, v0

    .line 523
    :goto_1
    if-lt v1, v2, :cond_2

    .line 528
    const/4 v0, 0x1

    goto :goto_0

    .line 524
    :cond_2
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 523
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static a(Ljava/lang/Object;F)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 46
    check-cast p0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public static a(I)[B
    .locals 4
    .parameter

    .prologue
    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 7
    const/4 v1, 0x3

    rem-int/lit16 v2, p0, 0x100

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 9
    shr-int/lit8 v1, p0, 0x8

    .line 10
    const/4 v2, 0x2

    rem-int/lit16 v3, v1, 0x100

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 11
    shr-int/lit8 v1, v1, 0x8

    .line 12
    const/4 v2, 0x1

    rem-int/lit16 v3, v1, 0x100

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 13
    shr-int/lit8 v1, v1, 0x8

    .line 14
    const/4 v2, 0x0

    rem-int/lit16 v1, v1, 0x100

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 15
    return-object v0
.end method

.method public static a(Lahb;Ljava/io/InputStream;IZ)[B
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    if-ltz p2, :cond_0

    .line 37
    invoke-static {p0, p1, p2, p3}, Ld;->b(Lahb;Ljava/io/InputStream;IZ)[B

    move-result-object v0

    .line 39
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Ld;->c(Lahb;Ljava/io/InputStream;IZ)[B

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[I
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 598
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "num"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 606
    new-array v2, v0, [I

    .line 607
    const/4 v1, 0x0

    .line 609
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    move v4, v0

    move v0, v1

    move v1, v4

    .line 611
    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 612
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 614
    const/4 v1, 0x0

    :try_start_1
    const-string v3, "value"

    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v2, v0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    .line 637
    :cond_1
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 638
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 640
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Document ended before "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " end tag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 600
    :catch_0
    move-exception v0

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Need num attribute in byte-array"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 602
    :catch_1
    move-exception v0

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Not a number in num attribute in byte-array"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 617
    :catch_2
    move-exception v0

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Need value attribute in item"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 620
    :catch_3
    move-exception v0

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Not a number in value attribute in item"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 624
    :cond_2
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected item tag at: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 627
    :cond_3
    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 628
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 629
    return-object v2

    .line 630
    :cond_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 631
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 633
    :cond_5
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " end tag at: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static aa(Ljava/lang/String;)J
    .locals 4
    .parameter

    .prologue
    .line 108
    invoke-static {p0}, Ld;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    const-string v1, "\u7b2c"

    .line 110
    const-string v2, "\u671f"

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, v3, v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 114
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 116
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 119
    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static ab(Ljava/lang/String;)J
    .locals 2
    .parameter

    .prologue
    .line 133
    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 134
    if-ltz v0, :cond_0

    .line 135
    const/16 v1, 0x2e

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 136
    if-ltz v1, :cond_0

    .line 138
    add-int/lit8 v0, v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 140
    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static ac(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 162
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 163
    if-lez v0, :cond_0

    .line 164
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static ad(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 278
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 279
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 280
    aget-char v2, v1, v0

    const/16 v3, 0x3000

    if-ne v2, v3, :cond_1

    .line 281
    const/16 v2, 0x20

    aput-char v2, v1, v0

    .line 279
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    :cond_1
    aget-char v2, v1, v0

    const v3, 0xff00

    if-le v2, v3, :cond_0

    aget-char v2, v1, v0

    const v3, 0xff5f

    if-ge v2, v3, :cond_0

    .line 285
    aget-char v2, v1, v0

    const v3, 0xfee0

    sub-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v1, v0

    goto :goto_1

    .line 288
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static ae(Ljava/lang/String;)Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;
    .locals 3
    .parameter

    .prologue
    .line 66
    sget-object v1, Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;->DIALOG_INSTALLED:Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;

    .line 67
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wandoujia/appmanager/AppManager;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wandoujia/appmanager/AppManager;->d(Ljava/lang/String;)Lcom/wandoujia/appmanager/LocalAppInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 69
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/AppManager;->i()Ljava/util/List;

    move-result-object v0

    .line 70
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    .line 71
    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 74
    sget-object v0, Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;->DIALOG_UPGRADE:Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;

    .line 81
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    .line 78
    goto :goto_0

    .line 79
    :cond_2
    sget-object v0, Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;->DIALOG_INSTALL:Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;

    goto :goto_0
.end method

.method public static af(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Mozilla/5.0 (Linux; Android "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; Wandoujia "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/wandoujia/base/utils/SystemUtil;->getFullVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.133 Mobile Safari/535.19"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v5

    .line 79
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    const-string v2, ""

    .line 82
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v4, "v"

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v4, "vc"

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :try_start_1
    invoke-virtual {v5, v3}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 96
    if-eqz v1, :cond_8

    .line 97
    :try_start_2
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 99
    const-string v4, "[realUrl: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ",code: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "]\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move v1, v0

    move-object v0, p0

    .line 105
    :goto_0
    const/16 v7, 0x12d

    if-eq v1, v7, :cond_0

    const/16 v7, 0x12e

    if-eq v1, v7, :cond_0

    const/16 v7, 0x12f

    if-eq v1, v7, :cond_0

    const/16 v7, 0x133

    if-ne v1, v7, :cond_6

    .line 107
    :cond_0
    invoke-static {v2, p0}, Ld;->a(Lorg/apache/http/HttpResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    new-instance v0, Lcom/wandoujia/p4/webdownload/util/HttpUtils$RedirectUrlNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getRedirectUrl return null url, history: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/wandoujia/p4/webdownload/util/HttpUtils$RedirectUrlNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    :catchall_0
    move-exception v0

    invoke-virtual {v5}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    :try_start_3
    new-instance v1, Lcom/wandoujia/p4/webdownload/util/HttpUtils$RedirectUrlNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getRedirectUrl execute request1 exception, message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ld;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/wandoujia/p4/webdownload/util/HttpUtils$RedirectUrlNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    :cond_1
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    const-string v1, " "

    const-string v7, "%20"

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 116
    const-string v1, "Set-Cookie"

    invoke-interface {v2, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    .line 117
    if-eqz v2, :cond_2

    array-length v1, v2

    if-lez v1, :cond_2

    .line 118
    array-length v7, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v7, :cond_2

    aget-object v8, v2, v1

    .line 119
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v8}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "; "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 122
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 123
    const-string v1, "Cookie"

    invoke-virtual {v4, v1, v3}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 127
    :cond_3
    :try_start_4
    invoke-virtual {v5, v4}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v2

    .line 138
    if-nez v2, :cond_5

    .line 139
    :try_start_5
    new-instance v1, Lcom/wandoujia/p4/webdownload/util/HttpUtils$RedirectUrlNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fetchRedirectUrl HttpGet return null url, url:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " history: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/wandoujia/p4/webdownload/util/HttpUtils$RedirectUrlNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 128
    :catch_1
    move-exception v1

    .line 129
    const-string v2, "[realUrl: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",cookie: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez v3, :cond_4

    const-string v3, "null"

    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    new-instance v0, Lcom/wandoujia/p4/webdownload/util/HttpUtils$RedirectUrlNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getRedirectUrl execute request2 exception, message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ld;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,history: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/wandoujia/p4/webdownload/util/HttpUtils$RedirectUrlNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_5
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 143
    const-string v7, "[realUrl: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",code: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 146
    :cond_6
    const/16 v3, 0xc8

    if-ne v1, v3, :cond_7

    .line 161
    invoke-virtual {v5}, Landroid/net/http/AndroidHttpClient;->close()V

    return-object v0

    .line 149
    :cond_7
    :try_start_6
    const-string v0, "[request: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ld;->a(Lorg/apache/http/HttpMessage;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "][response: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ld;->a(Lorg/apache/http/HttpMessage;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "][content: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ld;->d(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Get illegal response code:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " history: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_8
    new-instance v0, Lcom/wandoujia/p4/webdownload/util/HttpUtils$RedirectUrlNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fetchRedirectUrl finally return null url, history: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/wandoujia/p4/webdownload/util/HttpUtils$RedirectUrlNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public static ag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 41
    .line 42
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    :goto_0
    return-object p0

    .line 45
    :cond_0
    const-string v0, "V"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "v"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 48
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "v"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static ah(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v2

    .line 105
    :goto_0
    return-object v0

    .line 73
    :cond_0
    invoke-static {p0}, Ld;->F(Ljava/lang/String;)Z

    move-result v0

    .line 74
    invoke-static {p0}, Ld;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, v2

    .line 76
    goto :goto_0

    .line 78
    :cond_1
    invoke-static {}, Lhdn;->i()Lhdn;

    move-result-object v3

    invoke-virtual {v3}, Lhdn;->f()Lapw;

    move-result-object v3

    .line 79
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v1

    .line 81
    if-eqz v0, :cond_2

    .line 82
    sget-object v0, Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;->SMALL:Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;

    iput-object v0, v1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->e:Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;

    .line 84
    :cond_2
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 85
    invoke-virtual {v3, v0, v2}, Lapw;->a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lalb;

    move-result-object v3

    .line 88
    :try_start_0
    invoke-virtual {v3}, Lalb;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 89
    if-eqz v0, :cond_4

    .line 91
    :try_start_1
    invoke-virtual {v0}, Lakk;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laqv;

    .line 92
    instance-of v4, v1, Laqu;

    if-eqz v4, :cond_3

    .line 93
    check-cast v1, Laqu;

    invoke-virtual {v1}, Laqu;->f()Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 99
    :try_start_2
    invoke-static {v0}, Lakk;->c(Lakk;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 103
    invoke-virtual {v3}, Lalb;->f()Z

    move-object v0, v1

    goto :goto_0

    .line 95
    :cond_3
    :try_start_3
    invoke-static {v0}, Lakk;->c(Lakk;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 103
    invoke-virtual {v3}, Lalb;->f()Z

    move-object v0, v2

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v1

    :try_start_4
    invoke-static {v0}, Lakk;->c(Lakk;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 103
    :catchall_1
    move-exception v0

    invoke-virtual {v3}, Lalb;->f()Z

    throw v0

    :cond_4
    invoke-virtual {v3}, Lalb;->f()Z

    move-object v0, v2

    .line 105
    goto :goto_0
.end method

.method public static ai(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 3
    .parameter

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 56
    :try_start_0
    invoke-static {}, Ld;->L()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 60
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 58
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static aj(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 80
    invoke-static {p0}, Ld;->ay(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    .line 84
    :try_start_0
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    sget-object v1, Ld;->C:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static ak(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 92
    invoke-static {p0}, Ld;->ay(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_0

    .line 96
    :try_start_0
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static al(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 64
    sget-object v0, Ld;->k:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static am(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 28
    const/16 v2, 0x7f

    if-le v1, v2, :cond_1

    .line 29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "name contains non-ascii character: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_1
    sparse-switch v1, :sswitch_data_0

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    :sswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "name contains one of the following prohibited characters: =,;: \\t\\r\\n\\v\\f: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_2
    return-void

    .line 34
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x2c -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
    .end sparse-switch
.end method

.method public static an(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 45
    if-nez p0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v1

    move v2, v1

    .line 54
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 55
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 58
    packed-switch v4, :pswitch_data_0

    .line 68
    packed-switch v2, :pswitch_data_1

    .line 54
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "value contains a prohibited character \'\\v\': "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "value contains a prohibited character \'\\f\': "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :pswitch_2
    packed-switch v4, :pswitch_data_2

    :pswitch_3
    goto :goto_1

    :pswitch_4
    move v2, v3

    .line 75
    goto :goto_1

    .line 72
    :pswitch_5
    const/4 v2, 0x1

    .line 73
    goto :goto_1

    .line 80
    :pswitch_6
    packed-switch v4, :pswitch_data_3

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Only \'\\n\' is allowed after \'\\r\': "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_7
    move v2, v3

    .line 83
    goto :goto_1

    .line 90
    :pswitch_8
    sparse-switch v4, :sswitch_data_0

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Only \' \' and \'\\t\' are allowed after \'\\n\': "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    move v2, v1

    .line 93
    goto :goto_1

    .line 101
    :cond_1
    if-eqz v2, :cond_2

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "value must not end with \'\\r\' or \'\\n\':"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_2
    return-void

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 68
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_6
        :pswitch_8
    .end packed-switch

    .line 70
    :pswitch_data_2
    .packed-switch 0xa
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 80
    :pswitch_data_3
    .packed-switch 0xa
        :pswitch_7
    .end packed-switch

    .line 90
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static ao(Ljava/lang/String;)Z
    .locals 14
    .parameter

    .prologue
    .line 211
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    .line 212
    const/4 v6, 0x0

    .line 213
    const/4 v5, 0x0

    .line 214
    const/4 v4, 0x0

    .line 215
    const/4 v3, 0x0

    .line 216
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    const/4 v2, 0x0

    .line 219
    const/4 v1, 0x0

    .line 221
    const/4 v0, 0x2

    if-ge v8, v0, :cond_0

    .line 222
    const/4 v0, 0x0

    .line 357
    :goto_0
    return v0

    .line 225
    :cond_0
    const/4 v0, 0x0

    move v12, v0

    move v0, v6

    move v6, v12

    move v13, v3

    move v3, v4

    move v4, v5

    move v5, v2

    move v2, v13

    :goto_1
    if-ge v6, v8, :cond_17

    .line 227
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 228
    sparse-switch v7, :sswitch_data_0

    .line 321
    if-nez v2, :cond_15

    .line 322
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/4 v10, 0x3

    if-le v5, v10, :cond_10

    .line 323
    const/4 v0, 0x0

    goto :goto_0

    .line 232
    :sswitch_0
    if-eqz v6, :cond_1

    .line 233
    const/4 v0, 0x0

    goto :goto_0

    .line 235
    :cond_1
    add-int/lit8 v1, v8, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x5d

    if-eq v1, v5, :cond_2

    .line 236
    const/4 v0, 0x0

    goto :goto_0

    .line 238
    :cond_2
    const/4 v1, 0x1

    .line 239
    const/4 v5, 0x4

    if-ge v8, v5, :cond_16

    .line 240
    const/4 v0, 0x0

    goto :goto_0

    .line 246
    :sswitch_1
    add-int/lit8 v5, v8, -0x1

    if-eq v6, v5, :cond_3

    .line 247
    const/4 v0, 0x0

    goto :goto_0

    .line 249
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v10, 0x5b

    if-eq v5, v10, :cond_16

    .line 250
    const/4 v0, 0x0

    goto :goto_0

    .line 256
    :sswitch_2
    add-int/lit8 v3, v3, 0x1

    .line 257
    const/4 v5, 0x3

    if-le v3, v5, :cond_4

    .line 258
    const/4 v0, 0x0

    goto :goto_0

    .line 260
    :cond_4
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ld;->az(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 261
    const/4 v0, 0x0

    goto :goto_0

    .line 263
    :cond_5
    const/4 v5, 0x6

    if-eq v4, v5, :cond_6

    if-nez v0, :cond_6

    .line 264
    const/4 v0, 0x0

    goto :goto_0

    .line 268
    :cond_6
    const/4 v5, 0x7

    if-ne v4, v5, :cond_7

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v10, 0x3a

    if-eq v5, v10, :cond_7

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v10, 0x3a

    if-eq v5, v10, :cond_7

    .line 270
    const/4 v0, 0x0

    goto :goto_0

    .line 272
    :cond_7
    const/4 v5, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    invoke-virtual {v9, v5, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move v12, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v0

    move v0, v12

    .line 225
    :goto_2
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v5, v7

    move v12, v0

    move v0, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v12

    goto/16 :goto_1

    .line 279
    :sswitch_3
    if-ne v6, v1, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v6, :cond_8

    add-int/lit8 v10, v6, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x3a

    if-eq v10, v11, :cond_9

    .line 280
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 283
    :cond_9
    add-int/lit8 v4, v4, 0x1

    .line 284
    const/4 v10, 0x7

    if-le v4, v10, :cond_a

    .line 285
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 287
    :cond_a
    if-lez v3, :cond_b

    .line 288
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 290
    :cond_b
    const/16 v10, 0x3a

    if-ne v5, v10, :cond_d

    .line 291
    if-eqz v0, :cond_c

    .line 292
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 294
    :cond_c
    const/4 v0, 0x1

    .line 296
    :cond_d
    const/4 v5, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    invoke-virtual {v9, v5, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move v12, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v0

    move v0, v12

    .line 297
    goto :goto_2

    .line 299
    :sswitch_4
    if-nez v4, :cond_e

    .line 300
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 302
    :cond_e
    add-int/lit8 v2, v2, 0x1

    .line 305
    add-int/lit8 v5, v6, 0x1

    if-lt v5, v8, :cond_f

    .line 308
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 311
    :cond_f
    add-int/lit8 v5, v6, 0x1

    :try_start_0
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v12, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v0

    move v0, v12

    .line 317
    goto :goto_2

    .line 316
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 325
    :cond_10
    const/16 v5, 0x30

    if-lt v7, v5, :cond_11

    const/16 v5, 0x39

    if-le v7, v5, :cond_13

    :cond_11
    const/16 v5, 0x41

    if-lt v7, v5, :cond_12

    const/16 v5, 0x46

    if-le v7, v5, :cond_13

    :cond_12
    const/16 v5, 0x61

    if-lt v7, v5, :cond_14

    const/16 v5, 0x66

    if-gt v7, v5, :cond_14

    :cond_13
    const/4 v5, 0x1

    :goto_3
    if-nez v5, :cond_15

    .line 326
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 325
    :cond_14
    const/4 v5, 0x0

    goto :goto_3

    .line 329
    :cond_15
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_16
    move v12, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v0

    move v0, v12

    goto/16 :goto_2

    .line 334
    :cond_17
    if-lez v3, :cond_19

    .line 336
    const/4 v0, 0x3

    if-ne v3, v0, :cond_18

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld;->az(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x7

    if-lt v4, v0, :cond_1b

    .line 337
    :cond_18
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 342
    :cond_19
    const/4 v3, 0x7

    if-eq v4, v3, :cond_1a

    if-nez v0, :cond_1a

    .line 343
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 349
    :cond_1a
    if-nez v2, :cond_1b

    .line 350
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1b

    add-int/lit8 v0, v8, -0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3a

    if-ne v0, v2, :cond_1b

    add-int/lit8 v0, v8, -0x2

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_1b

    .line 352
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 357
    :cond_1b
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 228
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_4
        0x2e -> :sswitch_2
        0x3a -> :sswitch_3
        0x5b -> :sswitch_0
        0x5d -> :sswitch_1
    .end sparse-switch
.end method

.method public static ap(Ljava/lang/String;)Z
    .locals 10
    .parameter

    .prologue
    const/16 v9, 0xff

    const/4 v8, 0x3

    const/4 v1, 0x0

    .line 390
    .line 392
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 394
    const/16 v0, 0xf

    if-le v3, v0, :cond_0

    move v0, v1

    .line 429
    :goto_0
    return v0

    .line 398
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v1

    move v0, v1

    .line 399
    :goto_1
    if-ge v2, v3, :cond_7

    .line 400
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 401
    const/16 v6, 0x2e

    if-ne v5, v6, :cond_4

    .line 402
    add-int/lit8 v0, v0, 0x1

    .line 403
    if-le v0, v8, :cond_1

    move v0, v1

    .line 404
    goto :goto_0

    .line 406
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_2

    move v0, v1

    .line 407
    goto :goto_0

    .line 409
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-le v5, v9, :cond_3

    move v0, v1

    .line 410
    goto :goto_0

    .line 412
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v4, v1, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 399
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 413
    :cond_4
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_5

    move v0, v1

    .line 414
    goto :goto_0

    .line 416
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_6

    move v0, v1

    .line 417
    goto :goto_0

    .line 419
    :cond_6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 423
    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-le v2, v9, :cond_9

    :cond_8
    move v0, v1

    .line 424
    goto :goto_0

    .line 426
    :cond_9
    if-eq v0, v8, :cond_a

    move v0, v1

    .line 427
    goto :goto_0

    .line 429
    :cond_a
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static declared-synchronized aq(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 26
    const-class v1, Ld;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static ar(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 543
    :try_start_0
    const-string v0, "&slot=\""

    .line 544
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 545
    if-lez v1, :cond_1

    .line 546
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    .line 547
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 549
    :try_start_1
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 550
    invoke-static {}, Lade;->a()Lade;

    .line 551
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 553
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object p0

    .line 558
    :cond_1
    :goto_1
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private static as(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-nez v0, :cond_0

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x5f

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static at(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-lt v4, v5, :cond_0

    const/16 v5, 0x7e

    if-gt v4, v5, :cond_0

    const/16 v5, 0x22

    if-eq v4, v5, :cond_0

    const/16 v5, 0x27

    if-eq v4, v5, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v5, "\\u%04x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static au(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 79
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 80
    if-eqz p0, :cond_0

    .line 81
    const-string v2, "&"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 82
    array-length v3, v2

    .line 88
    :goto_0
    if-lt v0, v3, :cond_1

    .line 92
    :cond_0
    return-object v1

    .line 82
    :cond_1
    aget-object v4, v2, v0

    .line 83
    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 85
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, v4, v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 86
    const/4 v6, 0x1

    aget-object v4, v4, v6

    const-string v6, "UTF-8"

    invoke-static {v4, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 85
    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private static av(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 29
    invoke-static {}, Lcom/wandoujia/base/storage/StorageManager;->getInstance()Lcom/wandoujia/base/storage/StorageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/base/storage/StorageManager;->getExternalStorageDirectories()Ljava/util/List;

    move-result-object v0

    .line 30
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 32
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 35
    :cond_1
    return-object p0
.end method

.method private static aw(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 24
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    :goto_0
    return-object p0

    .line 28
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    const-string v0, "\\|"

    const-string v1, "%7C"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    const-string p0, ""

    goto :goto_0
.end method

.method private static ax(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    .line 87
    const-string v0, "\u7b2c"

    .line 88
    const-string v1, "\u96c6"

    .line 89
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, v2, v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 93
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 95
    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static ay(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 2
    .parameter

    .prologue
    .line 67
    invoke-static {}, Ld;->L()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p0, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 71
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p0, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 75
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static az(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 362
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_1

    .line 374
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 365
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 366
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 367
    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    if-gt v2, v3, :cond_0

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 371
    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0xff

    if-gt v0, v2, :cond_0

    .line 374
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static b(II)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const v2, 0xffffff

    .line 80
    const/16 v0, 0xff

    if-ne p1, v0, :cond_0

    .line 89
    :goto_0
    return p0

    .line 83
    :cond_0
    if-nez p1, :cond_1

    .line 84
    and-int/2addr p0, v2

    goto :goto_0

    .line 86
    :cond_1
    shr-int/lit8 v0, p1, 0x7

    add-int/2addr v0, p1

    .line 87
    ushr-int/lit8 v1, p0, 0x18

    .line 88
    mul-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 89
    shl-int/lit8 v0, v0, 0x18

    and-int v1, p0, v2

    or-int p0, v0, v1

    goto :goto_0
.end method

.method private static b(JJ)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x6

    .line 113
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 114
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 115
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 116
    invoke-virtual {v1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 117
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public static b(Landroid/content/Context;F)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1686
    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 1689
    return v0
.end method

.method public static b(Landroid/graphics/Bitmap;)I
    .locals 2
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 33
    if-nez p0, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 53
    :goto_0
    return v0

    .line 40
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_1

    .line 42
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 48
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_2

    .line 49
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public static b(Landroid/view/View;)I
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 63
    sget-boolean v0, Ld;->m:Z

    if-nez v0, :cond_0

    .line 65
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "mMinWidth"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 66
    sput-object v0, Ld;->l:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 70
    :goto_0
    sput-boolean v2, Ld;->m:Z

    .line 73
    :cond_0
    sget-object v0, Ld;->l:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 75
    :try_start_1
    sget-object v0, Ld;->l:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 82
    :goto_1
    return v0

    :catch_0
    move-exception v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static b(Lcfz;Lorg/json/JSONObject;)I
    .locals 9

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez p1, :cond_1

    move v1, v2

    :goto_0
    const-string v0, "user_cards"

    invoke-static {p1, v0}, Lccx;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcfz;->O:Ljava/util/List;

    move v4, v3

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_0

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    invoke-static {v0, v3}, Lccx;->a(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    const/4 v7, 0x1

    invoke-static {v0, v7}, Lccx;->a(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    invoke-static {v0, v2}, Lccx;->a(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v0

    new-instance v8, Lcfp;

    invoke-direct {v8, v6, v7, v0, v3}, Lcfp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    iget-object v0, p0, Lcfz;->O:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_0
    const-string v0, "user_info"

    invoke-static {p1, v0}, Lccx;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcfz;->P:Lorg/json/JSONArray;

    const-string v0, "rules"

    invoke-static {p1, v0}, Lccx;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcfz;->o:Lorg/json/JSONArray;

    const-string v0, "service_url"

    invoke-static {p1, v0}, Lccx;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcfz;->M:Lorg/json/JSONObject;

    const-string v0, "bind_url"

    invoke-static {p1, v0}, Lccx;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcfz;->N:Lorg/json/JSONObject;

    const-string v0, "pan"

    invoke-static {p1, v0}, Lccx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcfz;->aa:Ljava/lang/String;

    return v1

    :cond_1
    move v1, v3

    goto :goto_0
.end method

.method public static b(Lcom/wandoujia/feed/model/Feed;)I
    .locals 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 73
    if-nez p0, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    const-string v1, "latestEpisodeNum"

    invoke-virtual {p0, v1}, Lcom/wandoujia/feed/model/Feed;->getAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 79
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;I)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 39
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 40
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 41
    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 42
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 45
    :cond_1
    return p1
.end method

.method public static b(Luv;Lub;Landroid/view/View;Landroid/view/View;Luo;Z)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-virtual {p4}, Luo;->l()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Luv;->a()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 84
    :cond_0
    const/4 v0, 0x0

    .line 96
    :goto_0
    return v0

    .line 86
    :cond_1
    if-nez p5, :cond_2

    .line 87
    invoke-virtual {p0}, Luv;->a()I

    move-result v0

    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {p1, p3}, Lub;->b(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1, p2}, Lub;->a(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 92
    invoke-static {p2}, Luo;->a(Landroid/view/View;)I

    move-result v1

    invoke-static {p3}, Luo;->a(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 96
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Luv;->a()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method public static b(Ljava/io/InputStream;)Landroid/util/Pair;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 74
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 75
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 77
    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 78
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v2, v3, :cond_0

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/util/Pair;

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;I)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/content/Context;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 32
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/ViewGroup;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 20
    invoke-static {v0, p1}, Lery;->a(Landroid/view/View;I)V

    .line 21
    return-object v0
.end method

.method public static b(Ljava/lang/Object;FF)Lcom/nineoldandroids/animation/ObjectAnimator;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    const-string v0, "translationX"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/view/ViewGroup;)Lerf;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 113
    sget-object v0, Lham;->f:Lham;

    const-string v1, "presenter"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 115
    new-instance v0, Lerf;

    invoke-direct {v0, p0}, Lerf;-><init>(Landroid/view/View;)V

    new-instance v1, Ldqk;

    invoke-direct {v1}, Ldqk;-><init>()V

    invoke-virtual {v0, v3, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldnf;

    invoke-direct {v1}, Ldnf;-><init>()V

    invoke-virtual {v0, v3, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Lhiz;

    sget-object v2, Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;->BLACK:Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;

    invoke-direct {v1, v2}, Lhiz;-><init>(Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;)V

    invoke-virtual {v0, v3, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/view/ViewGroup;Lhas;)Lerf;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 285
    invoke-static {p0, p1}, Ld;->a(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    new-instance v1, Lhjb;

    invoke-direct {v1}, Lhjb;-><init>()V

    const v2, 0x7f0c0060

    invoke-virtual {v0, v2, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldpm;

    invoke-direct {v1}, Ldpm;-><init>()V

    invoke-virtual {v0, v3, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldns;

    invoke-direct {v1}, Ldns;-><init>()V

    invoke-virtual {v0, v3, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldiq;

    invoke-direct {v1}, Ldiq;-><init>()V

    const v2, 0x7f0c0372

    invoke-virtual {v0, v2, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/wandoujia/ripple_framework/model/Model;)Lhby;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 125
    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/model/Model;->k:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    if-nez v1, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-object v0

    .line 128
    :cond_1
    new-instance v1, Lhby;

    invoke-direct {v1}, Lhby;-><init>()V

    .line 130
    sget-object v2, Lhbz;->a:[I

    iget-object v3, p0, Lcom/wandoujia/ripple_framework/model/Model;->k:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v3}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 159
    :goto_1
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    iput-object v0, v1, Lhby;->h:Ljava/lang/String;

    .line 160
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lhby;->i:Ljava/lang/String;

    .line 161
    invoke-static {p0}, Ld;->c(Lcom/wandoujia/ripple_framework/model/Model;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lhby;->g:Ljava/lang/String;

    move-object v0, v1

    .line 162
    goto :goto_0

    .line 134
    :pswitch_0
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v2

    iget-object v2, v2, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-static {v2}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/ApkDetail;

    .line 138
    sget-object v2, Lcom/wandoujia/download2/DownloadRequestParam$Type;->APP:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    iput-object v2, v1, Lhby;->a:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    .line 139
    sget-object v2, Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;->MD5:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    iput-object v2, v1, Lhby;->b:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    .line 140
    iget-object v2, v0, Lcom/wandoujia/api/proto/ApkDetail;->md5:Ljava/lang/String;

    iput-object v2, v1, Lhby;->c:Ljava/lang/String;

    .line 141
    iget-object v2, v0, Lcom/wandoujia/api/proto/ApkDetail;->download_url:Lcom/wandoujia/api/proto/DownloadUrl;

    iget-object v2, v2, Lcom/wandoujia/api/proto/DownloadUrl;->url:Ljava/lang/String;

    iput-object v2, v1, Lhby;->d:Ljava/lang/String;

    .line 142
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v2

    iget-object v2, v2, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    iput-object v2, v1, Lhby;->j:Ljava/lang/String;

    .line 143
    iget-object v2, v0, Lcom/wandoujia/api/proto/ApkDetail;->version_code:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lhby;->k:I

    .line 144
    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    iput-object v2, v1, Lhby;->l:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    .line 145
    iget-object v0, v0, Lcom/wandoujia/api/proto/ApkDetail;->bytes_:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, v1, Lhby;->p:J

    goto :goto_1

    .line 148
    :pswitch_1
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->g()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 151
    sget-object v0, Lcom/wandoujia/download2/DownloadRequestParam$Type;->COMMON:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    iput-object v0, v1, Lhby;->a:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    .line 152
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/Video;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Video;->url:Ljava/lang/String;

    .line 153
    iput-object v0, v1, Lhby;->d:Ljava/lang/String;

    .line 154
    sget-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->VIDEO:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    iput-object v0, v1, Lhby;->l:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    goto/16 :goto_1

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static b(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lhoj;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 85
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    move-object v0, v1

    .line 120
    :goto_1
    return-object v0

    .line 85
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 89
    :cond_1
    new-instance v0, Lhoq;

    invoke-direct {v0, p0}, Lhoq;-><init>(Landroid/content/Context;)V

    .line 90
    if-eqz p1, :cond_2

    .line 91
    invoke-virtual {v0, p1}, Lhoq;->a(Ljava/lang/CharSequence;)Lhoq;

    .line 93
    :cond_2
    if-eqz p2, :cond_3

    .line 94
    invoke-virtual {v0, p2}, Lhoq;->b(Ljava/lang/CharSequence;)Lhoq;

    .line 96
    :cond_3
    if-eqz p3, :cond_4

    .line 97
    invoke-virtual {v0, p3, p4}, Lhoq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lhoq;

    .line 99
    :cond_4
    if-eqz p5, :cond_5

    .line 100
    invoke-virtual {v0, p5, p6}, Lhoq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lhoq;

    .line 102
    :cond_5
    invoke-virtual {v0, v2}, Lhoq;->a(Z)Lhoq;

    .line 103
    new-instance v2, Lfnn;

    invoke-direct {v2}, Lfnn;-><init>()V

    invoke-virtual {v0, v2}, Lhoq;->a(Landroid/content/DialogInterface$OnKeyListener;)Lhoq;

    .line 118
    :try_start_0
    invoke-virtual {v0}, Lhoq;->b()Lhoj;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 120
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public static b(Lhvg;Ljava/lang/Object;)Lhvl;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 671
    invoke-static {p0}, Ld;->l(Lhvg;)Lhvl;

    move-result-object v0

    invoke-interface {p0}, Lhvg;->c()Lhvs;

    move-result-object v1

    new-instance v2, Lhws;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, p1, v3}, Lhws;-><init>(Lhvg;Lhvl;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    invoke-interface {v1, v2}, Lhvs;->b(Lhvj;)V

    return-object v0
.end method

.method public static b(Lhvg;Ljava/lang/Throwable;)Lhvl;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 496
    invoke-interface {p0}, Lhvg;->c()Lhvs;

    move-result-object v0

    new-instance v1, Lhwd;

    invoke-direct {v1, p0, p1}, Lhwd;-><init>(Lhvg;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lhvs;->a(Ljava/lang/Runnable;)Lhvl;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lhvs;)Lhvt;
    .locals 1
    .parameter

    .prologue
    .line 107
    new-instance v0, Lhvx;

    invoke-direct {v0, p0}, Lhvx;-><init>(Lhvs;)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/Object;
    .locals 4
    .parameter

    .prologue
    .line 66
    invoke-static {p0}, Labm;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 67
    invoke-static {}, Landroid/net/http/HttpResponseCache;->getInstalled()Landroid/net/http/HttpResponseCache;

    move-result-object v0

    .line 68
    if-nez v0, :cond_0

    .line 69
    invoke-static {v1}, Labm;->a(Ljava/io/File;)I

    move-result v0

    .line 70
    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Landroid/net/http/HttpResponseCache;->install(Ljava/io/File;J)Landroid/net/http/HttpResponseCache;

    move-result-object v0

    .line 72
    :cond_0
    return-object v0
.end method

.method private static b(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 690
    const-string v1, "name"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 691
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 698
    const-string v1, "null"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 761
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    if-eq v1, v6, :cond_13

    .line 762
    if-ne v1, v8, :cond_11

    .line 763
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 764
    aput-object v2, p1, v5

    .line 767
    :goto_1
    return-object v0

    .line 700
    :cond_1
    const-string v1, "string"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 701
    const-string v0, ""

    .line 703
    :cond_2
    :goto_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    if-eq v1, v6, :cond_6

    .line 704
    if-ne v1, v8, :cond_4

    .line 705
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "string"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 706
    aput-object v2, p1, v5

    goto :goto_1

    .line 711
    :cond_3
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected end tag in <string>: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 714
    :cond_4
    const/4 v3, 0x4

    if-ne v1, v3, :cond_5

    .line 715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 716
    :cond_5
    if-ne v1, v7, :cond_2

    .line 717
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected start tag in <string>: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 722
    :cond_6
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Unexpected end of document in <string>"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 724
    :cond_7
    const-string v1, "int"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 725
    const-string v1, "value"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 726
    :cond_8
    const-string v1, "long"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 727
    const-string v1, "value"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    .line 728
    :cond_9
    const-string v1, "float"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 729
    new-instance v1, Ljava/lang/Float;

    const-string v4, "value"

    invoke-interface {p0, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 730
    :cond_a
    const-string v1, "double"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 731
    new-instance v1, Ljava/lang/Double;

    const-string v4, "value"

    invoke-interface {p0, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 732
    :cond_b
    const-string v1, "boolean"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 733
    const-string v1, "value"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 734
    :cond_c
    const-string v0, "int-array"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 735
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 736
    const-string v0, "int-array"

    invoke-static {p0, v0}, Ld;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[I

    move-result-object v0

    .line 737
    aput-object v2, p1, v5

    goto/16 :goto_1

    .line 741
    :cond_d
    const-string v0, "map"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 742
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 743
    const-string v0, "map"

    invoke-static {p0, v0, p1}, Ld;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 744
    aput-object v2, p1, v5

    goto/16 :goto_1

    .line 748
    :cond_e
    const-string v0, "list"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 749
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 750
    const-string v0, "list"

    invoke-static {p0, v0, p1}, Ld;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 751
    aput-object v2, p1, v5

    goto/16 :goto_1

    .line 756
    :cond_f
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown tag: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 769
    :cond_10
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected end tag in <"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 771
    :cond_11
    const/4 v4, 0x4

    if-ne v1, v4, :cond_12

    .line 772
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected text in <"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 774
    :cond_12
    if-ne v1, v7, :cond_0

    .line 775
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected start tag in <"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 779
    :cond_13
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected end of document in <"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 1
    .parameter

    .prologue
    .line 155
    invoke-static {p0}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Ld;->a(Ljava/lang/Throwable;)V

    .line 156
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    .line 20
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "DES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 21
    const-string v1, "DES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 22
    invoke-virtual {v1, p0, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 26
    if-ne p0, v3, :cond_0

    .line 28
    invoke-static {p1}, Lwn;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 32
    :goto_0
    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 36
    if-ne p0, v3, :cond_1

    .line 38
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 46
    :goto_1
    return-object v0

    .line 30
    :cond_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 40
    :cond_1
    invoke-static {v1}, Lwn;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 44
    :catch_0
    move-exception v0

    invoke-static {v0}, Ld;->b(Ljava/lang/Object;)V

    .line 46
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static b(J)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    .line 56
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 60
    sub-long v4, p0, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    .line 61
    invoke-static {v2, v3, p0, p1}, Ld;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM\u6708dd\u65e5"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 100
    :goto_0
    return-object v0

    .line 64
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy\u5e74MM\u6708dd\u65e5"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_1
    invoke-static {v2, v3, p0, p1}, Ld;->a(JJ)Z

    move-result v1

    if-nez v1, :cond_2

    .line 70
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy\u5e74MM\u6708dd\u65e5"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 74
    :cond_2
    sub-long v4, v2, p0

    .line 75
    const-string v1, "ugc"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1, v6, v7}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    const-wide/16 v6, 0x1388

    cmp-long v1, v4, v6

    if-gez v1, :cond_4

    .line 77
    const-wide/16 v2, 0x3e8

    div-long v2, v4, v2

    long-to-int v1, v2

    .line 78
    if-nez v1, :cond_3

    .line 79
    const v1, 0x7f0e03fd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 81
    :cond_3
    const v2, 0x7f0e0530

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 83
    :cond_4
    const-wide/16 v6, 0x2710

    cmp-long v1, v4, v6

    if-gez v1, :cond_5

    .line 84
    const v1, 0x7f0e0530

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 85
    :cond_5
    const-wide/32 v6, 0xea60

    cmp-long v1, v4, v6

    if-gez v1, :cond_6

    .line 86
    const-wide/16 v2, 0x2710

    div-long v2, v4, v2

    long-to-int v1, v2

    mul-int/lit8 v1, v1, 0xa

    .line 87
    const v2, 0x7f0e0530

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 88
    :cond_6
    const-wide/32 v6, 0x36ee80

    cmp-long v1, v4, v6

    if-gez v1, :cond_7

    .line 89
    const v1, 0x7f0e03f5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-wide/32 v6, 0xea60

    div-long/2addr v4, v6

    long-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 91
    :cond_7
    const-wide/32 v6, 0x401640

    cmp-long v1, v4, v6

    if-gez v1, :cond_8

    .line 92
    const v1, 0x7f0e036c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 93
    :cond_8
    invoke-static {v2, v3, p0, p1}, Ld;->b(JJ)I

    move-result v1

    if-nez v1, :cond_9

    .line 94
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 95
    const v2, 0x7f0e05ae

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 96
    :cond_9
    invoke-static {v2, v3, p0, p1}, Ld;->b(JJ)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 97
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 98
    const v2, 0x7f0e069f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 100
    :cond_a
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM\u6708dd\u65e5"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static b(Lcht;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcht;->a:Ljava/util/Vector;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchs;

    new-instance v4, Ljava/lang/String;

    iget-object v5, v0, Lchs;->b:[B

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v1, Ljava/lang/String;

    iget-object v0, v0, Lchs;->d:[B

    const-string v3, "UTF-8"

    invoke-direct {v1, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_1
.end method

.method public static b(Lcom/wandoujia/api/proto/AppDetail;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 62
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->extension_pack:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->extension_pack:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/ExtensionPack;

    iget-object v0, v0, Lcom/wandoujia/api/proto/ExtensionPack;->size:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->extension_pack:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/ExtensionPack;

    iget-object v0, v0, Lcom/wandoujia/api/proto/ExtensionPack;->size:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Lcom/wandoujia/base/utils/TextUtil;->formatSizeInfo(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/ApkDetail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/ApkDetail;->bytes_:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/ApkDetail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/ApkDetail;->bytes_:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Lcom/wandoujia/base/utils/TextUtil;->formatSizeInfo(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_1
    const-string v0, "0"

    goto :goto_0
.end method

.method public static b(Lcom/wandoujia/p4/video2/model/VideoDetailModel;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v0

    iget-object v3, v0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->providerNames:Ljava/util/List;

    .line 67
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 68
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 69
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v1, v0, :cond_0

    .line 71
    const/16 v0, 0x2c

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static b(Lcom/wandoujia/p4/video2/model/VideoMetaModel;Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 259
    iget-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoType:Lcom/wandoujia/p4/video/model/VideoType;

    sget-object v1, Lcom/wandoujia/p4/video/model/VideoType;->MOVIE:Lcom/wandoujia/p4/video/model/VideoType;

    if-ne v0, v1, :cond_0

    .line 261
    iget-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoTitle:Ljava/lang/String;

    .line 268
    :goto_0
    return-object v0

    .line 263
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Ld;->a(Lcom/wandoujia/p4/video2/model/VideoMetaModel;Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 268
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 10
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 12
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    :goto_1
    return-object v0

    .line 12
    :cond_0
    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-byte v3, v1, v0

    and-int/lit8 v3, v3, 0xf

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;Landroid/content/Context;II)Ljava/lang/String;
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v11, 0x5f

    const/4 v3, -0x1

    const/4 v10, 0x0

    .line 126
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget p2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 131
    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 132
    if-ne v0, v3, :cond_2

    .line 175
    :cond_1
    :goto_0
    return-object p0

    .line 135
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 136
    invoke-virtual {p0, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-virtual {v0, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 138
    if-eq v1, v3, :cond_1

    .line 143
    add-int/lit8 v2, v1, 0x1

    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 147
    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-virtual {v0, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 149
    if-eq v1, v3, :cond_1

    .line 154
    add-int/lit8 v2, v1, 0x1

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    .line 158
    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 161
    if-eqz v5, :cond_1

    if-eqz v6, :cond_1

    .line 164
    int-to-double v0, p3

    int-to-double v2, v5

    div-double/2addr v0, v2

    .line 165
    int-to-double v2, p2

    int-to-double v8, v6

    div-double/2addr v2, v8

    .line 166
    cmpl-double v8, v0, v2

    if-lez v8, :cond_3

    .line 167
    :goto_1
    const-wide/high16 v2, 0x3ff0

    cmpl-double v2, v0, v2

    if-gtz v2, :cond_1

    .line 170
    int-to-double v2, v5

    mul-double/2addr v2, v0

    double-to-int v2, v2

    .line 171
    int-to-double v8, v6

    mul-double/2addr v0, v8

    double-to-int v0, v0

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    const-string v1, "ImageUrlBuilder"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Generate thumbnail from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " into "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p0, v0

    .line 175
    goto/16 :goto_0

    :cond_3
    move-wide v0, v2

    .line 166
    goto :goto_1

    .line 156
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 145
    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 15
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Ld;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "\"first_pay_flag\":\"%s\",%s,\"pay_type\":\"%s\",\"pay_mode\":\"%s\""

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lcvo;

    invoke-direct {v0}, Lcvo;-><init>()V

    .line 64
    invoke-virtual {v0, p0}, Lcvo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 173
    const-string v0, "Set-Cookie"

    invoke-interface {p0, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    .line 174
    if-eqz v1, :cond_1

    .line 175
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 176
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 177
    const-string v5, "wdj_auth"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 178
    const-string v4, "wdj_auth=([^;]*?);"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 179
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 180
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 181
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 186
    :goto_1
    return-object v0

    .line 175
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public static b([B)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 553
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 555
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 557
    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 558
    invoke-static {p0, p2}, Ld;->b(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 559
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 569
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 571
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Document ended before "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " end tag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 561
    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 562
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 563
    return-object v1

    .line 565
    :cond_3
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " end tag at: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/model/VideoPlayModel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    .line 59
    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerName:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
    :cond_0
    return-object v1
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lade;->a()Lade;

    move-result-object v0

    invoke-virtual {v0}, Lade;->b()Z

    .line 16
    return-void
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x400

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 16
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 18
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 22
    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x10

    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    :goto_0
    return-void

    .line 36
    :cond_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 35
    check-cast v0, Landroid/app/NotificationManager;

    .line 37
    const-string v1, "Weibo"

    const-string v2, "\u5fae\u535a"

    const-string v3, "\u5fae\u535a"

    invoke-static {v1, v2, v3}, Lbwf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lbb;

    invoke-direct {v3, p0}, Lbb;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v6}, Lbb;->b(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lbb;->a(J)Lbb;

    const-string v1, "ic_com_sina_weibo_sdk_weibo_logo.png"

    invoke-static {p0, v1}, Lbwf;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v3, Lbb;->f:Landroid/graphics/Bitmap;

    const-string v1, "com_sina_weibo_sdk_weibo_logo"

    const-string v4, "drawable"

    invoke-static {p0, v1, v4}, Ld;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Lbb;->a(I)Lbb;

    invoke-virtual {v3, v2}, Lbb;->a(Ljava/lang/CharSequence;)Lbb;

    invoke-virtual {v3, p1}, Lbb;->d(Ljava/lang/CharSequence;)Lbb;

    invoke-virtual {v3, p1}, Lbb;->b(Ljava/lang/CharSequence;)Lbb;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v4, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v7, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    :goto_2
    iput-object v1, v3, Lbb;->d:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Lbb;->a()Landroid/app/Notification;

    move-result-object v1

    .line 38
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 37
    :cond_1
    const v1, 0x108009b

    goto :goto_1

    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v7, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    goto :goto_2
.end method

.method public static b(Landroid/os/Parcel;I)V
    .locals 2

    invoke-static {p0, p1}, Ld;->a(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method private static b(Landroid/os/Parcel;II)V
    .locals 4

    invoke-static {p0, p1}, Ld;->a(Landroid/os/Parcel;I)I

    move-result v0

    if-eq v0, p2, :cond_0

    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected size "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v1

    :cond_0
    return-void
.end method

.method public static b(Landroid/view/View;Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-static {}, Leny;->b()Leny;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Leny;->a(Landroid/view/View;Ljava/lang/String;)Leny;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p3, p4}, Leny;->a(Landroid/view/View;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)Leny;

    .line 42
    return-void
.end method

.method public static b(Lhvg;)V
    .locals 4
    .parameter

    .prologue
    .line 166
    invoke-interface {p0}, Lhvg;->b()Lhvg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    invoke-interface {p0}, Lhvg;->b()Lhvg;

    move-result-object v0

    invoke-static {v0, p0}, Ld;->a(Lhvg;Lhvg;)V

    .line 170
    :cond_0
    invoke-interface {p0}, Lhvg;->c()Lhvs;

    move-result-object v0

    new-instance v1, Lhxh;

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->OPEN:Lorg/jboss/netty/channel/ChannelState;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v1, p0, v2, v3}, Lhxh;-><init>(Lhvg;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lhvs;->a(Lhvj;)V

    .line 173
    return-void
.end method

.method public static b(Lhvg;J)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 320
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 326
    :goto_0
    return-void

    .line 324
    :cond_0
    invoke-interface {p0}, Lhvg;->c()Lhvs;

    move-result-object v0

    new-instance v1, Lhwp;

    invoke-direct {v1, p0, p1, p2}, Lhwp;-><init>(Lhvg;J)V

    invoke-interface {v0, v1}, Lhvs;->a(Lhvj;)V

    goto :goto_0
.end method

.method public static b(Lhvg;Ljava/net/SocketAddress;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 227
    invoke-interface {p0}, Lhvg;->c()Lhvs;

    move-result-object v0

    new-instance v1, Lhxh;

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->CONNECTED:Lorg/jboss/netty/channel/ChannelState;

    invoke-direct {v1, p0, v2, p1}, Lhxh;-><init>(Lhvg;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lhvs;->a(Lhvj;)V

    .line 230
    return-void
.end method

.method public static b(Lias;)V
    .locals 2
    .parameter

    .prologue
    .line 122
    const-string v0, "Transfer-Encoding"

    invoke-interface {p0, v0}, Lias;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 123
    const-string v1, "chunked"

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 124
    const-string v1, "Transfer-Encoding"

    invoke-interface {p0, v1, v0}, Lias;->a(Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 125
    return-void
.end method

.method public static b(Ljava/io/File;)V
    .locals 4
    .parameter

    .prologue
    .line 29
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    :cond_0
    return-void

    .line 36
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2

    .line 37
    new-instance v0, Lcom/facebook/common/file/FileUtils$CreateDirectoryException;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/facebook/common/file/FileUtils$FileDeleteException;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/common/file/FileUtils$FileDeleteException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/facebook/common/file/FileUtils$CreateDirectoryException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 44
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/facebook/common/file/FileUtils$CreateDirectoryException;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/common/file/FileUtils$CreateDirectoryException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 92
    instance-of v0, p0, Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-static {}, Lade;->a()Lade;

    move-result-object v0

    invoke-virtual {v0}, Lade;->b()Z

    goto :goto_0
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 8
    if-nez p0, :cond_0

    .line 9
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " == null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 346
    check-cast p0, Landroid/transition/Transition;

    .line 347
    instance-of v1, p0, Landroid/transition/TransitionSet;

    if-eqz v1, :cond_0

    .line 348
    check-cast p0, Landroid/transition/TransitionSet;

    .line 349
    invoke-virtual {p0}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v1

    .line 350
    :goto_0
    if-ge v0, v1, :cond_1

    .line 351
    invoke-virtual {p0, v0}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    move-result-object v2

    .line 352
    invoke-static {v2, p1}, Ld;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 350
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 354
    :cond_0
    invoke-static {p0}, Ld;->a(Landroid/transition/Transition;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 355
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v1

    .line 356
    invoke-static {v1}, Ld;->c(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 358
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    .line 359
    :goto_1
    if-ge v1, v2, :cond_1

    .line 360
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 359
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 364
    :cond_1
    return-void
.end method

.method public static b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 157
    if-nez p0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 160
    :cond_0
    return-void
.end method

.method public static b(ZLjava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 172
    if-nez p0, :cond_0

    .line 173
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_0
    return-void
.end method

.method public static b(I)Z
    .locals 1
    .parameter

    .prologue
    .line 74
    if-eqz p0, :cond_0

    const/4 v0, -0x2

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x1000

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 46
    if-nez p1, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v0

    .line 49
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 50
    const-string v3, "launch_from"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Ld;->t:Ljava/lang/String;

    .line 51
    const-string v3, "launch_keyword"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Ld;->u:Ljava/lang/String;

    .line 52
    const-string v3, "notification_id"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    sput v3, Ld;->s:I

    .line 61
    const-string v3, "phoenix.intent.action.NAVIGATE_TO_ACTIVITY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 62
    const-string v0, "intent"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    invoke-static {}, Ldjv;->a()Ldjv;

    move-result-object v2

    sget v3, Ld;->s:I

    invoke-virtual {v2, v3}, Ldjv;->a(I)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    :try_start_0
    const-string v3, "statusbar"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "android.app.StatusBarManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    if-eqz v3, :cond_2

    const/16 v5, 0x10

    if-gt v2, v5, :cond_4

    const-string v2, "collapse"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v4, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    :goto_2
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_3
    const/high16 v2, 0x1000

    :try_start_1
    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "launch_from"

    sget-object v3, Ld;->t:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "launch_keyword"

    sget-object v3, Ld;->u:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_4
    move v0, v1

    .line 63
    goto :goto_0

    .line 62
    :cond_3
    const-string v2, "?"

    const-string v3, "#"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "&"

    const-string v3, ";"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    :try_start_2
    const-string v2, "collapsePanels"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v4, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/wandoujia/jupiter/activity/HomeActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "launch_from"

    sget-object v3, Ld;->t:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "launch_keyword"

    sget-object v3, Ld;->u:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    .line 64
    :cond_5
    const-string v3, "phoenix.intent.action.GEN_NOTIFY_CARD"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->d()Lcom/wandoujia/jupiter/JupiterApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/jupiter/JupiterApplication;->a:Ldka;

    new-instance v2, Ldkd;

    invoke-direct {v2, v0}, Ldkd;-><init>(Ldka;)V

    invoke-static {v2}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    move v0, v1

    .line 66
    goto/16 :goto_0

    :catch_1
    move-exception v2

    goto :goto_3
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v2, 0x20

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static b(Landroid/net/Uri;)Z
    .locals 2
    .parameter

    .prologue
    .line 88
    invoke-static {p0}, Ld;->d(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 89
    const-string v1, "asset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static b(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)Z
    .locals 2
    .parameter

    .prologue
    .line 251
    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->e:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    sget-object v1, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->e:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    sget-object v1, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->PATCH:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 54
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lahb;Ljava/io/InputStream;IZ)[B
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 46
    new-array v3, p2, [B

    .line 47
    const/4 v1, 0x0

    .line 49
    const/16 v2, 0x400

    :try_start_0
    invoke-virtual {p0, v2}, Lahb;->a(I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    move v4, v0

    move-object v1, v3

    .line 55
    :goto_0
    if-eqz p3, :cond_0

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v3, -0x1

    if-eq v5, v3, :cond_2

    .line 57
    add-int v3, v5, v4

    array-length v6, v1

    if-le v3, v6, :cond_1

    .line 59
    add-int v3, v5, v4

    mul-int/lit8 v3, v3, 0x2

    const/16 v6, 0x400

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v3, v3, [B

    .line 60
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v1, v6, v3, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v3

    .line 63
    :cond_1
    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    add-int v3, v4, v5

    move v4, v3

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    if-eqz v0, :cond_3

    .line 72
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Lahb;->a([B)V

    throw v0

    .line 76
    :cond_3
    :try_start_2
    array-length v0, v1

    if-le v0, v4, :cond_4

    .line 77
    new-array v0, v4, [B

    .line 78
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v3, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    :goto_2
    invoke-virtual {p0, v2}, Lahb;->a([B)V

    return-object v0

    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method public static b(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)[TT;"
        }
    .end annotation

    invoke-static {p0, p1}, Ld;->a(Landroid/os/Parcel;I)I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;F)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 14
    if-nez p0, :cond_0

    .line 15
    const/high16 v0, -0x4080

    .line 17
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    goto :goto_0
.end method

.method public static c(Landroid/view/View;)I
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 86
    sget-boolean v0, Ld;->o:Z

    if-nez v0, :cond_0

    .line 88
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "mMinHeight"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 89
    sput-object v0, Ld;->n:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 93
    :goto_0
    sput-boolean v2, Ld;->o:Z

    .line 96
    :cond_0
    sget-object v0, Ld;->n:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 98
    :try_start_1
    sget-object v0, Ld;->n:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 105
    :goto_1
    return v0

    :catch_0
    move-exception v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static c(Ljava/io/InputStream;)I
    .locals 6
    .parameter

    .prologue
    const/16 v3, 0xff

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 73
    :try_start_0
    invoke-static {p0}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-static {p0, v2, v4}, Ld;->a(Ljava/io/InputStream;IZ)I

    move-result v2

    if-ne v2, v3, :cond_5

    move v2, v3

    :goto_1
    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-static {p0, v2, v4}, Ld;->a(Ljava/io/InputStream;IZ)I

    move-result v2

    goto :goto_1

    :cond_1
    const/16 v4, 0xe1

    if-ne v2, v4, :cond_2

    :goto_2
    if-eqz v1, :cond_6

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Ld;->a(Ljava/io/InputStream;IZ)I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/4 v2, 0x6

    if-le v1, v2, :cond_6

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Ld;->a(Ljava/io/InputStream;IZ)I

    move-result v2

    add-int/lit8 v1, v1, -0x4

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Ld;->a(Ljava/io/InputStream;IZ)I

    move-result v3

    add-int/lit8 v1, v1, -0x2

    const v4, 0x45786966

    if-ne v2, v4, :cond_6

    if-nez v3, :cond_6

    .line 74
    :goto_3
    if-nez v1, :cond_7

    .line 79
    :goto_4
    return v0

    .line 73
    :cond_2
    const/16 v4, 0xd8

    if-eq v2, v4, :cond_0

    if-eq v2, v1, :cond_0

    const/16 v4, 0xd9

    if-eq v2, v4, :cond_3

    const/16 v4, 0xda

    if-ne v2, v4, :cond_4

    :cond_3
    move v1, v0

    goto :goto_2

    :cond_4
    const/4 v2, 0x2

    const/4 v4, 0x0

    invoke-static {p0, v2, v4}, Ld;->a(Ljava/io/InputStream;IZ)I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    int-to-long v4, v2

    invoke-virtual {p0, v4, v5}, Ljava/io/InputStream;->skip(J)J

    goto :goto_0

    .line 79
    :catch_0
    move-exception v1

    goto :goto_4

    :cond_5
    move v1, v0

    .line 73
    goto :goto_2

    :cond_6
    move v1, v0

    goto :goto_3

    .line 77
    :cond_7
    invoke-static {p0, v1}, Lauz;->a(Ljava/io/InputStream;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_4
.end method

.method public static c(Ljava/lang/String;I)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 54
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 55
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 56
    const p1, 0x7fffffff

    .line 63
    :goto_0
    return p1

    .line 57
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 58
    const/4 p1, 0x0

    goto :goto_0

    .line 60
    :cond_1
    long-to-int p1, v0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static c(Lcom/wandoujia/feed/model/Feed;)J
    .locals 4
    .parameter

    .prologue
    const-wide/16 v0, -0x1

    .line 95
    if-nez p0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-wide v0

    .line 98
    :cond_1
    const-string v2, "latestEpisodeDate"

    invoke-virtual {p0, v2}, Lcom/wandoujia/feed/model/Feed;->getAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 101
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static c(Ljava/lang/Object;)Lakb;
    .locals 4
    .parameter

    .prologue
    .line 118
    new-instance v1, Lakb;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\$[0-9]+"

    const-string v3, "\\$"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v0, 0x24

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    const/16 v0, 0x2e

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lakb;-><init>(Ljava/lang/String;B)V

    return-object v1
.end method

.method public static c(Ljava/lang/Throwable;)Lalb;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lalb",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Lalh;

    invoke-direct {v0}, Lalh;-><init>()V

    .line 25
    invoke-virtual {v0, p0}, Lalh;->a(Ljava/lang/Throwable;)Z

    .line 26
    return-object v0
.end method

.method public static c(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 16
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020220

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 32
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 33
    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 34
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Lcom/wandoujia/base/utils/ImageUtil;->creatBitmapSafty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 36
    if-nez v3, :cond_0

    .line 45
    :goto_0
    return-object v0

    .line 39
    :cond_0
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 40
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v5, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 41
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 42
    int-to-float v0, v0

    const v1, 0x3f066666

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v6, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const v0, 0x3f266666

    mul-float/2addr v0, v6

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v8, v7, v0, v1, v9}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3ecccccd

    mul-float/2addr v0, v1

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3ecccccd

    mul-float/2addr v1, v2

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    add-float/2addr v0, v1

    const v1, 0x3f99999a

    mul-float/2addr v1, v6

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    const v0, 0x3f99999a

    mul-float/2addr v0, v6

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020024

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v10, Landroid/graphics/NinePatch;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    const/4 v11, 0x0

    invoke-direct {v10, v1, v2, v11}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    float-to-int v2, v0

    float-to-int v11, v6

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v11, v12}, Lcom/wandoujia/base/utils/ImageUtil;->creatBitmapSafty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_2

    move-object v0, v1

    .line 43
    :goto_1
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v5, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object v0, v3

    .line 45
    goto/16 :goto_0

    .line 42
    :cond_2
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v11, Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/4 v13, 0x0

    float-to-int v14, v0

    float-to-int v15, v6

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v10, v1, v11}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    const/high16 v10, 0x4000

    div-float/2addr v0, v10

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v0, v10

    const/high16 v10, 0x4000

    div-float/2addr v6, v10

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v6, v9

    invoke-virtual {v1, v7, v0, v6, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object v0, v2

    goto :goto_1
.end method

.method public static c(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-static {p0, p1}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 56
    :cond_0
    return-object v0
.end method

.method public static c(Landroid/content/Context;)Lcom/alipay/squareup/picasso/Loader;
    .locals 1
    .parameter

    .prologue
    .line 287
    new-instance v0, Laba;

    invoke-direct {v0, p0}, Laba;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static c(J)Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 78
    invoke-static {}, Lggd;->a()Lggd;

    move-result-object v0

    const-string v1, "video_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "timestamp desc"

    invoke-virtual {v0, v1, v2, v3}, Lggd;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

    goto :goto_0
.end method

.method public static c(Landroid/view/ViewGroup;Lhas;)Lerf;
    .locals 6
    .parameter
    .parameter

    .prologue
    const v5, 0x7f0c0129

    const/4 v4, 0x0

    .line 311
    invoke-static {p0, p1}, Ld;->a(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    new-instance v1, Ldpr;

    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->UI:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->CARD:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    invoke-direct {v1, v2, v3}, Ldpr;-><init>(Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;)V

    const v2, 0x7f0c0351

    invoke-virtual {v0, v2, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldlf;

    invoke-direct {v1}, Ldlf;-><init>()V

    const v2, 0x7f0c0016

    invoke-virtual {v0, v2, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldqg;

    invoke-direct {v1}, Ldqg;-><init>()V

    invoke-virtual {v0, v5, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldqh;

    invoke-direct {v1}, Ldqh;-><init>()V

    invoke-virtual {v0, v5, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldqj;

    invoke-direct {v1, v4}, Ldqj;-><init>(B)V

    invoke-virtual {v0, v4, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldns;

    invoke-direct {v1}, Ldns;-><init>()V

    invoke-virtual {v0, v4, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lhvg;)Lhvl;
    .locals 2
    .parameter

    .prologue
    .line 344
    invoke-interface {p0}, Lhvg;->c()Lhvs;

    move-result-object v0

    new-instance v1, Lhvz;

    invoke-direct {v1, p0}, Lhvz;-><init>(Lhvg;)V

    invoke-interface {v0, v1}, Lhvs;->a(Ljava/lang/Runnable;)Lhvl;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lhvg;Ljava/net/SocketAddress;)Lhvl;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 557
    if-nez p1, :cond_0

    .line 558
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "localAddress"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 560
    :cond_0
    invoke-static {p0}, Ld;->l(Lhvg;)Lhvl;

    move-result-object v0

    .line 561
    invoke-interface {p0}, Lhvg;->c()Lhvs;

    move-result-object v1

    new-instance v2, Lhwq;

    sget-object v3, Lorg/jboss/netty/channel/ChannelState;->BOUND:Lorg/jboss/netty/channel/ChannelState;

    invoke-direct {v2, p0, v0, v3, p1}, Lhwq;-><init>(Lhvg;Lhvl;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lhvs;->b(Lhvj;)V

    .line 563
    return-object v0
.end method

.method public static c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 225
    if-nez p0, :cond_0

    .line 226
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_0
    return-object p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 137
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 138
    const/16 v2, 0x40

    .line 137
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 142
    const/4 v0, 0x0

    :goto_0
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v3

    if-lt v0, v3, :cond_0

    move-object v0, v1

    .line 148
    :goto_1
    return-object v0

    .line 140
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    .line 143
    :cond_0
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    .line 144
    if-eqz v3, :cond_1

    .line 145
    invoke-static {v3}, Lbwe;->a([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 142
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static c(Lcom/wandoujia/p4/video2/model/VideoDetailModel;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    iget-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->marketRatingsProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 83
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->marketRatingsProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->marketRatingsProviders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->marketRatingsProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v1, v0, :cond_0

    .line 86
    const/16 v0, 0x2c

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static c(Lcom/wandoujia/ripple_framework/model/Model;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 198
    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/model/Model;->k:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    if-nez v1, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-object v0

    .line 201
    :cond_1
    sget-object v1, Lhbz;->a:[I

    iget-object v2, p0, Lcom/wandoujia/ripple_framework/model/Model;->k:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v2}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 205
    :pswitch_0
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    goto :goto_0

    .line 210
    :pswitch_1
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->g()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->g()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/Video;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Video;->url:Ljava/lang/String;

    goto :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .parameter

    .prologue
    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 32
    invoke-static {}, Lace;->a()Lace;

    move-result-object v7

    .line 34
    invoke-static/range {p0 .. p0}, Ld;->ar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 35
    invoke-static {v10}, Ld;->aq(Ljava/lang/String;)I

    move-result v11

    .line 37
    const/4 v1, 0x0

    .line 38
    const/4 v3, 0x0

    .line 39
    const/4 v2, 0x0

    .line 41
    :try_start_0
    invoke-virtual {v7, v11}, Lace;->a(I)Z

    move-result v5

    .line 44
    invoke-virtual {v7, v11}, Lace;->c(I)Lacd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v1

    .line 47
    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 50
    :goto_0
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 51
    :try_start_1
    invoke-static {v7, v1}, Lace;->a(Lace;Lacd;)V

    .line 54
    :cond_0
    invoke-virtual {v7, v11}, Lace;->b(I)Lacd;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v4

    .line 55
    if-eqz v5, :cond_6

    if-nez v0, :cond_6

    .line 59
    :try_start_2
    iget-object v0, v4, Lacd;->c:Ladr;

    iget-object v1, v0, Ladr;->c:Lcom/alipay/wandoujia/oa;

    if-eqz v1, :cond_3

    iget-object v0, v0, Ladr;->c:Lcom/alipay/wandoujia/oa;

    invoke-interface {v0}, Lcom/alipay/wandoujia/oa;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 61
    invoke-static {}, Lade;->a()Lade;

    move-result-object v0

    .line 62
    iget-object v0, v0, Lade;->b:Lcom/alipay/android/app/d;

    invoke-interface {v0}, Lcom/alipay/android/app/d;->s()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4000"

    const-string v5, ""

    .line 61
    invoke-static {v0, v1, v5}, Ld;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 87
    if-eqz v4, :cond_1

    .line 91
    invoke-virtual {v4}, Lacd;->h()V

    .line 94
    :cond_1
    invoke-virtual {v7, v11}, Lace;->d(I)V

    .line 96
    :try_start_3
    invoke-static {}, Labp;->a()Labp;

    move-result-object v1

    .line 97
    sget-object v2, Lcom/alipay/test/ui/core/EventObject;->OnDestroy:Lcom/alipay/test/ui/core/EventObject;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v10, v3, v4

    .line 96
    invoke-virtual {v1, v2, v3}, Labp;->onChangeEvent(Lcom/alipay/test/ui/core/EventObject;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    .line 104
    :goto_1
    return-object v0

    .line 47
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 59
    :cond_3
    :try_start_4
    new-instance v1, Lcom/alipay/android/app/exception/AppErrorException;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v5, "no window creat on reapeat last window"

    invoke-direct {v1, v0, v5}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 83
    :catch_0
    move-exception v0

    move-object v1, v3

    move-object v3, v4

    .line 84
    :goto_2
    :try_start_5
    invoke-static {v0}, Ld;->b(Ljava/lang/Object;)V

    .line 85
    invoke-static {}, Lacm;->a()Lacm;

    move-result-object v4

    const-string v5, "crash"

    invoke-virtual {v4, v0, v5}, Lacm;->b(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 87
    if-eqz v1, :cond_4

    .line 88
    invoke-interface {v1, v3}, Lcom/alipay/wandoujia/bc;->b(Lacd;)V

    .line 90
    :cond_4
    if-eqz v3, :cond_5

    .line 91
    invoke-virtual {v3}, Lacd;->h()V

    .line 94
    :cond_5
    invoke-virtual {v7, v11}, Lace;->d(I)V

    .line 96
    :try_start_6
    invoke-static {}, Labp;->a()Labp;

    move-result-object v0

    .line 97
    sget-object v1, Lcom/alipay/test/ui/core/EventObject;->OnDestroy:Lcom/alipay/test/ui/core/EventObject;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v10, v3, v4

    .line 96
    invoke-virtual {v0, v1, v3}, Labp;->onChangeEvent(Lcom/alipay/test/ui/core/EventObject;[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-object v0, v2

    .line 101
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v8

    .line 102
    invoke-static {}, Lacm;->a()Lacm;

    move-result-object v1

    const-string v4, "pay time span"

    invoke-virtual {v1, v2, v3, v4}, Lacm;->a(JLjava/lang/String;)V

    .line 103
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 104
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 65
    :cond_6
    :try_start_7
    iget-object v0, v4, Lacd;->c:Ladr;

    invoke-virtual {v0}, Ladr;->a()V

    .line 67
    invoke-static {}, Lade;->a()Lade;

    move-result-object v0

    iget-object v0, v0, Lade;->a:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v12

    const/4 v0, 0x0

    move v6, v0

    :goto_4
    iget-object v0, v7, Lace;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lt v6, v0, :cond_b

    .line 70
    invoke-virtual {v4}, Lacd;->c()Lacf;

    move-result-object v0

    .line 71
    iput-object v10, v0, Lacf;->a:Ljava/lang/String;

    .line 73
    invoke-virtual {v4}, Lacd;->i()Lcom/alipay/wandoujia/bc;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v1

    .line 74
    if-eqz v1, :cond_7

    .line 75
    :try_start_8
    invoke-interface {v1, v4}, Lcom/alipay/wandoujia/bc;->a(Lacd;)V

    .line 78
    :cond_7
    :goto_5
    invoke-virtual {v0}, Lacf;->a()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 82
    iget-object v3, v0, Lacf;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Lade;->a()Lade;

    move-result-object v3

    iget-object v3, v3, Lade;->b:Lcom/alipay/android/app/d;

    invoke-interface {v3}, Lcom/alipay/android/app/d;->p()Ljava/lang/String;

    move-result-object v3

    const-string v5, "6001"

    const-string v6, ""

    invoke-static {v3, v5, v6}, Ld;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lacf;->b:Ljava/lang/String;

    :cond_8
    iget-object v0, v0, Lacf;->b:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 87
    if-eqz v1, :cond_9

    .line 88
    invoke-interface {v1, v4}, Lcom/alipay/wandoujia/bc;->b(Lacd;)V

    .line 90
    :cond_9
    if-eqz v4, :cond_a

    .line 91
    invoke-virtual {v4}, Lacd;->h()V

    .line 94
    :cond_a
    invoke-virtual {v7, v11}, Lace;->d(I)V

    .line 96
    :try_start_9
    invoke-static {}, Labp;->a()Labp;

    move-result-object v1

    .line 97
    sget-object v2, Lcom/alipay/test/ui/core/EventObject;->OnDestroy:Lcom/alipay/test/ui/core/EventObject;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v10, v3, v4

    .line 96
    invoke-virtual {v1, v2, v3}, Labp;->onChangeEvent(Lcom/alipay/test/ui/core/EventObject;[Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v1

    goto/16 :goto_3

    .line 67
    :cond_b
    :try_start_a
    iget-object v0, v7, Lace;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    iget-object v1, v7, Lace;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacd;

    if-eqz v0, :cond_d

    iget v13, v0, Lacd;->a:I

    const/4 v1, 0x0

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v5, v1

    :cond_c
    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_e

    if-nez v5, :cond_d

    invoke-static {v7, v0}, Lace;->a(Lace;Lacd;)V

    :cond_d
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_4

    :cond_e
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    if-ne v13, v1, :cond_c

    const/4 v1, 0x1

    move v5, v1

    goto :goto_6

    .line 79
    :cond_f
    :try_start_b
    invoke-virtual {v4}, Lacd;->d()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_5

    .line 83
    :catch_2
    move-exception v0

    move-object v3, v4

    goto/16 :goto_2

    .line 98
    :catch_3
    move-exception v0

    move-object v0, v2

    goto/16 :goto_3

    .line 86
    :catchall_0
    move-exception v0

    move-object v4, v1

    .line 87
    :goto_7
    if-eqz v3, :cond_10

    .line 88
    invoke-interface {v3, v4}, Lcom/alipay/wandoujia/bc;->b(Lacd;)V

    .line 90
    :cond_10
    if-eqz v4, :cond_11

    .line 91
    invoke-virtual {v4}, Lacd;->h()V

    .line 94
    :cond_11
    invoke-virtual {v7, v11}, Lace;->d(I)V

    .line 96
    :try_start_c
    invoke-static {}, Labp;->a()Labp;

    move-result-object v1

    .line 97
    sget-object v2, Lcom/alipay/test/ui/core/EventObject;->OnDestroy:Lcom/alipay/test/ui/core/EventObject;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v10, v3, v4

    .line 96
    invoke-virtual {v1, v2, v3}, Labp;->onChangeEvent(Lcom/alipay/test/ui/core/EventObject;[Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    .line 100
    :goto_8
    throw v0

    :catch_4
    move-exception v1

    goto :goto_8

    .line 86
    :catchall_1
    move-exception v0

    move-object v4, v1

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v3, v1

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object v4, v3

    move-object v3, v1

    goto :goto_7

    .line 83
    :catch_5
    move-exception v0

    move-object v15, v3

    move-object v3, v1

    move-object v1, v15

    goto/16 :goto_2

    :catch_6
    move-exception v0

    move-object v15, v3

    move-object v3, v1

    move-object v1, v15

    goto/16 :goto_2

    :catch_7
    move-exception v1

    goto/16 :goto_1
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    :goto_0
    return-object p1

    .line 62
    :cond_0
    invoke-static {}, Lade;->a()Lade;

    move-result-object v0

    iget-object v0, v0, Lade;->b:Lcom/alipay/android/app/d;

    .line 63
    invoke-interface {v0}, Lcom/alipay/android/app/d;->f()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {p0, v0}, Lg;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {}, Lade;->a()Lade;

    move-result-object v1

    invoke-virtual {v1}, Lade;->b()Z

    .line 67
    invoke-static {p0, p1}, Lwo;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%08X%s%08X%s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 69
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v0, 0x2

    .line 70
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x3

    aput-object v1, v4, v0

    .line 68
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "\"pay_type\":\"%s\",\"pay_mode\":\"%s\",%s"

    const-string v1, "\"pay_type\":\"%s\",\"pay_mode\":\"%s\",%s,%s"

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v3

    aput-object p1, v0, v4

    aput-object p2, v0, v5

    aput-object p3, v0, v6

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-array v1, v6, [Ljava/lang/Object;

    aput-object p0, v1, v3

    aput-object p1, v1, v4

    aput-object p3, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 190
    const-string v0, "Set-Cookie"

    invoke-interface {p0, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    .line 191
    if-eqz v1, :cond_1

    .line 192
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 193
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 194
    const-string v4, "seccode_key"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 195
    const/16 v0, 0xc

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 199
    :goto_1
    return-object v0

    .line 192
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public static c([B)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0xa

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Ld;->a(Landroid/os/Parcel;I)I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0
.end method

.method public static c(II)Lorg/apache/http/client/HttpClient;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 32
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 33
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 34
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 35
    invoke-static {v0, p0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 36
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 40
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 41
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 42
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 45
    :try_start_0
    invoke-static {}, Lcom/wandoujia/base/http/WdjSSLSocketFactory;->getSSLSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v2

    .line 46
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    const/16 v5, 0x1bb

    invoke-direct {v3, v4, v2, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 54
    new-instance v1, Lcmf;

    invoke-direct {v1, v2, v0}, Lcmf;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 72
    invoke-static {v1}, Lcom/wandoujia/base/http/HttpClientWrapper;->newInstance(Lorg/apache/http/client/HttpClient;)Lcom/wandoujia/base/http/HttpClientWrapper;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static c()V
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lade;->a()Lade;

    move-result-object v0

    invoke-virtual {v0}, Lade;->b()Z

    .line 25
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    if-eqz p0, :cond_0

    .line 41
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 43
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 47
    :cond_0
    return-void
.end method

.method private static c(Landroid/os/Parcel;II)V
    .locals 1

    const v0, 0xffff

    if-lt p2, v0, :cond_0

    const/high16 v0, -0x1

    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void

    :cond_0
    shl-int/lit8 v0, p2, 0x10

    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public static c(Lhvg;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 525
    invoke-interface {p0}, Lhvg;->c()Lhvs;

    move-result-object v0

    new-instance v1, Lhwm;

    invoke-direct {v1, p0, p1}, Lhwm;-><init>(Lhvg;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lhvs;->a(Lhvj;)V

    .line 527
    return-void
.end method

.method public static c(Ljava/io/File;)V
    .locals 3
    .parameter

    .prologue
    .line 56
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "File must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_1

    invoke-static {p0}, Ld;->d(Ljava/io/File;)V

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to delete directory "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 59
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 60
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_5

    .line 61
    if-nez v0, :cond_4

    .line 62
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "File does not exist: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to delete file: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_5
    return-void

    :cond_6
    move-object v0, p0

    goto :goto_0
.end method

.method public static c(Ljava/util/Map;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    invoke-static {}, Ld;->K()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 117
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 118
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 119
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 121
    :cond_0
    invoke-static {v2}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 122
    return-void
.end method

.method public static c(Z)V
    .locals 2
    .parameter

    .prologue
    .line 185
    invoke-static {}, Lcom/wandoujia/shared_storage/SharedSettings;->a()Lcom/wandoujia/shared_storage/SharedSettings;

    move-result-object v0

    const-string v1, "setting_wifi_auto_connect"

    invoke-virtual {v0, v1, p0}, Lcom/wandoujia/shared_storage/SharedSettings;->a(Ljava/lang/String;Z)V

    .line 186
    return-void
.end method

.method public static c(I)Z
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 117
    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 118
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static c(Landroid/net/Uri;)Z
    .locals 2
    .parameter

    .prologue
    .line 99
    invoke-static {p0}, Ld;->d(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 100
    const-string v1, "res"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/os/Parcel;I)Z
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Ld;->b(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Lias;)Z
    .locals 1
    .parameter

    .prologue
    .line 128
    const-string v0, "Content-Length"

    invoke-interface {p0, v0}, Lias;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 129
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Ljava/util/List;)Z
    .locals 1
    .parameter

    .prologue
    .line 373
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Lahb;Ljava/io/InputStream;IZ)[B
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 90
    new-instance v2, Lahx;

    invoke-direct {v2, p0, p2}, Lahx;-><init>(Lahb;I)V

    .line 91
    const/4 v1, 0x0

    .line 93
    const/16 v3, 0x400

    :try_start_0
    invoke-virtual {p0, v3}, Lahb;->a(I)[B

    move-result-object v1

    .line 95
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 100
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Lahx;->write([BII)V

    .line 101
    if-lez p2, :cond_0

    goto :goto_0

    .line 104
    :cond_2
    if-eqz v0, :cond_3

    .line 109
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Lahb;->a([B)V

    .line 115
    invoke-virtual {v2}, Lahx;->close()V

    throw v0

    .line 112
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Lahx;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 114
    invoke-virtual {p0, v1}, Lahb;->a([B)V

    .line 115
    invoke-virtual {v2}, Lahx;->close()V

    return-object v0
.end method

.method private static d(II)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 106
    sub-int v0, p0, p1

    if-le v0, p1, :cond_1

    .line 108
    sub-int v0, p0, p1

    :goto_0
    move v2, v1

    .line 115
    :goto_1
    if-le p0, v0, :cond_3

    .line 116
    mul-int/2addr v2, p0

    .line 117
    if-gt v1, p1, :cond_0

    .line 118
    div-int/2addr v2, v1

    .line 119
    add-int/lit8 v1, v1, 0x1

    .line 115
    :cond_0
    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    .line 110
    :cond_1
    sub-int v0, p0, p1

    move v3, v0

    move v0, p1

    move p1, v3

    goto :goto_0

    .line 122
    :goto_2
    if-gt v1, p1, :cond_2

    .line 123
    div-int/2addr v0, v1

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 126
    :cond_2
    return v0

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method public static d(Landroid/os/Parcel;I)I
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Ld;->b(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    return v0
.end method

.method public static d(Lcom/wandoujia/feed/model/Feed;)J
    .locals 2
    .parameter

    .prologue
    .line 139
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/feed/model/Feed;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/wandoujia/feed/model/Feed;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 141
    if-ltz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/wandoujia/feed/model/Feed;->getId()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 144
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 146
    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-static {}, Lg;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "folder_game_boost_on"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 34
    invoke-static {p0}, Lcom/wandoujia/base/utils/MemoryUtil;->getAvailMemory(Landroid/content/Context;)J

    move-result-wide v0

    .line 35
    invoke-static {p0, p2}, Lcom/wandoujia/base/utils/MemoryUtil;->killAllProcesses(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    invoke-static {p0}, Lcom/wandoujia/base/utils/MemoryUtil;->getAvailMemory(Landroid/content/Context;)J

    move-result-wide v2

    .line 38
    invoke-static {}, Lcom/wandoujia/base/utils/MemoryUtil;->getTotalMemory()J

    move-result-wide v4

    sub-long v6, v0, v2

    const-wide/16 v0, 0x64

    cmp-long v0, v6, v0

    if-ltz v0, :cond_1

    invoke-static {}, Leha;->a()Leha;

    const-string v0, "mario_game_folder_boost_result_memory"

    invoke-static {v0}, Ld;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/wandoujia/game_launcher/lib/R$string;->wan_gamefolder_boost_result_memory:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 40
    :goto_0
    invoke-static {p0}, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->a(Landroid/content/Context;)Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;

    move-result-object v9

    .line 41
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v9, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->g:Landroid/widget/TextView;

    sget v3, Lcom/wandoujia/game_launcher/lib/R$string;->wan_gamefolder_boost_start:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v9, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, v9, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->a:Landroid/view/animation/AlphaAnimation;

    iget-object v0, v9, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->a:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, v9, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->a:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, v9, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->b:Landroid/view/animation/AlphaAnimation;

    iget-object v0, v9, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->b:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, v9, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->b:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    iget-object v0, v9, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->a:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lece;

    invoke-direct {v1, v9}, Lece;-><init>(Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, v9, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->b:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lecf;

    invoke-direct {v1, v9}, Lecf;-><init>(Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, v9, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->c:Landroid/view/animation/TranslateAnimation;

    iget-object v0, v9, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->c:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lecj;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lecj;-><init>(B)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, v9, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->c:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v0, v9, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->c:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    iget-object v0, v9, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->c:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lecg;

    invoke-direct {v1, v9}, Lecg;-><init>(Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, v9, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->d:Landroid/view/animation/AlphaAnimation;

    iget-object v0, v9, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->d:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, v9, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->d:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lech;

    invoke-direct {v1, v9}, Lech;-><init>(Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, v9, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->e:Landroid/view/animation/AlphaAnimation;

    iget-object v0, v9, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->e:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, v9, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->e:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Leci;

    invoke-direct {v1, v9}, Leci;-><init>(Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil;->a(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, v9, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->f:Landroid/view/View;

    iget-object v1, v9, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->a:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    move-object v0, v9

    .line 44
    :goto_1
    return-object v0

    .line 38
    :cond_1
    new-instance v6, Ljava/text/DecimalFormat;

    const-string v0, "0%"

    invoke-direct {v6, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_3

    long-to-float v0, v2

    const/high16 v1, 0x3f80

    mul-float/2addr v0, v1

    long-to-float v1, v4

    div-float/2addr v0, v1

    float-to-double v0, v0

    :goto_2
    invoke-virtual {v6, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Leha;->a()Leha;

    const-string v0, "mario_game_folder_boost_result_percent"

    invoke-static {v0}, Ld;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/wandoujia/game_launcher/lib/R$string;->wan_gamefolder_boost_result_percent:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    const-wide/16 v0, 0x0

    goto :goto_2

    .line 44
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static d(Landroid/view/ViewGroup;Lhas;)Lerf;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 326
    invoke-static {p0, p1}, Ld;->a(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    new-instance v1, Ldqh;

    invoke-direct {v1}, Ldqh;-><init>()V

    const v2, 0x7f0c0129

    invoke-virtual {v0, v2, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldlf;

    invoke-direct {v1}, Ldlf;-><init>()V

    const v2, 0x7f0c0016

    invoke-virtual {v0, v2, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldph;

    invoke-direct {v1}, Ldph;-><init>()V

    const v2, 0x7f0c0002

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldqj;

    invoke-direct {v1}, Ldqj;-><init>()V

    invoke-virtual {v0, v4, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldns;

    invoke-direct {v1}, Ldns;-><init>()V

    invoke-virtual {v0, v4, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/String;I)Lhqe;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-static {p0, p1}, Ld;->e(Ljava/lang/String;I)Lhqd;

    move-result-object v3

    .line 42
    if-nez v3, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-object v0

    .line 48
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 49
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 50
    iget v4, v3, Lhqd;->c:I

    new-array v4, v4, [B

    .line 51
    add-int/lit8 v1, v1, -0x10

    iget v5, v3, Lhqd;->c:I

    sub-int/2addr v1, v5

    sub-int/2addr v1, p1

    int-to-long v6, v1

    invoke-virtual {v2, v6, v7}, Ljava/io/FileInputStream;->skip(J)J

    .line 52
    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I

    .line 53
    new-instance v1, Lhqe;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v3, v5}, Lhqe;-><init>(Lhqd;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    .line 62
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    :goto_1
    move-object v0, v1

    .line 66
    goto :goto_0

    .line 56
    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_2
    if-eqz v1, :cond_0

    .line 64
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 66
    :catch_1
    move-exception v1

    goto :goto_0

    .line 58
    :catch_2
    move-exception v1

    move-object v2, v0

    :goto_3
    if-eqz v2, :cond_0

    .line 64
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 66
    :catch_3
    move-exception v1

    goto :goto_0

    .line 60
    :catch_4
    move-exception v1

    move-object v2, v0

    :goto_4
    if-eqz v2, :cond_0

    .line 64
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_0

    .line 66
    :catch_5
    move-exception v1

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_5
    if-eqz v2, :cond_2

    .line 64
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 66
    :cond_2
    :goto_6
    throw v0

    :catch_6
    move-exception v0

    goto :goto_1

    :catch_7
    move-exception v1

    goto :goto_6

    .line 62
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 60
    :catch_8
    move-exception v1

    goto :goto_4

    .line 58
    :catch_9
    move-exception v1

    goto :goto_3

    .line 56
    :catch_a
    move-exception v1

    move-object v1, v2

    goto :goto_2
.end method

.method public static d(Lhvg;Ljava/net/SocketAddress;)Lhvl;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 630
    if-nez p1, :cond_0

    .line 631
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "remoteAddress"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 633
    :cond_0
    invoke-static {p0}, Ld;->l(Lhvg;)Lhvl;

    move-result-object v0

    .line 634
    invoke-interface {p0}, Lhvg;->c()Lhvs;

    move-result-object v1

    new-instance v2, Lhwq;

    sget-object v3, Lorg/jboss/netty/channel/ChannelState;->CONNECTED:Lorg/jboss/netty/channel/ChannelState;

    invoke-direct {v2, p0, v0, v3, p1}, Lhwq;-><init>(Lhvg;Lhvl;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lhvs;->b(Lhvj;)V

    .line 636
    return-object v0
.end method

.method public static d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 209
    if-nez p0, :cond_0

    .line 210
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 212
    :cond_0
    return-object p0
.end method

.method public static varargs d(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-static {}, Lchv;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    invoke-static {}, Lchv;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 25
    invoke-static {p0}, Laca;->b(Landroid/content/Context;)Labz;

    move-result-object v0

    .line 26
    if-nez v0, :cond_0

    const-string v0, "ffffffffffffffffffffffff"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Labz;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 68
    const/high16 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 70
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 71
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->d()Lcom/wandoujia/jupiter/JupiterApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/jupiter/JupiterApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 78
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 156
    invoke-static {p0}, Lbvz;->a(Landroid/content/Context;)Lbvz;

    move-result-object v1

    .line 157
    invoke-virtual {v1}, Lbvz;->a()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 162
    :goto_0
    return-object v0

    .line 161
    :cond_0
    invoke-virtual {v1, p1}, Lbvz;->a(Ljava/lang/String;)V

    .line 162
    const-string v0, ""

    goto :goto_0
.end method

.method public static d(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 114
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static d(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 254
    .line 257
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :try_start_1
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 259
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x64

    :try_start_2
    invoke-static/range {v0 .. v5}, Lcom/wandoujia/base/utils/IOUtils;->copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ)J

    .line 260
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    .line 264
    invoke-static {v0}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 265
    invoke-static {v1}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    move-object v0, v2

    .line 268
    :goto_0
    return-object v0

    .line 262
    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_1
    invoke-static {v0}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 265
    invoke-static {v1}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 268
    const-string v0, ""

    goto :goto_0

    .line 264
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_2
    invoke-static {v2}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 265
    invoke-static {v1}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    throw v0

    .line 264
    :catchall_1
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_2

    :catchall_2
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_2

    .line 262
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static d([B)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    const/16 v1, 0x10

    new-array v2, v1, [C

    fill-array-data v2, :array_0

    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    array-length v4, v3

    mul-int/lit8 v1, v4, 0x2

    new-array v5, v1, [C

    move v1, v0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-byte v6, v3, v0

    add-int/lit8 v7, v1, 0x1

    ushr-int/lit8 v8, v6, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v2, v8

    aput-char v8, v5, v1

    add-int/lit8 v1, v7, 0x1

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v2, v6

    aput-char v6, v5, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1

    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method public static d()V
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lade;->a()Lade;

    move-result-object v0

    invoke-virtual {v0}, Lade;->b()Z

    .line 42
    return-void
.end method

.method public static d(Lhvg;)V
    .locals 4
    .parameter

    .prologue
    .line 358
    invoke-interface {p0}, Lhvg;->c()Lhvs;

    move-result-object v0

    new-instance v1, Lhxh;

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->INTEREST_OPS:Lorg/jboss/netty/channel/ChannelState;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lhxh;-><init>(Lhvg;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lhvs;->a(Lhvj;)V

    .line 361
    return-void
.end method

.method private static d(Ljava/io/File;)V
    .locals 6
    .parameter

    .prologue
    .line 100
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " does not exist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not a directory"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 111
    if-nez v2, :cond_2

    .line 112
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to list contents of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_2
    const/4 v1, 0x0

    .line 116
    array-length v3, v2

    const/4 v0, 0x0

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    .line 118
    :try_start_0
    invoke-static {v4}, Ld;->c(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :cond_3
    if-eqz v0, :cond_4

    .line 125
    throw v0

    .line 119
    :catch_0
    move-exception v0

    goto :goto_1

    .line 127
    :cond_4
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 261
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 262
    const/4 v2, 0x0

    .line 263
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 270
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    .line 274
    :goto_0
    return-void

    .line 268
    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 270
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    goto :goto_0

    .line 269
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 270
    :goto_2
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    .line 271
    throw v0

    .line 269
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 268
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static d(Z)V
    .locals 1
    .parameter

    .prologue
    .line 31
    .line 32
    if-nez p0, :cond_0

    sget-object v0, Ld;->D:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 33
    sget-object v0, Ld;->D:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    .line 34
    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidate()V

    .line 38
    :cond_0
    return-void
.end method

.method public static d(Landroid/view/View;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    move v0, v1

    .line 59
    :goto_0
    return v0

    .line 44
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 45
    if-ne p0, v2, :cond_1

    move v0, v1

    .line 46
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eq v0, v3, :cond_2

    move v0, v1

    .line 50
    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 53
    :goto_1
    if-eqz v0, :cond_4

    .line 54
    if-ne v0, v2, :cond_3

    move v0, v1

    .line 55
    goto :goto_0

    .line 57
    :cond_3
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    .line 59
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 284
    if-eqz p0, :cond_0

    .line 285
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 287
    :cond_0
    if-eqz p0, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static e(Landroid/os/Parcel;I)J
    .locals 2

    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Ld;->b(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static e(Landroid/content/Context;)Labu;
    .locals 3
    .parameter

    .prologue
    .line 16
    if-eqz p0, :cond_0

    .line 17
    new-instance v0, Labu;

    sget-object v1, Labq;->a:Ljava/lang/String;

    const-string v2, "Alvin2"

    invoke-direct {v0, p0, v1, v2}, Labu;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(I)Leqx;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Leqx",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Ldre;

    invoke-direct {v0, p0}, Ldre;-><init>(I)V

    return-object v0
.end method

.method public static e(Landroid/view/ViewGroup;Lhas;)Lerf;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 354
    invoke-static {p0, p1}, Ld;->a(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    new-instance v1, Ldlf;

    invoke-direct {v1}, Ldlf;-><init>()V

    const v2, 0x7f0c0016

    invoke-virtual {v0, v2, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldkv;

    invoke-direct {v1}, Ldkv;-><init>()V

    const v2, 0x7f0c0346

    invoke-virtual {v0, v2, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldnk;

    invoke-direct {v1}, Ldnk;-><init>()V

    invoke-virtual {v0, v3, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldqx;

    invoke-direct {v1}, Ldqx;-><init>()V

    const v2, 0x7f0c0081

    invoke-virtual {v0, v2, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldmg;

    invoke-direct {v1}, Ldmg;-><init>()V

    const v2, 0x7f0c005e

    invoke-virtual {v0, v2, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldnj;

    invoke-direct {v1}, Ldnj;-><init>()V

    const v2, 0x7f0c000a

    invoke-virtual {v0, v2, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    return-object v0
.end method

.method private static e(Ljava/lang/String;I)Lhqd;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 98
    .line 100
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 101
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v2

    .line 102
    const/16 v3, 0x10

    new-array v3, v3, [B

    .line 103
    add-int/lit8 v2, v2, -0x10

    sub-int/2addr v2, p1

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/io/FileInputStream;->skip(J)J

    .line 104
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 105
    invoke-static {v3}, Lhqd;->a([B)Lhqd;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v0

    .line 111
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 120
    :cond_0
    :goto_0
    return-object v0

    .line 107
    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_0

    .line 113
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 115
    :catch_1
    move-exception v1

    goto :goto_0

    .line 109
    :catch_2
    move-exception v1

    move-object v1, v0

    :goto_2
    if-eqz v1, :cond_0

    .line 113
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 115
    :catch_3
    move-exception v1

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_3
    if-eqz v1, :cond_1

    .line 113
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 115
    :cond_1
    :goto_4
    throw v0

    :catch_4
    move-exception v1

    goto :goto_0

    :catch_5
    move-exception v1

    goto :goto_4

    .line 111
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 109
    :catch_6
    move-exception v2

    goto :goto_2

    .line 107
    :catch_7
    move-exception v2

    goto :goto_1
.end method

.method public static e(Lhvg;)Lhvl;
    .locals 2
    .parameter

    .prologue
    .line 383
    invoke-interface {p0}, Lhvg;->c()Lhvs;

    move-result-object v0

    new-instance v1, Lhwa;

    invoke-direct {v1, p0}, Lhwa;-><init>(Lhvg;)V

    invoke-interface {v0, v1}, Lhvs;->a(Ljava/lang/Runnable;)Lhvl;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 30
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    const-string p1, ""

    .line 40
    :cond_0
    :goto_0
    return-object p1

    .line 33
    :cond_1
    invoke-static {p1}, Ld;->F(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    invoke-static {p1}, Ld;->aw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 38
    const-string p1, ""

    goto :goto_0

    .line 40
    :cond_2
    const-string v1, "offline://hack?force=%b&url=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, p0, v4, v4}, Ld;->a(Ljava/lang/String;Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 16
    .line 18
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Ld;->g([B)[B

    move-result-object v1

    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v3, v1, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v4, 0x1

    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v6

    new-array v6, v6, [B

    invoke-direct {v5, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, v4, v3, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 21
    :goto_0
    if-eqz v1, :cond_0

    .line 24
    invoke-static {v1}, Ld;->h([B)Ljava/lang/String;

    move-result-object v0

    .line 27
    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_0
.end method

.method public static e()V
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lade;->a()Lade;

    move-result-object v0

    invoke-virtual {v0}, Lade;->b()Z

    .line 59
    return-void
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-static {p0, p1, p2}, Ld;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 40
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 41
    return-void
.end method

.method public static e(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 63
    invoke-static {p0}, Lcom/wandoujia/logv3/toolkit/treebuilder/PopupLogTreeBuilder;->b(Landroid/view/View;)Lcom/wandoujia/logv3/toolkit/DropDownListView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 65
    :goto_0
    if-eqz v0, :cond_1

    .line 66
    invoke-static {p0}, Lcom/wandoujia/logv3/toolkit/treebuilder/PopupLogTreeBuilder;->b(Landroid/view/View;)Lcom/wandoujia/logv3/toolkit/DropDownListView;

    .line 67
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The anchor view of popup window must be specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 70
    :cond_1
    invoke-static {p0}, Ld;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 76
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "View must be attached to decor view."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_2
    return-void
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 86
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v0, v1

    .line 96
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v2, v0

    .line 90
    :goto_1
    if-lt v2, v3, :cond_3

    move v0, v1

    .line 96
    goto :goto_0

    .line 91
    :cond_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 90
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static e([B)Z
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "UPPay"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    new-instance v2, Ljava/io/File;

    const-string v3, "UPPayPluginEx.apk"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 120
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 121
    invoke-virtual {v1, p1, p2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 123
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f([B)Lchr;
    .locals 7

    new-instance v0, Lchr;

    invoke-direct {v0}, Lchr;-><init>()V

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    const/16 v1, 0x3e8

    if-le v4, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_2

    invoke-static {v3}, Lchu;->a(Ljava/io/DataInputStream;)Lchu;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v6, v0, Lchr;->a:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V

    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static f(Landroid/view/ViewGroup;Lhas;)Lerf;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 403
    invoke-static {p0, p1}, Ld;->a(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    new-instance v1, Ldog;

    invoke-direct {v1}, Ldog;-><init>()V

    const v2, 0x7f0c0023

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    return-object v0
.end method

.method public static f(Landroid/view/View;)Ljava/lang/Boolean;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 88
    :goto_0
    if-eqz v1, :cond_2

    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 89
    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Leny;->n(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 100
    :goto_1
    return-object v0

    .line 92
    :cond_0
    instance-of v0, v1, Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 93
    check-cast v0, Landroid/support/v4/view/ViewPager;

    invoke-static {v0}, Ld;->a(Landroid/support/v4/view/ViewPager;)Landroid/view/View;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 94
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 97
    :cond_1
    check-cast v1, Landroid/view/View;

    .line 98
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object p0, v1

    move-object v1, v0

    goto :goto_0

    .line 100
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 220
    :try_start_0
    invoke-static {p0}, Ld;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    :goto_0
    return-object v0

    .line 223
    :cond_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 224
    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 225
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    :goto_1
    const/16 v4, 0x10

    if-lt v1, v4, :cond_1

    .line 230
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 228
    :cond_1
    const-string v4, "%02x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-byte v7, v2, v1

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 232
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 33
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ld;->g([B)[B

    move-result-object v1

    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v2, v0, 0x2

    new-array v3, v2, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    mul-int/lit8 v4, v0, 0x2

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->byteValue()B

    move-result v4

    aput-byte v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    :cond_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x2

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v5

    new-array v5, v5, [B

    invoke-direct {v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, v2, v0, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v1, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 36
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static f(Landroid/os/Parcel;I)Ljava/math/BigInteger;
    .locals 3

    invoke-static {p0, p1}, Ld;->a(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v2}, Ljava/math/BigInteger;-><init>([B)V

    goto :goto_0
.end method

.method public static f()V
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lade;->a()Lade;

    move-result-object v0

    invoke-virtual {v0}, Lade;->b()Z

    .line 63
    return-void
.end method

.method public static f(I)V
    .locals 7
    .parameter

    .prologue
    .line 86
    sget-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->END:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->SUCCESS:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->OPEN:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v3, "game_launcher"

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->PAGE:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v5, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->OPEN:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v6, "check_game_count"

    invoke-static {v3, v4, v5, v6}, Ld;->a(Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Ld;->a(Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;Lcom/wandoujia/logv3/model/packages/ViewLogPackage;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public static f(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 17
    invoke-static {}, Lade;->a()Lade;

    move-result-object v0

    invoke-static {}, Lack;->z()Lack;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lade;->a(Landroid/content/Context;Lcom/alipay/android/app/d;)V

    .line 18
    return-void
.end method

.method public static synthetic f(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 22
    new-instance v0, Lhoq;

    invoke-direct {v0, p0}, Lhoq;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e0357

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhoq;->a(Ljava/lang/CharSequence;)Lhoq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhoq;->b(Ljava/lang/CharSequence;)Lhoq;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lhoq;->a(Z)Lhoq;

    move-result-object v0

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0250

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lgdd;

    invoke-direct {v2, p1}, Lgdd;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lhoq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lhoq;

    move-result-object v0

    const v1, 0x7f0e0162

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lgdc;

    invoke-direct {v2}, Lgdc;-><init>()V

    invoke-virtual {v0, v1, v2}, Lhoq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lhoq;

    move-result-object v0

    invoke-virtual {v0}, Lhoq;->b()Lhoj;

    return-void
.end method

.method public static f(Lhvg;)V
    .locals 4
    .parameter

    .prologue
    .line 396
    invoke-interface {p0}, Lhvg;->c()Lhvs;

    move-result-object v0

    new-instance v1, Lhxh;

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->CONNECTED:Lorg/jboss/netty/channel/ChannelState;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lhxh;-><init>(Lhvg;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lhvs;->a(Lhvj;)V

    .line 399
    return-void
.end method

.method public static g(Landroid/os/Parcel;I)F
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Ld;->b(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    return v0
.end method

.method private static g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 46
    invoke-static {p0, v0}, Ld;->d(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 50
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 51
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    const-string v1, "phoenix.intent.extra.TITLE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    :cond_0
    const-string v1, "phoenix.intent.extra.URL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    return-object v0

    .line 56
    :cond_1
    const-class v1, Lcom/wandoujia/p4/campaign/CampaignActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 57
    const-string v1, "phoenix.intent.action.CAMPAIGN_WEBVIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 53
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static g(Landroid/view/ViewGroup;Lhas;)Lerf;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 670
    invoke-static {p0, p1}, Ld;->a(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    new-instance v1, Ldqh;

    invoke-direct {v1}, Ldqh;-><init>()V

    const v2, 0x7f0c0129

    invoke-virtual {v0, v2, v1, v6}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldon;

    invoke-direct {v1}, Ldon;-><init>()V

    const v2, 0x7f0c01ae

    invoke-virtual {v0, v2, v1, v7}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldom;

    invoke-direct {v1}, Ldom;-><init>()V

    const v2, 0x7f0c032f

    invoke-virtual {v0, v2, v1, v6}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Lerh;

    const/4 v2, 0x2

    new-array v2, v2, [Lerg;

    new-instance v3, Ldpv;

    invoke-direct {v3}, Ldpv;-><init>()V

    aput-object v3, v2, v6

    new-instance v3, Ldol;

    sget-object v4, Lcom/wandoujia/ripple_framework/log/Logger$Module;->SEARCH:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v5, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->CARD:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    invoke-direct {v3, v4, v5}, Ldol;-><init>(Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;)V

    aput-object v3, v2, v7

    invoke-direct {v1, v2}, Lerh;-><init>([Lerg;)V

    invoke-virtual {v0, v6, v1, v6}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldns;

    invoke-direct {v1}, Ldns;-><init>()V

    invoke-virtual {v0, v6, v1, v6}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldpm;

    invoke-direct {v1}, Ldpm;-><init>()V

    invoke-virtual {v0, v6, v1, v6}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    return-object v0
.end method

.method public static g(Lhvg;)Lhvl;
    .locals 2
    .parameter

    .prologue
    .line 418
    invoke-interface {p0}, Lhvg;->c()Lhvs;

    move-result-object v0

    new-instance v1, Lhwb;

    invoke-direct {v1, p0}, Lhwb;-><init>(Lhvg;)V

    invoke-interface {v0, v1}, Lhvs;->a(Ljava/lang/Runnable;)Lhvl;

    move-result-object v0

    return-object v0
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    .line 246
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 245
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 248
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 251
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 249
    :cond_0
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 29
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    const-string v1, "ISO-8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 31
    invoke-static {v0}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v0

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Basic "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 34
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static g()V
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Lade;->a()Lade;

    move-result-object v0

    invoke-virtual {v0}, Lade;->b()Z

    .line 76
    return-void
.end method

.method public static g(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 29
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/wandoujia/p4/tips/TipsType;

    const/4 v1, 0x0

    sget-object v2, Lcom/wandoujia/p4/tips/TipsType;->FETCH_FAILED_FLOATING:Lcom/wandoujia/p4/tips/TipsType;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lg;->a(Landroid/view/View;[Lcom/wandoujia/p4/tips/TipsType;)V

    .line 30
    return-void
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 52
    if-eqz p0, :cond_0

    .line 53
    const-string v1, "android.permission.INTERNET"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v0

    .line 53
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 83
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 84
    aget-object v3, v2, v0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    const/4 v1, 0x1

    .line 88
    :cond_0
    return v1

    .line 83
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static g([B)[B
    .locals 3
    .parameter

    .prologue
    .line 46
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 47
    const-string v1, "SHA1PRNG"

    const-string v2, "Crypto"

    invoke-static {v1, v2}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v1

    .line 48
    invoke-virtual {v1, p0}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 49
    const/16 v2, 0x80

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 50
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 51
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    .line 53
    return-object v0
.end method

.method public static h(Landroid/os/Parcel;I)D
    .locals 2

    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Ld;->b(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public static h(Landroid/view/ViewGroup;Lhas;)Lerf;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 759
    invoke-static {p0, p1}, Ld;->a(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    new-instance v1, Ldlf;

    invoke-direct {v1, v3}, Ldlf;-><init>(C)V

    const v2, 0x7f0c0016

    invoke-virtual {v0, v2, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Lhjb;

    invoke-direct {v1}, Lhjb;-><init>()V

    const v2, 0x7f0c005f

    invoke-virtual {v0, v2, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldqe;

    invoke-direct {v1}, Ldqe;-><init>()V

    invoke-virtual {v0, v3, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    return-object v0
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 22
    :try_start_0
    invoke-static {}, Lcom/wandoujia/base/utils/SystemUtil;->isSDCardMounted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 38
    :cond_0
    :goto_0
    return-object v0

    .line 30
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 32
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 34
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move-object v0, v1

    .line 38
    goto :goto_0

    .line 27
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 278
    const/4 v0, 0x4

    :try_start_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 279
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 280
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 281
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 282
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 283
    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 284
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 285
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 286
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    .line 287
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {v0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 288
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x4

    .line 289
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    array-length v1, v1

    .line 288
    invoke-static {v0, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    const/16 v0, 0x8

    invoke-static {v2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 293
    :goto_0
    return-object v0

    .line 291
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 293
    const-string v0, ""

    goto :goto_0
.end method

.method private static h([B)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 92
    if-nez p0, :cond_0

    .line 93
    const-string v0, ""

    .line 98
    :goto_0
    return-object v0

    .line 94
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 95
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 96
    aget-byte v2, p0, v0

    const-string v3, "0123456789ABCDEF"

    shr-int/lit8 v4, v2, 0x4

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 98
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 22
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 23
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_0
    return-object v0
.end method

.method public static h()V
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Lade;->a()Lade;

    move-result-object v0

    invoke-virtual {v0}, Lade;->b()Z

    .line 80
    return-void
.end method

.method public static h(Lhvg;)V
    .locals 4
    .parameter

    .prologue
    .line 432
    invoke-interface {p0}, Lhvg;->c()Lhvs;

    move-result-object v0

    new-instance v1, Lhxh;

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->BOUND:Lorg/jboss/netty/channel/ChannelState;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lhxh;-><init>(Lhvg;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lhvs;->a(Lhvj;)V

    .line 434
    return-void
.end method

.method public static h(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 84
    if-eqz p0, :cond_1

    .line 85
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 89
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 92
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 87
    goto :goto_0

    :cond_1
    move v0, v2

    .line 92
    goto :goto_0
.end method

.method public static i(Landroid/view/ViewGroup;Lhas;)Lerf;
    .locals 6
    .parameter
    .parameter

    .prologue
    const v5, 0x7f0c005e

    const/4 v4, 0x0

    .line 868
    invoke-static {p0, p1}, Ld;->a(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    new-instance v1, Ldox;

    invoke-direct {v1}, Ldox;-><init>()V

    const v2, 0x7f0c0023

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldjh;

    invoke-direct {v1}, Ldjh;-><init>()V

    invoke-virtual {v0, v5, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldjg;

    invoke-direct {v1}, Ldjg;-><init>()V

    const v2, 0x7f0c033c

    invoke-virtual {v0, v2, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldje;

    invoke-direct {v1}, Ldje;-><init>()V

    const v2, 0x7f0c0362

    invoke-virtual {v0, v2, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Lhjj;

    invoke-direct {v1, v5}, Lhjj;-><init>(I)V

    const v2, 0x7f0c0045

    invoke-virtual {v0, v2, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldpr;

    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->APPS:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->CARD:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    invoke-direct {v1, v2, v3}, Ldpr;-><init>(Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;)V

    invoke-virtual {v0, v4, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    return-object v0
.end method

.method public static i(Lhvg;)Lhvl;
    .locals 2
    .parameter

    .prologue
    .line 454
    invoke-interface {p0}, Lhvg;->c()Lhvs;

    move-result-object v0

    new-instance v1, Lhwc;

    invoke-direct {v1, p0}, Lhwc;-><init>(Lhvg;)V

    invoke-interface {v0, v1}, Lhvs;->a(Ljava/lang/Runnable;)Lhvl;

    move-result-object v0

    return-object v0
.end method

.method private static i(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 52
    .line 55
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    .line 56
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_8

    move-result-object v0

    .line 67
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 74
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v1, v0

    .line 58
    :goto_1
    if-eqz v1, :cond_0

    .line 68
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 71
    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    move-object v1, v0

    .line 60
    :goto_2
    if-eqz v1, :cond_0

    .line 68
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 71
    :catch_3
    move-exception v1

    goto :goto_0

    .line 63
    :catch_4
    move-exception v1

    move-object v1, v0

    :goto_3
    :try_start_5
    invoke-virtual {p0, p1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 64
    if-eqz v1, :cond_0

    .line 68
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_0

    .line 71
    :catch_5
    move-exception v1

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    .line 67
    :goto_4
    if-eqz v1, :cond_1

    .line 68
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 71
    :cond_1
    :goto_5
    throw v0

    :catch_6
    move-exception v1

    goto :goto_0

    :catch_7
    move-exception v1

    goto :goto_5

    .line 66
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 63
    :catch_8
    move-exception v2

    goto :goto_3

    :catch_9
    move-exception v2

    goto :goto_2

    :catch_a
    move-exception v2

    goto :goto_1
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 43
    :goto_0
    return-object v0

    .line 40
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 41
    const-string v1, "src_path"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v1, "dst_path"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v1, Lcvo;

    invoke-direct {v1}, Lcvo;-><init>()V

    invoke-virtual {v1, v0}, Lcvo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static i(Landroid/os/Parcel;I)Ljava/math/BigDecimal;
    .locals 4

    invoke-static {p0, p1}, Ld;->a(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance v0, Ljava/math/BigDecimal;

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    invoke-direct {v0, v1, v3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_0
.end method

.method public static i(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 264
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 265
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 267
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 268
    return-void
.end method

.method public static i()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 300
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 301
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    move v2, v1

    :goto_0
    if-nez v2, :cond_2

    .line 302
    const-string v2, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 303
    const-string v2, "mounted_ro"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 304
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 305
    if-eqz v2, :cond_2

    .line 310
    :goto_1
    return v0

    :cond_1
    move v2, v0

    .line 301
    goto :goto_0

    :cond_2
    move v0, v1

    .line 310
    goto :goto_1
.end method

.method public static i(Ljava/lang/String;)[B
    .locals 1
    .parameter

    .prologue
    .line 130
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ld;->n(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static j(Landroid/view/ViewGroup;Lhas;)Lerf;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 934
    invoke-static {p0, p1}, Ld;->a(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    new-instance v1, Ldqj;

    invoke-direct {v1, v2}, Ldqj;-><init>(B)V

    invoke-virtual {v0, v2, v1, v2}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    return-object v0
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    const-string v1, "Android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    const-string v1, "__"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    const-string v1, "weibo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    const-string v1, "__"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    const-string v1, "sdk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    const-string v1, "__"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 286
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 288
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 289
    const-string v2, "\\s+"

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 291
    :catch_0
    move-exception v1

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static j(Landroid/os/Parcel;I)Ljava/lang/String;
    .locals 3

    invoke-static {p0, p1}, Ld;->a(Landroid/os/Parcel;I)I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-static {p0}, Ld;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    :goto_0
    return-object p1

    :cond_0
    move-object p1, v0

    goto :goto_0
.end method

.method public static j(Lhvg;)V
    .locals 4
    .parameter

    .prologue
    .line 468
    invoke-interface {p0}, Lhvg;->c()Lhvs;

    move-result-object v0

    new-instance v1, Lhxh;

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->OPEN:Lorg/jboss/netty/channel/ChannelState;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, p0, v2, v3}, Lhxh;-><init>(Lhvg;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lhvs;->a(Lhvj;)V

    .line 473
    invoke-interface {p0}, Lhvg;->b()Lhvg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 474
    invoke-interface {p0}, Lhvg;->b()Lhvg;

    move-result-object v0

    invoke-static {v0, p0}, Ld;->a(Lhvg;Lhvg;)V

    .line 476
    :cond_0
    return-void
.end method

.method public static j()Z
    .locals 4

    .prologue
    .line 26
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-static {v0}, Ld;->j(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 28
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Labq;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Alvin2.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    const/4 v0, 0x1

    .line 42
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static j(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 8
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static k()I
    .locals 2

    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v0, "Invalid version number"

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0, v1}, Lawb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static k(Ljava/lang/String;)J
    .locals 2
    .parameter

    .prologue
    .line 110
    :try_start_0
    invoke-static {p0}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 113
    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static k(Landroid/os/Parcel;I)Landroid/os/IBinder;
    .locals 3

    invoke-static {p0, p1}, Ld;->a(Landroid/os/Parcel;I)I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0
.end method

.method public static k(Landroid/view/ViewGroup;Lhas;)Lerf;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 997
    invoke-static {p0, p1}, Ld;->a(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    new-instance v1, Ldsb;

    invoke-direct {v1}, Ldsb;-><init>()V

    invoke-virtual {v0, v2, v1, v2}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    return-object v0
.end method

.method public static k(Lhvg;)Lhvl;
    .locals 5
    .parameter

    .prologue
    .line 811
    invoke-interface {p0}, Lhvg;->h()Lhvl;

    move-result-object v0

    .line 812
    invoke-interface {p0}, Lhvg;->c()Lhvs;

    move-result-object v1

    new-instance v2, Lhwq;

    sget-object v3, Lorg/jboss/netty/channel/ChannelState;->OPEN:Lorg/jboss/netty/channel/ChannelState;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v2, p0, v0, v3, v4}, Lhwq;-><init>(Lhvg;Lhvl;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lhvs;->b(Lhvj;)V

    .line 814
    return-object v0
.end method

.method public static k(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v0, "1.8.0"

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1040

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static k(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v0

    .line 99
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    :goto_1
    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {v2, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 104
    const/4 v0, 0x1

    .line 105
    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static l(Landroid/os/Parcel;I)Landroid/os/Bundle;
    .locals 3

    invoke-static {p0, p1}, Ld;->a(Landroid/os/Parcel;I)I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0
.end method

.method public static l(Landroid/view/ViewGroup;Lhas;)Lerf;
    .locals 5
    .parameter
    .parameter

    .prologue
    const v3, 0x7f0c032e

    const/4 v4, 0x0

    .line 1057
    new-instance v0, Lerf;

    invoke-direct {v0, p0, p1}, Lerf;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    new-instance v1, Ldnr;

    invoke-direct {v1}, Ldnr;-><init>()V

    const v2, 0x7f0c032d

    invoke-virtual {v0, v2, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldnr;

    invoke-direct {v1}, Ldnr;-><init>()V

    const v2, 0x7f0c036f

    invoke-virtual {v0, v2, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldnr;

    invoke-direct {v1}, Ldnr;-><init>()V

    const v2, 0x7f0c032b

    invoke-virtual {v0, v2, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldkv;

    invoke-direct {v1}, Ldkv;-><init>()V

    const v2, 0x7f0c032c

    invoke-virtual {v0, v2, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldnr;

    invoke-direct {v1}, Ldnr;-><init>()V

    const v2, 0x7f0c032a

    invoke-virtual {v0, v2, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldqh;

    invoke-direct {v1}, Ldqh;-><init>()V

    invoke-virtual {v0, v3, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldnw;

    invoke-direct {v1}, Ldnw;-><init>()V

    invoke-virtual {v0, v3, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldpr;

    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->APPS:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->CARD:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    invoke-direct {v1, v2, v3}, Ldpr;-><init>(Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;)V

    invoke-virtual {v0, v4, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldnp;

    invoke-direct {v1}, Ldnp;-><init>()V

    invoke-virtual {v0, v4, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    return-object v0
.end method

.method private static l(Lhvg;)Lhvl;
    .locals 1
    .parameter

    .prologue
    .line 131
    new-instance v0, Lhwh;

    invoke-direct {v0, p0}, Lhwh;-><init>(Lhvg;)V

    return-object v0
.end method

.method public static l()Ljava/lang/String;
    .locals 3

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    const-string v1, "weibosdk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const-string v1, "0030105000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const-string v1, "_android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static l(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v1, ""

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static l(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\+"

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 134
    invoke-static {p0}, Lcom/wandoujia/appmanager/AppManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    invoke-static {p0}, Lcom/wandoujia/base/utils/FileUtil;->deletePath(Ljava/lang/String;)V

    .line 159
    :goto_0
    return-object v0

    .line 140
    :cond_0
    invoke-static {p1}, Ld;->ai(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 141
    if-nez v2, :cond_1

    .line 142
    invoke-static {p0}, Lcom/wandoujia/base/utils/FileUtil;->deletePath(Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_1
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 148
    :try_start_0
    sget-object v3, Ld;->g:Lcqj;

    const/16 v4, 0x2f

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-lez v4, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    :cond_2
    iget-object v3, v3, Lcqj;->a:Lcom/wandoujia/jupiter/JupiterApplication;

    invoke-static {v3, v2, p0, v1}, Lcom/wandoujia/p4/jni/NativeDiffDecoder;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wandoujia/appmanager/AppManager;->d(Ljava/lang/String;)Lcom/wandoujia/appmanager/LocalAppInfo;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getUpgradeInfo()Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getUpgradeInfo()Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->hasPatch()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 157
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getUpgradeInfo()Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getFullSize()J

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getUpgradeInfo()Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getPatchSize()J

    :cond_3
    move-object v0, v1

    .line 159
    goto :goto_0

    .line 150
    :catch_0
    move-exception v1

    invoke-static {p0}, Lcom/wandoujia/base/utils/FileUtil;->deletePath(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static m(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .parameter

    .prologue
    .line 54
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld;->au(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 56
    invoke-virtual {v1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ld;->au(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public static m(Landroid/view/ViewGroup;Lhas;)Lerf;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 307
    sget-object v0, Lham;->f:Lham;

    const-string v1, "presenter"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 310
    new-instance v0, Lerf;

    invoke-direct {v0, p0, p1}, Lerf;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    new-instance v1, Lhko;

    invoke-direct {v1}, Lhko;-><init>()V

    invoke-virtual {v0, v3, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Lhkx;

    invoke-direct {v1}, Lhkx;-><init>()V

    invoke-virtual {v0, v3, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldnf;

    invoke-direct {v1}, Ldnf;-><init>()V

    invoke-virtual {v0, v3, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Lhiz;

    sget-object v2, Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;->DARK:Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;

    invoke-direct {v1, v2}, Lhiz;-><init>(Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;)V

    invoke-virtual {v0, v3, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Lhif;

    invoke-direct {v1}, Lhif;-><init>()V

    invoke-virtual {v0, v3, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    sget v1, Lcom/wandoujia/ripple_framework/R$id;->root:I

    new-instance v2, Lhid;

    invoke-direct {v2}, Lhid;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    return-object v0
.end method

.method public static m(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 58
    if-nez p0, :cond_1

    .line 59
    const/4 v0, 0x0

    .line 73
    :cond_0
    :goto_0
    return-object v0

    .line 61
    :cond_1
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 63
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcof;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-le v1, v2, :cond_2

    .line 67
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xb

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 69
    :cond_2
    invoke-static {v0}, Ld;->v(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    const-string v0, ""

    goto :goto_0
.end method

.method public static m(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 60
    sget-object v0, Ld;->k:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 61
    return-void
.end method

.method public static m()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 334
    invoke-static {}, Lchv;->s()Ljava/lang/String;

    move-result-object v1

    .line 335
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 343
    :cond_0
    :goto_0
    return v0

    .line 338
    :cond_1
    sget-object v2, Lcom/wandoujia/account/dto/RegisterSource;->QQ:Lcom/wandoujia/account/dto/RegisterSource;

    invoke-virtual {v2}, Lcom/wandoujia/account/dto/RegisterSource;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/wandoujia/account/dto/RegisterSource;->RENREN:Lcom/wandoujia/account/dto/RegisterSource;

    invoke-virtual {v2}, Lcom/wandoujia/account/dto/RegisterSource;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/wandoujia/account/dto/RegisterSource;->SINA:Lcom/wandoujia/account/dto/RegisterSource;

    invoke-virtual {v2}, Lcom/wandoujia/account/dto/RegisterSource;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 343
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static m(Landroid/os/Parcel;I)[B
    .locals 3

    invoke-static {p0, p1}, Ld;->a(Landroid/os/Parcel;I)I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0
.end method

.method public static n(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter

    .prologue
    .line 65
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld;->au(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public static n(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 78
    sget-object v1, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    .line 79
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v2

    .line 80
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 81
    iget-object v5, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 82
    iget-object v0, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 86
    :goto_1
    return-object v0

    .line 80
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static synthetic n()V
    .locals 5

    .prologue
    .line 34
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    new-instance v3, Lcom/wandoujia/clean/reporter/PeriodReporter$PackageBean;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/wandoujia/clean/reporter/PeriodReporter$PackageBean;-><init>(Landroid/content/pm/PackageInfo;Lcsk;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v3, 0xa

    if-lt v0, v3, :cond_0

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/NetworkUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static n(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 153
    if-nez p0, :cond_0

    .line 154
    const/4 v0, 0x0

    .line 157
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    invoke-static {p1, v0}, Ld;->a(Ljava/lang/String;Ljava/io/UnsupportedEncodingException;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public static n(Landroid/os/Parcel;I)[Ljava/math/BigDecimal;
    .locals 9

    invoke-static {p0, p1}, Ld;->a(Landroid/os/Parcel;I)I

    move-result v2

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    new-array v0, v4, [Ljava/math/BigDecimal;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_1

    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    new-instance v7, Ljava/math/BigDecimal;

    new-instance v8, Ljava/math/BigInteger;

    invoke-direct {v8, v5}, Ljava/math/BigInteger;-><init>([B)V

    invoke-direct {v7, v8, v6}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    aput-object v7, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int v1, v3, v2

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0
.end method

.method public static o()Leqx;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Leqx",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 34
    new-instance v0, Ldrd;

    invoke-direct {v0, v2}, Ldrd;-><init>(B)V

    new-instance v1, Ldrg;

    invoke-direct {v1, v2}, Ldrg;-><init>(B)V

    invoke-static {v0, v1}, Lhjv;->a(Leqx;Leqx;)Lhjv;

    move-result-object v0

    return-object v0
.end method

.method public static o(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 314
    if-nez p0, :cond_0

    move v0, v1

    .line 324
    :goto_0
    return v0

    .line 317
    :cond_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 319
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 320
    goto :goto_0

    .line 321
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-eq v0, v2, :cond_2

    move v0, v2

    .line 322
    goto :goto_0

    :cond_2
    move v0, v1

    .line 324
    goto :goto_0
.end method

.method public static o(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 33
    const-string v2, "POST"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "PUT"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "PATCH"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    const-string v2, "DELETE"

    .line 34
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0

    :cond_3
    move v2, v0

    .line 33
    goto :goto_0
.end method

.method public static o(Landroid/os/Parcel;I)[Ljava/lang/String;
    .locals 3

    invoke-static {p0, p1}, Ld;->a(Landroid/os/Parcel;I)I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0
.end method

.method public static p(Landroid/os/Parcel;I)Landroid/os/Parcel;
    .locals 3

    invoke-static {p0, p1}, Ld;->a(Landroid/os/Parcel;I)I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0
.end method

.method public static p()Leqx;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Leqx",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Ldre;

    const v1, 0x7fffffff

    invoke-direct {v0, v1}, Ldre;-><init>(I)V

    return-object v0
.end method

.method public static p(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 432
    :try_start_0
    invoke-static {p0}, Lcom/wandoujia/base/utils/Phoenix2Util;->resolvePhoenix2PackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 433
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 436
    if-eqz v1, :cond_0

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v2, "3.40.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ltz v1, :cond_0

    .line 437
    const/4 v0, 0x1

    .line 441
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static p(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcgk;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcgk;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/unicom_bn"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    :cond_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x400

    new-array v3, v3, [B

    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_2
    :goto_1
    return v0

    :cond_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    const-string v4, "blackname"

    invoke-static {v3, v4}, Lcgc;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "##"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    move v1, v0

    :goto_2
    array-length v2, v3

    if-ge v1, v2, :cond_2

    aget-object v2, v3, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static q()Lcom/wandoujia/ripple_framework/model/Model;
    .locals 6

    .prologue
    const v5, 0x7f0e03ab

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    new-instance v1, Lcom/wandoujia/api/proto/ApkDetail$Builder;

    invoke-direct {v1}, Lcom/wandoujia/api/proto/ApkDetail$Builder;-><init>()V

    new-instance v2, Lcom/wandoujia/api/proto/DownloadUrl$Builder;

    invoke-direct {v2}, Lcom/wandoujia/api/proto/DownloadUrl$Builder;-><init>()V

    invoke-static {}, Leha;->a()Leha;

    invoke-static {}, Leha;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wandoujia/api/proto/DownloadUrl$Builder;->url(Ljava/lang/String;)Lcom/wandoujia/api/proto/DownloadUrl$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/api/proto/DownloadUrl$Builder;->build()Lcom/wandoujia/api/proto/DownloadUrl;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/api/proto/ApkDetail$Builder;->download_url(Lcom/wandoujia/api/proto/DownloadUrl;)Lcom/wandoujia/api/proto/ApkDetail$Builder;

    move-result-object v1

    invoke-static {}, Leha;->a()Leha;

    invoke-static {}, Leha;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/api/proto/ApkDetail$Builder;->version_code(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/ApkDetail$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/api/proto/ApkDetail$Builder;->bytes_(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/ApkDetail$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/api/proto/ApkDetail$Builder;->build()Lcom/wandoujia/api/proto/ApkDetail;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v1, Lcom/wandoujia/ripple_framework/model/Model;

    new-instance v2, Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-direct {v2}, Lcom/wandoujia/api/proto/Entity$Builder;-><init>()V

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e03ac

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wandoujia/api/proto/Entity$Builder;->title(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wandoujia/api/proto/Entity$Builder;->tag_line(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wandoujia/api/proto/Entity$Builder;->sub_title(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v2

    invoke-static {}, Leha;->a()Leha;

    invoke-static {}, Leha;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wandoujia/api/proto/Entity$Builder;->icon(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v2

    sget-object v3, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->SINGLE_SMALL:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v2, v3}, Lcom/wandoujia/api/proto/Entity$Builder;->template_type(Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v2

    new-instance v3, Lcom/wandoujia/api/proto/Detail$Builder;

    invoke-direct {v3}, Lcom/wandoujia/api/proto/Detail$Builder;-><init>()V

    new-instance v4, Lcom/wandoujia/api/proto/AppDetail$Builder;

    invoke-direct {v4}, Lcom/wandoujia/api/proto/AppDetail$Builder;-><init>()V

    invoke-virtual {v4, v0}, Lcom/wandoujia/api/proto/AppDetail$Builder;->apk(Ljava/util/List;)Lcom/wandoujia/api/proto/AppDetail$Builder;

    move-result-object v0

    const-string v4, "com.wandoujia.game_launcher"

    invoke-virtual {v0, v4}, Lcom/wandoujia/api/proto/AppDetail$Builder;->package_name(Ljava/lang/String;)Lcom/wandoujia/api/proto/AppDetail$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/AppDetail$Builder;->build()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/wandoujia/api/proto/Detail$Builder;->app_detail(Lcom/wandoujia/api/proto/AppDetail;)Lcom/wandoujia/api/proto/Detail$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Detail$Builder;->build()Lcom/wandoujia/api/proto/Detail;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/wandoujia/api/proto/Entity$Builder;->detail(Lcom/wandoujia/api/proto/Detail;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    .line 43
    return-object v1
.end method

.method public static q(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 23
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget-object v0, Ld;->h:Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 24
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 25
    invoke-static {}, Leny;->b()Leny;

    move-result-object v1

    sget-object v2, Ld;->h:Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;

    invoke-virtual {v1, v0, v2}, Leny;->a(Landroid/view/View;Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;)Leny;

    .line 27
    :cond_0
    invoke-static {}, Leny;->b()Leny;

    move-result-object v0

    invoke-virtual {v0, p0}, Leny;->a(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public static q(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcgk;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcgk;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/unicom_bn"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    :cond_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v4, 0x400

    new-array v4, v4, [B

    :goto_0
    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    const-string v5, "blackname"

    invoke-static {v4, v5}, Lcgc;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "##"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    :goto_1
    array-length v1, v4

    if-ge v0, v1, :cond_2

    aget-object v1, v4, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    aget-object v1, v4, v0

    invoke-static {v1}, Ld;->r(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static q(Landroid/os/Parcel;I)[Landroid/os/Parcel;
    .locals 9

    const/4 v0, 0x0

    invoke-static {p0, p1}, Ld;->a(Landroid/os/Parcel;I)I

    move-result v3

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-nez v3, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    new-array v1, v5, [Landroid/os/Parcel;

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_2

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8

    invoke-virtual {v8, p0, v7, v6}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    aput-object v8, v1, v2

    add-int/2addr v6, v7

    invoke-virtual {p0, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    aput-object v0, v1, v2

    goto :goto_2

    :cond_2
    add-int v0, v4, v3

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static r(Landroid/content/Context;)I
    .locals 4
    .parameter

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 89
    :try_start_0
    const-string v1, "com.android.internal.R$dimen"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 90
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 91
    const-string v3, "status_bar_height"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 95
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static r(Landroid/os/Parcel;I)I
    .locals 1

    const/high16 v0, -0x1

    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    return v0
.end method

.method public static r()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 38
    sget-object v0, Ld;->v:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 39
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "launcher-disk-pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Ld;->v:Landroid/content/SharedPreferences;

    .line 42
    :cond_0
    sget-object v0, Ld;->v:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static r(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-static {p0}, Ld;->p(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcgk;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcgk;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/unicom_bn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "##"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "blackname"

    invoke-static {v1, v2}, Lcgc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v0, "utf-8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static s()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 78
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 79
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/wandoujia/game_launcher/lib/R$string;->date_day:I

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static s(Landroid/os/Parcel;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    sub-int v1, v0, p1

    add-int/lit8 v2, p1, -0x4

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public static s(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 22
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.wandoujia.phoenix2"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    const/4 v0, 0x1

    .line 27
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static s(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 221
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    :cond_0
    :goto_0
    return v0

    .line 224
    :cond_1
    const-string v1, "(\\+?86)?1[0-9]{10}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static t(Ljava/lang/String;)Lcom/wandoujia/account/AccountErrorType;
    .locals 1
    .parameter

    .prologue
    .line 232
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    sget-object v0, Lcom/wandoujia/account/AccountErrorType;->EMAIL_EMPTY:Lcom/wandoujia/account/AccountErrorType;

    .line 240
    :goto_0
    return-object v0

    .line 236
    :cond_0
    const-string v0, "\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 237
    sget-object v0, Lcom/wandoujia/account/AccountErrorType;->EMAIL_INVALID:Lcom/wandoujia/account/AccountErrorType;

    goto :goto_0

    .line 240
    :cond_1
    sget-object v0, Lcom/wandoujia/account/AccountErrorType;->OK:Lcom/wandoujia/account/AccountErrorType;

    goto :goto_0
.end method

.method public static t(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/wandoujia/account/AccountParams;

    const-string v1, "community"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/account/AccountParams;-><init>(Ljava/lang/String;B)V

    .line 54
    sget-object v1, Lcom/wandoujia/account/AccountParams$Page;->LOG_IN:Lcom/wandoujia/account/AccountParams$Page;

    iput-object v1, v0, Lcom/wandoujia/account/AccountParams;->r:Lcom/wandoujia/account/AccountParams$Page;

    .line 55
    iput-boolean v2, v0, Lcom/wandoujia/account/AccountParams;->g:Z

    .line 56
    iput-boolean v2, v0, Lcom/wandoujia/account/AccountParams;->h:Z

    .line 57
    invoke-static {}, Letz;->a()Letz;

    move-result-object v1

    iget-object v1, v1, Letz;->a:Lcmm;

    const-class v2, Lcom/wandoujia/p4/account/activity/PhoenixAccountActivity;

    invoke-static {p0, v1, v0, v2}, Ld;->a(Landroid/content/Context;Lcmm;Lcom/wandoujia/account/AccountParams;Ljava/lang/Class;)V

    .line 59
    return-void
.end method

.method public static t()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 69
    invoke-static {}, Lcom/wandoujia/launcher/LauncherConfig;->c()Lcom/wandoujia/launcher/LauncherConfig$LauncherType;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/launcher/LauncherConfig$LauncherType;->NATIVE_GL:Lcom/wandoujia/launcher/LauncherConfig$LauncherType;

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v1

    const-string v2, "com.wandoujia.game_launcher"

    invoke-virtual {v1, v2}, Lcom/wandoujia/appmanager/AppManager;->f(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v0

    .line 72
    :cond_1
    invoke-static {}, Lcom/wandoujia/launcher/LauncherConfig;->c()Lcom/wandoujia/launcher/LauncherConfig$LauncherType;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/launcher/LauncherConfig$LauncherType;->APK_GL:Lcom/wandoujia/launcher/LauncherConfig$LauncherType;

    if-ne v1, v2, :cond_2

    .line 73
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/wandoujia/base/utils/SystemUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v1

    .line 74
    invoke-static {}, Leha;->a()Leha;

    invoke-static {}, Leha;->e()I

    move-result v2

    if-gt v2, v1, :cond_0

    .line 78
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static u(Ljava/lang/String;)Lcom/wandoujia/account/AccountErrorType;
    .locals 1
    .parameter

    .prologue
    .line 244
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    sget-object v0, Lcom/wandoujia/account/AccountErrorType;->TEL_EMPTY:Lcom/wandoujia/account/AccountErrorType;

    .line 252
    :goto_0
    return-object v0

    .line 248
    :cond_0
    const-string v0, "(\\+?86)?1[0-9]{10}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 249
    sget-object v0, Lcom/wandoujia/account/AccountErrorType;->TEL_INVALID:Lcom/wandoujia/account/AccountErrorType;

    goto :goto_0

    .line 252
    :cond_1
    sget-object v0, Lcom/wandoujia/account/AccountErrorType;->OK:Lcom/wandoujia/account/AccountErrorType;

    goto :goto_0
.end method

.method public static u()Lcom/wandoujia/launcher/launcher/models/LauncherSuggestions;
    .locals 6

    .prologue
    .line 37
    :try_start_0
    new-instance v2, Ledf;

    invoke-direct {v2}, Ledf;-><init>()V

    .line 38
    invoke-virtual {v2}, Ledf;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Ledi;

    const/4 v1, 0x0

    iput v1, v0, Ledi;->a:I

    const/16 v1, 0x32

    iput v1, v0, Ledi;->b:I

    invoke-static {}, Lebl;->a()Lebl;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lebl;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    invoke-virtual {v1}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 38
    :cond_1
    const-string v1, ","

    invoke-static {v1, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ledi;->c:Ljava/lang/String;

    .line 40
    invoke-static {}, Legx;->d()Lcom/wandoujia/rpc/http/client/DataApi;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/wandoujia/rpc/http/client/DataApi;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/launcher/models/LauncherSuggestions;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public static u(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 116
    if-nez v0, :cond_0

    .line 117
    const v0, 0x7f0e0557

    sget v1, Ldxa;->b:I

    int-to-long v2, v1

    invoke-static {p0, v0, v2, v3}, Ldxa;->a(Landroid/content/Context;IJ)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    .line 118
    sget-object v0, Lham;->f:Lham;

    const-string v1, "navigation"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/navigation/NavigationManager;

    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, p0, v4, v4, v1}, Lcom/wandoujia/jupiter/navigation/NavigationManager;->a(Landroid/content/Context;Lcom/wandoujia/ripple_framework/model/Model;Landroid/view/View;Ljava/lang/String;)V

    .line 131
    :goto_0
    return-void

    .line 121
    :cond_0
    const/16 v1, 0xb

    invoke-static {v1}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 123
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wandoujia/p4/settings/FollowUsTipsTransparentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 125
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wandoujia/p4/campaign/CampaignActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    const-string v1, "phoenix.intent.extra.TITLE"

    const v2, 0x7f0e0558

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string v1, "phoenix.intent.extra.URL"

    const-string v2, "http://wandou.im/followwxwap"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static v(Landroid/content/Context;)J
    .locals 4
    .parameter

    .prologue
    .line 40
    const-string v0, "push2"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_push_id"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static v()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Leht;

    invoke-direct {v0}, Leht;-><init>()V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 52
    return-void
.end method

.method public static v(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 281
    invoke-static {p0}, Ld;->u(Ljava/lang/String;)Lcom/wandoujia/account/AccountErrorType;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/account/AccountErrorType;->OK:Lcom/wandoujia/account/AccountErrorType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static w(Landroid/content/Context;)I
    .locals 1
    .parameter

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static w()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 79
    sget-object v1, Lexl;->b:[I

    invoke-virtual {v0}, Lcom/wandoujia/p4/card/models/CardViewModel$TagType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 93
    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    .line 83
    :pswitch_1
    sget-object v1, Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;->GAME:Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;

    invoke-virtual {v1}, Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;->getAppType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/wandoujia/entities/app/IAppLiteInfo;->getAppType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e05f1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 87
    :cond_1
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e05ef

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 90
    :pswitch_2
    invoke-interface {v0}, Lcom/wandoujia/entities/app/IAppLiteInfo;->getTags()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/wandoujia/entities/app/IAppLiteInfo;->getTags()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/wandoujia/entities/app/IAppLiteInfo;->getTags()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/IAppLiteInfo$ITag;

    invoke-interface {v0}, Lcom/wandoujia/entities/app/IAppLiteInfo$ITag;->getTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static w(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 420
    const-string v0, "[0-9]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 421
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static x()Lcom/wandoujia/base/utils/Preferences;
    .locals 3

    .prologue
    .line 37
    sget-object v0, Ld;->y:Lcom/wandoujia/base/utils/Preferences;

    if-nez v0, :cond_1

    .line 38
    const-class v1, Lcom/wandoujia/base/utils/Singleton;

    monitor-enter v1

    .line 39
    :try_start_0
    sget-object v0, Ld;->y:Lcom/wandoujia/base/utils/Preferences;

    if-nez v0, :cond_0

    .line 40
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "pref_app_launcher"

    invoke-static {v0, v2}, Lcom/wandoujia/base/utils/Preferences;->getById(Landroid/content/Context;Ljava/lang/String;)Lcom/wandoujia/base/utils/Preferences;

    move-result-object v0

    sput-object v0, Ld;->y:Lcom/wandoujia/base/utils/Preferences;

    .line 42
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_1
    sget-object v0, Ld;->y:Lcom/wandoujia/base/utils/Preferences;

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static x(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_0

    .line 82
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_0

    .line 85
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 89
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static x(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 520
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/wandoujia/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 524
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 525
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 526
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    .line 532
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    .line 530
    goto :goto_0
.end method

.method public static y()Lcom/wandoujia/p4/app_launcher/model/ALSuggestion;
    .locals 4

    .prologue
    .line 51
    invoke-static {}, Ld;->x()Lcom/wandoujia/base/utils/Preferences;

    move-result-object v0

    const-string v1, "key_suggestion"

    const-class v2, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/wandoujia/base/utils/Preferences;->getObject(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion;

    return-object v0
.end method

.method public static y(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 17
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    :goto_0
    return-object p0

    .line 20
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 21
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 22
    aget-char v2, v1, v0

    const/16 v3, 0x3000

    if-ne v2, v3, :cond_2

    .line 23
    const/16 v2, 0x20

    aput-char v2, v1, v0

    .line 21
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 24
    :cond_2
    aget-char v2, v1, v0

    const v3, 0xff00

    if-le v2, v3, :cond_1

    aget-char v2, v1, v0

    const v3, 0xff5f

    if-ge v2, v3, :cond_1

    .line 25
    aget-char v2, v1, v0

    const v3, 0xfee0

    sub-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v1, v0

    goto :goto_2

    .line 28
    :cond_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static y(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 24
    const-string v0, "update_config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Ld;->k:Landroid/content/SharedPreferences;

    .line 25
    return-void
.end method

.method public static z()Lfaf;
    .locals 4

    .prologue
    .line 156
    invoke-static {}, Ld;->x()Lcom/wandoujia/base/utils/Preferences;

    move-result-object v0

    const-string v1, "key_remind_function"

    const-class v2, Lfaf;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/wandoujia/base/utils/Preferences;->getObject(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfaf;

    return-object v0
.end method

.method public static z(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 22
    .line 23
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 27
    invoke-static {}, Lcom/wandoujia/base/utils/SystemUtil;->getDeviceExternalCacheDir()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_4

    .line 30
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 34
    :cond_1
    if-nez v0, :cond_2

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 36
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "update"

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 39
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 40
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 43
    :cond_3
    return-object v0

    :cond_4
    move-object v0, v1

    .line 27
    goto :goto_0
.end method

.method public static z(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 19
    const-string v0, "Clean"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    return-void
.end method


# virtual methods
.method public final synthetic a(Lwd;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 165
    invoke-virtual {p1}, Lwd;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lwd;->e()Lwd;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lwd;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lwd;->d()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, Lwd;->a(Ljava/lang/Exception;)Lwd;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lwd;->a(Ljava/lang/Object;)Lwd;

    move-result-object v0

    goto :goto_0
.end method
