.class public final Lfzg;
.super Lfqc;
.source "MultimediaDatabaseHelper.java"


# direct methods
.method private constructor <init>(Ljava/io/File;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x7

    .line 50
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x8

    new-array v1, v1, [Lfqb;

    const/4 v2, 0x0

    new-instance v3, Lfzp;

    invoke-direct {v3}, Lfzp;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lfzo;

    invoke-direct {v3}, Lfzo;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lfzn;

    invoke-direct {v3}, Lfzn;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lfzk;

    invoke-direct {v3}, Lfzk;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lfzm;

    invoke-direct {v3}, Lfzm;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lfzl;

    invoke-direct {v3}, Lfzl;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lfzj;

    invoke-direct {v3}, Lfzj;-><init>()V

    aput-object v3, v1, v2

    new-instance v2, Lfzi;

    invoke-direct {v2}, Lfzi;-><init>()V

    aput-object v2, v1, v4

    invoke-direct {p0, v0, p1, v4, v1}, Lfqc;-><init>(Landroid/content/Context;Ljava/io/File;I[Lfqb;)V

    .line 54
    return-void
.end method

.method private constructor <init>(Ljava/io/File;Landroid/database/DatabaseErrorHandler;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x7

    const/4 v4, 0x1

    .line 57
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v1

    const/16 v0, 0x8

    new-array v6, v0, [Lfqb;

    const/4 v0, 0x0

    new-instance v2, Lfzp;

    invoke-direct {v2}, Lfzp;-><init>()V

    aput-object v2, v6, v0

    new-instance v0, Lfzo;

    invoke-direct {v0}, Lfzo;-><init>()V

    aput-object v0, v6, v4

    const/4 v0, 0x2

    new-instance v2, Lfzn;

    invoke-direct {v2}, Lfzn;-><init>()V

    aput-object v2, v6, v0

    const/4 v0, 0x3

    new-instance v2, Lfzk;

    invoke-direct {v2}, Lfzk;-><init>()V

    aput-object v2, v6, v0

    const/4 v0, 0x4

    new-instance v2, Lfzm;

    invoke-direct {v2}, Lfzm;-><init>()V

    aput-object v2, v6, v0

    const/4 v0, 0x5

    new-instance v2, Lfzl;

    invoke-direct {v2}, Lfzl;-><init>()V

    aput-object v2, v6, v0

    const/4 v0, 0x6

    new-instance v2, Lfzj;

    invoke-direct {v2}, Lfzj;-><init>()V

    aput-object v2, v6, v0

    new-instance v0, Lfzi;

    invoke-direct {v0}, Lfzi;-><init>()V

    aput-object v0, v6, v3

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lfqc;-><init>(Landroid/content/Context;Ljava/io/File;IZLandroid/database/DatabaseErrorHandler;[Lfqb;)V

    .line 61
    return-void
.end method

.method public static a()Lfzg;
    .locals 3

    .prologue
    .line 31
    new-instance v1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/wandoujia/base/storage/StorageManager;->getInstance()Lcom/wandoujia/base/storage/StorageManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/base/storage/StorageManager;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "wandoujia"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".multimedia.db"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-le v0, v2, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v0, v2, :cond_0

    .line 38
    new-instance v0, Lfzg;

    new-instance v2, Lfzh;

    invoke-direct {v2, v1}, Lfzh;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1, v2}, Lfzg;-><init>(Ljava/io/File;Landroid/database/DatabaseErrorHandler;)V

    .line 45
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lfzg;

    invoke-direct {v0, v1}, Lfzg;-><init>(Ljava/io/File;)V

    goto :goto_0
.end method
