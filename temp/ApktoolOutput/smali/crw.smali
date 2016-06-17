.class public final Lcrw;
.super Ljava/lang/Object;
.source "DbUtils.java"


# static fields
.field private static final a:Lcrx;

.field private static final b:Lcrv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcrv",
            "<",
            "Lcom/wandoujia/clean/db/model/GarbageBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    new-instance v0, Lcrx;

    invoke-direct {v0}, Lcrx;-><init>()V

    sput-object v0, Lcrw;->a:Lcrx;

    .line 25
    new-instance v0, Lcrv;

    invoke-static {}, Lcsb;->a()Lcsb;

    move-result-object v1

    sget-object v2, Lcrw;->a:Lcrx;

    invoke-direct {v0, v1, v2}, Lcrv;-><init>(Lcsb;Lcru;)V

    sput-object v0, Lcrw;->b:Lcrv;

    .line 28
    new-instance v0, Lcrv;

    invoke-static {}, Lcsb;->a()Lcsb;

    move-result-object v1

    new-instance v2, Lcry;

    invoke-direct {v2}, Lcry;-><init>()V

    invoke-direct {v0, v1, v2}, Lcrv;-><init>(Lcsb;Lcru;)V

    .line 31
    new-instance v0, Lcrv;

    invoke-static {}, Lcsb;->a()Lcsb;

    move-result-object v1

    new-instance v2, Lcrz;

    invoke-direct {v2}, Lcrz;-><init>()V

    invoke-direct {v0, v1, v2}, Lcrv;-><init>(Lcsb;Lcru;)V

    .line 34
    new-instance v0, Lcrv;

    invoke-static {}, Lcsb;->a()Lcsb;

    move-result-object v1

    new-instance v2, Lcsa;

    invoke-direct {v2}, Lcsa;-><init>()V

    invoke-direct {v0, v1, v2}, Lcrv;-><init>(Lcsb;Lcru;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)J
    .locals 12
    .parameter

    .prologue
    const-wide/16 v10, 0x0

    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 258
    invoke-static {p0}, Ld;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-wide v0, v10

    .line 290
    :cond_0
    :goto_0
    return-wide v0

    .line 262
    :cond_1
    new-array v2, v4, [Ljava/lang/String;

    const-string v1, "latestModification"

    aput-object v1, v2, v5

    .line 263
    const-string v3, "pkgNameMd5=? AND (pathType=1 OR pathType=4 OR pathType=2)"

    .line 271
    new-array v4, v4, [Ljava/lang/String;

    aput-object v0, v4, v5

    .line 272
    const-string v7, "latestModification DESC"

    .line 274
    const-string v8, "1"

    .line 277
    :try_start_0
    invoke-static {}, Lcsb;->a()Lcsb;

    move-result-object v0

    invoke-virtual {v0}, Lcsb;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 278
    const-string v1, "garbage_bean"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 280
    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    .line 286
    if-eqz v2, :cond_0

    .line 287
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 286
    :cond_2
    if-eqz v2, :cond_3

    .line 287
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    move-wide v0, v10

    .line 290
    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    move-object v0, v9

    :goto_2
    if-eqz v0, :cond_3

    .line 287
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 286
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v9, :cond_4

    .line 287
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 286
    :catchall_1
    move-exception v0

    move-object v9, v2

    goto :goto_3

    .line 284
    :catch_1
    move-exception v0

    move-object v0, v2

    goto :goto_2
.end method

.method public static a(Ljava/util/List;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/clean/db/model/GarbageBean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 251
    sget-object v0, Lcrw;->b:Lcrv;

    invoke-virtual {v0, p0}, Lcrv;->a(Ljava/util/List;)Z

    move-result v0

    return v0
.end method
