.class public final Ladk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Ladk;->a:Z

    .line 30
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;ILacj;)Ljava/lang/String;
    .locals 20
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    const/4 v8, 0x0

    .line 47
    const/4 v9, 0x0

    .line 48
    move-object/from16 v0, p5

    iget-wide v2, v0, Lacj;->d:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Ladk;->b:J

    .line 50
    :try_start_0
    invoke-static/range {p3 .. p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 52
    const-string v2, "content://sms/inbox"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 53
    const/16 v2, 0x8

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "address"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "person"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    .line 54
    const-string v5, "body"

    aput-object v5, v4, v2

    const/4 v2, 0x4

    const-string v5, "date"

    aput-object v5, v4, v2

    const/4 v2, 0x5

    const-string v5, "date_sent"

    aput-object v5, v4, v2

    const/4 v2, 0x6

    const-string v5, "type"

    aput-object v5, v4, v2

    const/4 v2, 0x7

    const-string v5, "protocol"

    aput-object v5, v4, v2

    .line 56
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    .line 57
    const/4 v6, 0x0

    const-string v7, "date desc limit 5"

    .line 56
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 59
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 61
    const-string v2, "address"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 65
    const-string v2, "body"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 67
    const-string v2, "date"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 68
    const-string v2, "date_sent"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 70
    const-string v2, "type"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 72
    const-string v2, "protocol"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 74
    const/4 v2, 0x0

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Ladk;->a:Z

    if-nez v4, :cond_2

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Ladk;->b:J

    move-wide/from16 v18, v0

    sub-long v4, v4, v18

    const-wide/16 v18, 0x0

    cmp-long v4, v4, v18

    if-lez v4, :cond_1

    const/4 v4, 0x0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v17, v0

    const/4 v5, 0x0

    :goto_0
    move/from16 v0, v17

    if-lt v5, v0, :cond_4

    :goto_1
    if-eqz v4, :cond_1

    const/4 v4, 0x1

    if-ne v15, v4, :cond_1

    if-nez v16, :cond_1

    invoke-virtual {v10, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-nez v4, :cond_0

    .line 81
    :cond_2
    :goto_2
    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_3

    .line 82
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 83
    :cond_3
    :goto_3
    return-object v2

    .line 74
    :cond_4
    :try_start_2
    aget-object v18, p2, v5

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_5

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v18

    if-eqz v18, :cond_5

    const/4 v4, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 78
    :catch_0
    move-exception v2

    move-object v3, v9

    .line 79
    :goto_4
    :try_start_3
    invoke-static {}, Lacm;->a()Lacm;

    move-result-object v4

    const-string v5, "can not read sms"

    invoke-virtual {v4, v2, v5}, Lacm;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 81
    if-eqz v3, :cond_7

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_7

    .line 82
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move-object v2, v8

    .line 83
    goto :goto_3

    .line 80
    :catchall_0
    move-exception v2

    move-object v3, v9

    .line 81
    :goto_5
    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_6

    .line 82
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 83
    :cond_6
    throw v2

    .line 80
    :catchall_1
    move-exception v2

    goto :goto_5

    .line 78
    :catch_1
    move-exception v2

    goto :goto_4

    :cond_7
    move-object v2, v8

    goto :goto_3

    :cond_8
    move-object v2, v8

    goto :goto_2
.end method
