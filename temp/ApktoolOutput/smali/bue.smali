.class public Lbue;
.super Ljava/lang/Object;
.source "WbAppInstallActivator.java"


# static fields
.field public static final a:Ljava/lang/String;

.field private static final f:Ljava/lang/String;

.field private static g:Lbue;


# instance fields
.field public b:Landroid/content/Context;

.field public c:Ljava/util/concurrent/CountDownLatch;

.field public d:Ljava/lang/String;

.field public e:Z

.field private h:Lbuh;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const-class v0, Lbue;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbue;->f:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/org_share_data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbue;->a:Ljava/lang/String;

    .line 45
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbue;->e:Z

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lbue;->b:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lbue;->d:Ljava/lang/String;

    .line 58
    return-void
.end method

.method static synthetic a(Lbue;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lbue;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Lbue;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 61
    const-class v1, Lbue;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lbue;->g:Lbue;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lbue;

    invoke-direct {v0, p0, p1}, Lbue;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lbue;->g:Lbue;

    .line 64
    :cond_0
    sget-object v0, Lbue;->g:Lbue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lbue;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 251
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1, p2}, Ld;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lbue;Lbuh;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lbue;->h:Lbuh;

    return-void
.end method

.method private static a(Landroid/content/pm/PackageInfo;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 205
    if-nez p0, :cond_1

    .line 224
    :cond_0
    :goto_0
    return v0

    .line 208
    :cond_1
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v1, :cond_2

    .line 210
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    .line 211
    const/4 v0, 0x1

    goto :goto_0

    .line 217
    :cond_2
    const-string v1, ""

    move v3, v0

    move-object v0, v1

    move v1, v3

    .line 218
    :goto_1
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    if-lt v1, v2, :cond_3

    .line 224
    const-string v1, "18da2bf10352443a00a5e046d9fca6bd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 219
    :cond_3
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    .line 220
    if-eqz v2, :cond_4

    .line 221
    invoke-static {v2}, Lbwe;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 218
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method static synthetic b(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_0

    array-length v8, v7

    move v6, v5

    move-object v1, v0

    move v2, v5

    :goto_1
    if-lt v6, v8, :cond_2

    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    aget-object v0, v7, v6

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v9, ".apk"

    invoke-virtual {v3, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x40

    invoke-virtual {v3, v9, v10}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    if-nez v9, :cond_3

    move v3, v5

    :goto_2
    if-eqz v3, :cond_5

    invoke-static {v9}, Lbue;->a(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v4

    :goto_3
    if-eqz v3, :cond_6

    iget v3, v9, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v3, v2, :cond_6

    iget v1, v9, Landroid/content/pm/PackageInfo;->versionCode:I

    :goto_4
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v2, v1

    move-object v1, v0

    goto :goto_1

    :cond_3
    iget-object v3, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v10, "com.sina.weibo"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "com.sina.weibog3"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v5

    goto :goto_2

    :cond_4
    move v3, v4

    goto :goto_2

    :cond_5
    move v3, v5

    goto :goto_3

    :cond_6
    move-object v0, v1

    move v1, v2

    goto :goto_4
.end method

.method static synthetic b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 264
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sina/weibo/sdk/net/DownloadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "notification_content"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "download_url"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method static synthetic b(Lbue;)V
    .locals 1
    .parameter

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbue;->e:Z

    return-void
.end method

.method static synthetic c(Lbue;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lbue;->c:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic d(Lbue;)Lbuh;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lbue;->h:Lbuh;

    return-object v0
.end method
