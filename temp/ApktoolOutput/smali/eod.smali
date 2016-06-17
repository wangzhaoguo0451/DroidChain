.class public final Leod;
.super Ljava/lang/Object;
.source "LogUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final a:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Leod;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 29
    new-instance v0, Lcom/wandoujia/logv3/toolkit/ANRWatchDog;

    invoke-direct {v0}, Lcom/wandoujia/logv3/toolkit/ANRWatchDog;-><init>()V

    .line 30
    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 1
    .parameter

    .prologue
    .line 73
    sget-object v0, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Type;->LOG_CRASH:Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Type;

    invoke-static {p0, v0}, Leod;->a(Ljava/lang/Throwable;Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Type;)V

    .line 74
    return-void
.end method

.method private static a(Ljava/lang/Throwable;Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Type;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 81
    if-eqz p0, :cond_0

    .line 82
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 83
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 84
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    const-string v1, "\n"

    const-string v2, "#"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 86
    const-string v1, "\t"

    const-string v2, "#"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {}, Leny;->b()Leny;

    move-result-object v1

    new-instance v2, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Builder;

    invoke-direct {v2}, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Builder;->detail(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Builder;->type(Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Type;)Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Builder;

    iget-object v0, v1, Leny;->f:Leno;

    new-instance v1, Lenr;

    iget-object v3, v0, Leno;->c:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    invoke-virtual {v2, v3}, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Builder;->view(Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lenr;-><init>(Leno;Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Builder;B)V

    invoke-virtual {v1}, Lenr;->run()V

    .line 89
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/Throwable;)V
    .locals 1
    .parameter

    .prologue
    .line 77
    sget-object v0, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Type;->ANR:Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Type;

    invoke-static {p0, v0}, Leod;->a(Ljava/lang/Throwable;Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Type;)V

    .line 78
    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 34
    if-eqz p2, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppRootDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "diagnosis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_1

    .line 36
    :cond_0
    :goto_0
    sget-object v0, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Type;->APP_CRASH:Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Type;

    invoke-static {p2, v0}, Leod;->a(Ljava/lang/Throwable;Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Type;)V

    .line 37
    iget-object v0, p0, Leod;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 38
    return-void

    .line 34
    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "last_crash_log.txt"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
