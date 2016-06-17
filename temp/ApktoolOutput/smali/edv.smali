.class public final Ledv;
.super Ljava/lang/Object;
.source "PreferencesUtils.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Legx;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mario"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ledv;->a:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/io/File;

    sget-object v1, Ledv;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 29
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/SharedPreferences;Ljava/lang/String;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 33
    const-class v3, Ledv;

    monitor-enter v3

    const/4 v0, 0x0

    .line 34
    const/4 v2, 0x0

    .line 35
    :try_start_0
    new-instance v4, Ljava/io/File;

    sget-object v1, Ledv;->a:Ljava/lang/String;

    invoke-direct {v4, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 37
    :try_start_1
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v5}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 38
    :try_start_2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 40
    const/4 v0, 0x1

    .line 47
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 49
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    .line 55
    :cond_0
    :goto_0
    monitor-exit v3

    return v0

    :catch_0
    move-exception v1

    move-object v1, v2

    .line 42
    :goto_1
    if-eqz v1, :cond_0

    .line 48
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 49
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 52
    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    .line 44
    :goto_2
    if-eqz v2, :cond_0

    .line 48
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 49
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 52
    :catch_3
    move-exception v1

    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    :goto_3
    if-eqz v2, :cond_1

    .line 48
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 49
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 52
    :cond_1
    :goto_4
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 33
    :catchall_1
    move-exception v0

    monitor-exit v3

    throw v0

    :catch_4
    move-exception v1

    goto :goto_4

    .line 46
    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catch_5
    move-exception v2

    move-object v2, v1

    goto :goto_2

    :catch_6
    move-exception v2

    goto :goto_1

    .line 52
    :catch_7
    move-exception v1

    goto :goto_0
.end method
