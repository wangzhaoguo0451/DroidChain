.class public final Lfqr;
.super Lagr;
.source "ZeroModeRequestQueue.java"

# interfaces
.implements Lfne;


# instance fields
.field private e:Z


# direct methods
.method private constructor <init>(Lagh;Lagn;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lagr;-><init>(Lagh;Lagn;)V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfqr;->e:Z

    .line 92
    return-void
.end method

.method public static a(Landroid/content/Context;)Lfqr;
    .locals 5
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "volley"

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 54
    const-string v0, "volley/0"

    .line 56
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 64
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v1, v3, :cond_1

    .line 66
    new-instance v0, Lahi;

    invoke-direct {v0}, Lahi;-><init>()V

    .line 76
    :goto_1
    new-instance v1, Laha;

    invoke-direct {v1, v0}, Laha;-><init>(Lahh;)V

    .line 78
    new-instance v0, Lfqr;

    new-instance v3, Lahd;

    invoke-direct {v3, v2}, Lahd;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3, v1}, Lfqr;-><init>(Lagh;Lagn;)V

    .line 80
    invoke-static {}, Lfna;->a()Lfna;

    move-result-object v1

    invoke-virtual {v1}, Lfna;->b()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 82
    invoke-virtual {v0}, Lfqr;->a()V

    .line 85
    :cond_0
    return-object v0

    .line 70
    :cond_1
    new-instance v1, Lahg;

    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/http/HttpClientWrapper;->newInstance(Lorg/apache/http/client/HttpClient;)Lcom/wandoujia/base/http/HttpClientWrapper;

    move-result-object v0

    invoke-direct {v1, v0}, Lahg;-><init>(Lorg/apache/http/client/HttpClient;)V

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lfqr;->e:Z

    if-eqz v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-super {p0}, Lagr;->a()V

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfqr;->e:Z

    goto :goto_0
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 114
    packed-switch p1, :pswitch_data_0

    .line 119
    invoke-virtual {p0}, Lfqr;->a()V

    .line 122
    :goto_0
    return-void

    .line 116
    :pswitch_0
    invoke-virtual {p0}, Lfqr;->b()V

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lfqr;->e:Z

    if-nez v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-super {p0}, Lagr;->b()V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfqr;->e:Z

    goto :goto_0
.end method
