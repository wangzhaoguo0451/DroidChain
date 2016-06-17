.class public Lcom/wandoujia/p4/pay/utils/CrashHandler;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field public static final APPLICATION_CRASH:Ljava/lang/String; = "paysdk.crash"

.field public static final APPLICATION_LOG_CRASH:Ljava/lang/String; = "paysdk.log.crash"

.field public static final COUNT:Ljava/lang/String; = "count"

.field public static final CREATED_DEVICE_INFO:Ljava/lang/String; = "created_device_info"

.field public static final DETAIL:Ljava/lang/String; = "detail"

.field public static final IS_LAUNCH:Ljava/lang/String; = "is_launch"

.field private static final KEY_CRASH_COUNT:Ljava/lang/String; = "CRASH_COUNT"

.field private static final ROOT_DIR:Ljava/lang/String; = "wandoujia_paysdk"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private final defaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/wandoujia/p4/pay/utils/CrashHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/p4/pay/utils/CrashHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/wandoujia/p4/pay/utils/CrashHandler;->context:Landroid/content/Context;

    .line 40
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/utils/CrashHandler;->defaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 41
    return-void
.end method

.method public static buildCrashInfo(JLjava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
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
    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 118
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    const-string v1, "detail"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_0
    const-string v1, "count"

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    return-object v0
.end method

.method public static getCrashCount(Landroid/content/Context;)I
    .locals 2
    .parameter

    .prologue
    .line 184
    invoke-static {}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getCurrentConfig()Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    :try_start_0
    invoke-static {}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getCurrentConfig()Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v0

    const-string v1, "CRASH_COUNT"

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 190
    :goto_0
    return v0

    .line 187
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    .line 190
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getExternalContentDirectory()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 135
    invoke-static {}, Lcom/wandoujia/p4/pay/utils/CrashHandler;->getRootDirectory()Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 137
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 141
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    .line 146
    goto :goto_0
.end method

.method public static getRootDirectory()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 154
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-object v0

    .line 162
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/wandoujia_paysdk/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 167
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move-object v0, v1

    .line 171
    goto :goto_0

    .line 159
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static reportCrashDetail(Ljava/lang/Throwable;)V
    .locals 1
    .parameter

    .prologue
    .line 68
    const-string v0, "paysdk.crash"

    invoke-static {p0, v0}, Lcom/wandoujia/p4/pay/utils/CrashHandler;->reportCrashDetailInternal(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method private static reportCrashDetailInternal(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 73
    .line 74
    if-eqz p0, :cond_1

    .line 75
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 76
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.wandoujia."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ads Exception Found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const/4 v0, 0x1

    .line 83
    :cond_0
    if-nez v0, :cond_3

    .line 97
    :cond_1
    :goto_1
    return-void

    .line 75
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    :cond_3
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 88
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 89
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    const-string v1, "\n"

    const-string v2, "#"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 91
    const-string v1, "\t"

    const-string v2, "#"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 92
    const-wide/16 v2, 0x1

    invoke-static {v2, v3, v0}, Lcom/wandoujia/p4/pay/utils/CrashHandler;->buildCrashInfo(JLjava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 93
    const-string v1, "created_device_info"

    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    .line 95
    invoke-static {v0}, Lcom/wandoujia/p4/pay/utils/LogEvent;->crash(Ljava/util/HashMap;)V

    goto :goto_1
.end method

.method private saveCrashCount()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/wandoujia/p4/pay/utils/CrashHandler;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/wandoujia/p4/pay/utils/CrashHandler;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/wandoujia/p4/pay/utils/CrashHandler;->getCrashCount(Landroid/content/Context;)I

    move-result v0

    .line 63
    iget-object v1, p0, Lcom/wandoujia/p4/pay/utils/CrashHandler;->context:Landroid/content/Context;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Lcom/wandoujia/p4/pay/utils/CrashHandler;->setCrashCount(Landroid/content/Context;I)V

    .line 65
    :cond_0
    return-void
.end method

.method private saveCrashLog(Ljava/lang/Throwable;)V
    .locals 3
    .parameter

    .prologue
    .line 100
    if-eqz p1, :cond_0

    .line 102
    :try_start_0
    invoke-static {}, Lcom/wandoujia/p4/pay/utils/CrashHandler;->getExternalContentDirectory()Ljava/lang/String;

    move-result-object v0

    .line 103
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

    .line 104
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 105
    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    .line 107
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static setCrashCount(Landroid/content/Context;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 178
    invoke-static {}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getCurrentConfig()Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    invoke-static {}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getCurrentConfig()Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v0

    const-string v1, "CRASH_COUNT"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_0
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 53
    sget-object v0, Lcom/wandoujia/p4/pay/utils/CrashHandler;->TAG:Ljava/lang/String;

    const-string v1, "Exception found: "

    invoke-static {v0, v1, p2}, Lcom/wandoujia/p4/pay/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    invoke-direct {p0}, Lcom/wandoujia/p4/pay/utils/CrashHandler;->saveCrashCount()V

    .line 55
    invoke-direct {p0, p2}, Lcom/wandoujia/p4/pay/utils/CrashHandler;->saveCrashLog(Ljava/lang/Throwable;)V

    .line 56
    invoke-static {p2}, Lcom/wandoujia/p4/pay/utils/CrashHandler;->reportCrashDetail(Ljava/lang/Throwable;)V

    .line 57
    iget-object v0, p0, Lcom/wandoujia/p4/pay/utils/CrashHandler;->defaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 58
    return-void
.end method
