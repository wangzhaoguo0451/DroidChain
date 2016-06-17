.class public final Lbym;
.super Ljava/lang/Object;
.source "HttpDate.java"


# static fields
.field private static final a:Ljava/util/TimeZone;

.field private static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xf

    .line 31
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lbym;->a:Ljava/util/TimeZone;

    .line 37
    new-instance v0, Lbyn;

    invoke-direct {v0}, Lbyn;-><init>()V

    sput-object v0, Lbym;->b:Ljava/lang/ThreadLocal;

    .line 49
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "EEE MMM d HH:mm:ss yyyy"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "EEE, dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "EEE, dd-MMM-yyyy HH-mm-ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "EEE, dd MMM yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EEE dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "EEE dd MMM yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "EEE dd-MMM-yyyy HH-mm-ss z"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "EEE dd-MMM-yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "EEE dd MMM yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "EEE,dd-MMM-yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "EEE,dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "EEE, dd-MM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "EEE MMM d yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    sput-object v0, Lbym;->c:[Ljava/lang/String;

    .line 71
    new-array v0, v3, [Ljava/text/DateFormat;

    sput-object v0, Lbym;->d:[Ljava/text/DateFormat;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/util/Date;
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 76
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    .line 109
    :cond_0
    :goto_0
    return-object v0

    .line 80
    :cond_1
    new-instance v3, Ljava/text/ParsePosition;

    invoke-direct {v3, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 81
    sget-object v0, Lbym;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    invoke-virtual {v0, p0, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    .line 82
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 87
    sget-object v4, Lbym;->c:[Ljava/lang/String;

    monitor-enter v4

    .line 88
    :goto_1
    const/16 v0, 0xf

    if-ge v2, v0, :cond_4

    .line 89
    :try_start_0
    sget-object v0, Lbym;->d:[Ljava/text/DateFormat;

    aget-object v0, v0, v2

    .line 90
    if-nez v0, :cond_2

    .line 91
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v5, Lbym;->c:[Ljava/lang/String;

    aget-object v5, v5, v2

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 94
    sget-object v5, Lbym;->a:Ljava/util/TimeZone;

    invoke-virtual {v0, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 95
    sget-object v5, Lbym;->d:[Ljava/text/DateFormat;

    aput-object v0, v5, v2

    .line 97
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 98
    invoke-virtual {v0, p0, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    .line 99
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    if-eqz v5, :cond_3

    .line 105
    monitor-exit v4

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 88
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 108
    :cond_4
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 109
    goto :goto_0
.end method

.method static synthetic a()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lbym;->a:Ljava/util/TimeZone;

    return-object v0
.end method
